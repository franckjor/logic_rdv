import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart' as foundation;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:intl/intl.dart';
import 'package:logic_rdv_v0/src/common.dart';
import 'package:logic_rdv_v0/src/core/bloc/bloc_of_shapreference/shared_preference.dart';
import 'package:logic_rdv_v0/src/core/bloc/navigation/navigation_bloc.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/appointment/bloc/appointment.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/appointment/bloc/create_appointment_bloc/create_appointement.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/appointment/repository/appointment_repository.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/check_state/bloc/check_state.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/check_state/function/check_state_function.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/check_state/repositories/check_state_repositorie.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/generate_and_check_token/bloc/generate_and_check_token.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/subcribe_notification/bloc/subcribe.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/subcribe_notification/repository/subscribe_repository.dart';
import 'package:logic_rdv_v0/src/core/constants/constants.dart';
import 'package:logic_rdv_v0/src/core/constants/type_rdv_state.dart';
import 'package:logic_rdv_v0/src/core/models/appointment_model/selected_patient_response_for_rdv.dart';
import 'package:logic_rdv_v0/src/core/paiement_service/payement_service.dart';
import 'package:logic_rdv_v0/src/core/preference_key.dart';
import 'package:logic_rdv_v0/src/ui/alert_widgets/custom_snackbar.dart';
import 'package:logic_rdv_v0/src/ui/alert_widgets/progress_dialog.dart';
import 'package:logic_rdv_v0/src/ui/dialog_alert/custom_alert.dart';
import 'package:logic_rdv_v0/src/ui/screens/rdv_is_validate/rdv_is_validate.dart';
import 'package:logic_rdv_v0/src/ui/screens/rdv_select_day_and_time/rdv_select_day_and_time_screen.dart';
import 'package:logic_rdv_v0/src/ui/screens/validate_rdv/when_patient_have_rdv.dart';
import 'package:logic_rdv_v0/src/ui/shared/adaptative_appbar.dart';
import 'package:logic_rdv_v0/src/ui/shared/my_drawer.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

bool get isAndroid =>
    foundation.defaultTargetPlatform == TargetPlatform.android;

bool get isWeb => foundation.kIsWeb;

class ValidateRdvPageArguments implements PagesArgumentType {
  final SelectedPatientResponseForRdv selectedPatientResponseForRdv;
  final String birthdate;
  final String socialNumber;
  final String session;

  ValidateRdvPageArguments({
    required this.selectedPatientResponseForRdv,
    required this.birthdate,
    required this.session,
    required this.socialNumber,
  });

  @override
  getArguments() {
    return this;
  }
}

class RdvValidate extends StatefulWidget {
  final ValidateRdvPageArguments arguments;

  RdvValidate({required this.arguments});

  @override
  _RdvValidateState createState() => _RdvValidateState();
}

class _RdvValidateState extends State<RdvValidate> {
  final format = DateFormat("dd/MM/yyyy");

  bool _thisPatientHaveAppointment = false;
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  TextEditingController _birthDateController = TextEditingController();
  TextEditingController _socialNumberController = TextEditingController();
  TextEditingController _rdvMotifController = TextEditingController();
  late String _data;
  late String _typState;

  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';
  String cvvCode = '';
  bool isCvvFocused = false;

  late String _error;

  _dialogToSayThatThisPatientHaveOneRdv() {
    if (widget.arguments.selectedPatientResponseForRdv.data!.data!
            .apptsinprogress!.message !=
        "") {
      setState(() {
        _thisPatientHaveAppointment = true;
      });
    }
  }

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void initState() {
    widget.arguments.selectedPatientResponseForRdv.data!.data!.apptinput!
        .forEach((p0) {
      if (p0.name == "client_birthday") {
        _birthDateController.text = p0.value ?? widget.arguments.birthdate;
      } else if (p0.name == "client_nir") {
        _socialNumberController.text =
            p0.value ?? widget.arguments.socialNumber;
      }
    });

    BlocProvider.of<SharedPreferenceBloc>(context)
      ..add(GetSharedPreferenceObject(objectKey: PreferenceKey.objectKey));
    _dialogToSayThatThisPatientHaveOneRdv();
    super.initState();
    StripeService.init();
  }

  // void setError(dynamic error) {
  //   _scaffoldKey.currentState
  //       .showSnackBar(SnackBar(content: Text(error.toString())));
  //   setState(() {
  //     _error = error.toString();
  //   });
  // }

  List<String> _dateExpired = [];

  void onCreditCardModelChange(CreditCardModel creditCardModel) {
    setState(() {
      cardNumber = creditCardModel.cardNumber ?? "";
      expiryDate = creditCardModel.expiryDate ?? "";
      cvvCode = creditCardModel.cvvCode ?? "";
      isCvvFocused = creditCardModel.isCvvFocused;
      _dateExpired = expiryDate.split("/");
    });
  }

  late String _email;
  late String _fullName;
  late String _tokenUser;
  int _sendRequest = 0;

  @override
  Widget build(BuildContext context) {
    ProgressDialog _ackRdvProgressDialog =
        ProgressDialog(context, ProgressDialogType.Normal);
    return Scaffold(
      key: _scaffoldKey,
      endDrawer: MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) {
            return SharedPreferenceBloc();
          }),
          BlocProvider<SubscribeBloc>(create: (context) {
            return SubscribeBloc(repository: SubscribeRepository());
          }),
        ],
        child: MyDrawer(
          tokenUser: _tokenUser,
          page: '0',
          email: _email,
          fullNme: _fullName,
          notification: false,
        ),
      ),
      appBar: AdaptativeAppBar(
        leading:
            DefaultBackButton(onPressed: () => Navigator.pop(context, true)),
        title: "Valider le rendez-vous",
        actions: [
          IconButton(
            icon: isAndroid || isWeb
                ? Icon(
                    MdiIcons.accountCircle,
                    color: Colors.white,
                  )
                : const Icon(
                    CupertinoIcons.person_alt_circle_fill,
                    color: Colors.white,
                  ),
            splashRadius: 20,
            onPressed: () => _scaffoldKey.currentState!.openEndDrawer(),
          )
        ],
      ),
      body: !_thisPatientHaveAppointment
          ? MultiBlocProvider(
              providers: [
                  BlocProvider<AppointmentBloc>(
                    create: (context) {
                      return AppointmentBloc(
                          repository: AppointmentRepository());
                    },
                  ),
                  BlocProvider<CheckStateBloc>(create: (context) {
                    return CheckStateBloc(repository: CheckStateRepository());
                  })
                ],
              child: MultiBlocListener(
                listeners: [
                  BlocListener<AppointmentBloc, AppointmentState>(
                      listener: (context, state) {
                    if (state is CancelAppointmentLoadingSuccess) {
                      _ackRdvProgressDialog.hide();
                      customAlert(
                          context: context,
                          content: Text(
                            "Votre Carte est invalide Ou votre paiement a échoué.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                          alertType: AlertType.info,
                          buttonLabel: "Ok",
                          action: () {
                            Navigator.pop(context);
                          },
                          title: '',
                          willPop: null);
                    } else if (state is AppointmentFailure) {
                      if (state.error == messageErrorTokenInvalid ||
                          state.error == messageErrorTokenExpired) {
                        customAlert(
                          willPop: true,
                          alertType: AlertType.info,
                          context: context,
                          action: () {
                            Navigator.pushNamedAndRemoveUntil(context,
                                RouteGenerator.loginScreen, (route) => false);
                          },
                          content: Container(
                            child: Text(
                              "Votre session a expiré. Veuillez vous reconnecter.",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                          title: '',
                          buttonLabel: '',
                        );
                      } else if (state.error == invalidTokenUser) {
                        customAlert(
                          willPop: true,
                          alertType: AlertType.info,
                          context: context,
                          action: () {
                            Navigator.pushNamedAndRemoveUntil(context,
                                RouteGenerator.loginScreen, (route) => false);
                          },
                          content: Container(
                            child: Text(
                              "Votre compte a été désactivé. Vous allez être déconnecté.",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                          title: '',
                          buttonLabel: '',
                        );
                      } else {
                        flushBarError(state.error, context);
                      }
                    }
                  }),
                  BlocListener<CheckStateBloc, CheckStateSate>(
                      listener: (context, state) {
                    if (state is CheckStateLoadingSuccess) {
                      setState(() {
                        _typState = state.response.type;
                        if (state.response.type ==
                            TypeRdvState.apptstripeandautovalide) {
                          StripeService.payNowHandler(
                              newTokenappointment: state.response.appointment,
                              stripeClientSecret:
                                  state.response.stripeClientSecret,
                              context: context,
                              session: state.response.session,
                              onclickAction: state.response.onclickAction,
                              onclickData: state.response.onclickData,
                              tokenappointment: widget
                                  .arguments
                                  .selectedPatientResponseForRdv
                                  .params!
                                  .tokenappointment!,
                              tokenuser: widget
                                  .arguments
                                  .selectedPatientResponseForRdv
                                  .params!
                                  .tokenuser!,
                              cardNumber: cardNumber,
                              ackRdvProgressDialog: _ackRdvProgressDialog,
                              expMonth: int.parse(_dateExpired[0]),
                              expYear: int.parse(_dateExpired[1]));
                        } else if (_typState == TypeRdvState.apptvalided) {
                          _ackRdvProgressDialog.hide();

                          Navigator.pushNamedAndRemoveUntil(
                              context,
                              RouteGenerator.rdvIsValidate,
                              ModalRoute.withName(RouteGenerator.homeScreen),
                              arguments: RdvIsValidatePageArguments(
                                  messageSuccess: state.response.message));
                        } else {
                          _ackRdvProgressDialog.hide();
                          customAlert(
                              context: context,
                              content: Text(
                                state.response.message,
                                textAlign: TextAlign.center,
                              ),
                              action: () {
                                Navigator.pushReplacementNamed(
                                    context, RouteGenerator.rdvSelectDayAndTimeScreen,
                                    arguments: GetRdvTimeAndDayPageArguments(
                                        session: widget
                                            .arguments
                                            .selectedPatientResponseForRdv
                                            .data!
                                            .session!,
                                        data: _data,
                                        rdvType: widget
                                            .arguments
                                            .selectedPatientResponseForRdv
                                            .data!
                                            .data!
                                            .appttovalid!
                                            .description!,
                                        tokenAppointment: widget
                                            .arguments
                                            .selectedPatientResponseForRdv
                                            .params!
                                            .tokenappointment!,
                                        tokenUser: widget
                                            .arguments
                                            .selectedPatientResponseForRdv
                                            .params!
                                            .tokenuser!,
                                        action: widget
                                            .arguments
                                            .selectedPatientResponseForRdv
                                            .data!
                                            .data!
                                            .apptbuttonvalidation!
                                            .onclickAction!,
                                        idDoctor: '',
                                        doctorName: '',
                                        tel: ''));
                              },
                              alertType: null,
                              title: '',
                              buttonLabel: '',
                              willPop: null);
                        }
                      });
                    } else if (state is CheckStateFailure) {
                      _ackRdvProgressDialog.hide();
                      if (state.error == messageErrorTokenInvalid ||
                          state.error == messageErrorTokenExpired) {
                        customAlert(
                          willPop: true,
                          alertType: AlertType.info,
                          context: context,
                          action: () {
                            Navigator.pushNamedAndRemoveUntil(context,
                                RouteGenerator.loginScreen, (route) => false);
                          },
                          content: Container(
                            child: Text(
                              "Votre session a expiré. Veuillez vous reconnecter.",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                          title: '',
                          buttonLabel: '',
                        );
                      } else if (state.error == invalidTokenUser) {
                        customAlert(
                          willPop: true,
                          alertType: AlertType.info,
                          context: context,
                          action: () {
                            Navigator.pushNamedAndRemoveUntil(context,
                                RouteGenerator.loginScreen, (route) => false);
                          },
                          content: Container(
                            child: Text(
                              "Votre compte a été désactivé. Vous allez être déconnecté.",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                          title: '',
                          buttonLabel: '',
                        );
                      } else {
                        if (state.error
                            .contains("subtype of type 'int' of 'index'")) {
                          Navigator.pushNamedAndRemoveUntil(
                              context,
                              RouteGenerator.rdvIsValidate,
                              ModalRoute.withName(RouteGenerator.homeScreen),
                              arguments: RdvIsValidatePageArguments(
                                  messageSuccess: "Appt Set OK"));
                        } else {
                          customAlert(
                            alertType: AlertType.info,
                            context: context,
                            content: Container(
                              child: Text(
                                state.error,
                                textAlign: TextAlign.center,
                              ),
                            ),
                            title: '',
                            buttonLabel: '',
                            action: () {},
                            willPop: null,
                          );
                        }
                      }
                    }
                  }),
                  BlocListener<CreateAppointmentBloc, CreateAppointmentState>(
                      listener: (context, state) {
                    if (state is ValidateAppointmentLoadingSuccess) {
                      _ackRdvProgressDialog.hide();

                      Navigator.pushNamedAndRemoveUntil(
                          context,
                          RouteGenerator.rdvIsValidate,
                          ModalRoute.withName(RouteGenerator.homeScreen),
                          arguments: RdvIsValidatePageArguments(
                              messageSuccess:
                                  state.response.data.headermessage!));
                    } else if (state is ConfirmAppointmentLoadingSuccess) {
                      _ackRdvProgressDialog.hide();

                      Navigator.pushNamedAndRemoveUntil(
                          context,
                          RouteGenerator.rdvIsValidate,
                          ModalRoute.withName(RouteGenerator.homeScreen),
                          arguments: RdvIsValidatePageArguments(
                              messageSuccess:
                                  state.response.data.headermessage!));
                    } else if (state is CreateAppointmentFailure) {
                      _ackRdvProgressDialog.hide();
                      customAlert(
                        alertType: AlertType.info,
                        context: context,
                        content: Container(
                          child: Text(
                            state.error,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        title: '',
                        buttonLabel: '',
                        action: () {},
                        willPop: null,
                      );
                    }
                  }),
                  BlocListener<SharedPreferenceBloc, SharedPreferenceState>(
                      listener: (context, state) {
                    if (state is SharedPreferenceReadObjectState) {
                      setState(() {
                        _email = state.sharePreferenceObject.email;
                        _fullName = state.sharePreferenceObject.firstName +
                            " " +
                            state.sharePreferenceObject.lastName;
                        _tokenUser = state.sharePreferenceObject.token;
                      });
                    }
                  }),
                  BlocListener<GenerateAndCheckTokenBloc,
                      GenerateAndCheckTokenState>(listener: (context, state) {
                    if (state is GenerateTokenStateLoadingSuccess) {
                      BlocProvider.of<SharedPreferenceBloc>(context)
                        ..add(
                          SetSharedPreferenceTokenAuthorization(
                            tokenAuthorizationKey:
                                PreferenceKey.tokenAuthorizationKey,
                            tokenAuthorization: state
                                .getToken.data.authorization!
                                .replaceAll("X-LOGICRDV-AUTH:", ""),
                          ),
                        );
                    } else if (state
                        is GenerateAndCheckTokenStateLoadingFailure) {
                      flushBarError(state.error, context);
                    }
                  }),
                ],
                child:
                    BlocBuilder<CreateAppointmentBloc, CreateAppointmentState>(
                        builder: (context, state) {
                  return SafeArea(
                    child: SingleChildScrollView(
                      child: Container(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          children: [
                            Container(
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.only(top: 8),
                                        alignment: Alignment.center,
                                        child: Text(
                                          widget
                                              .arguments
                                              .selectedPatientResponseForRdv
                                              .data!
                                              .data!
                                              .messagenbperson!,
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 12),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 16, vertical: 2),
                                        child: Row(
                                          children: [
                                            const Icon(
                                              Icons.schedule,
                                              color: AppColors.colorPrimary,
                                              size: 20,
                                            ),
                                            const SizedBox(width: 8),
                                            Text(
                                              widget
                                                  .arguments
                                                  .selectedPatientResponseForRdv
                                                  .data!
                                                  .data!
                                                  .appttovalid!
                                                  .date!,
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 16, vertical: 2),
                                        child: Row(
                                          children: [
                                            const Icon(
                                              Icons.person,
                                              color: AppColors.colorPrimary,
                                              size: 20,
                                            ),
                                            const SizedBox(width: 8),
                                            Text(widget
                                                .arguments
                                                .selectedPatientResponseForRdv
                                                .data!
                                                .data!
                                                .appttovalid!
                                                .doctor!),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 16, vertical: 2),
                                        child: Row(
                                          children: [
                                            const Icon(
                                              Icons.shopping_bag,
                                              color: AppColors.colorPrimary,
                                              size: 20,
                                            ),
                                            const SizedBox(width: 8),
                                            Text(widget
                                                .arguments
                                                .selectedPatientResponseForRdv
                                                .data!
                                                .data!
                                                .appttovalid!
                                                .description!),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 16, vertical: 2),
                                        child: Row(
                                          children: [
                                            const Icon(
                                              Icons.people,
                                              color: AppColors.colorPrimary,
                                              size: 20,
                                            ),
                                            const SizedBox(width: 8),
                                            Expanded(
                                              child: Text(
                                                widget
                                                    .arguments
                                                    .selectedPatientResponseForRdv
                                                    .data!
                                                    .data!
                                                    .appttovalid!
                                                    .patient!,
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 8),
                            Container(
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      Container(
                                        alignment: Alignment.center,
                                        margin: const EdgeInsets.only(top: 8),
                                        child: const Text(
                                          "Informations à complèter",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 20, vertical: 10),
                                        child: DateTimeField(
                                          controller: _birthDateController,
                                          decoration: InputDecoration(
                                            labelText: 'Date de naissance',
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.greenAccent,
                                                  width: 5.0),
                                            ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.black,
                                                  width: 1.0),
                                            ),
                                          ),
                                          format: format,
                                          onShowPicker:
                                              (context, currentValue) {
                                            return showDatePicker(
                                                context: context,
                                                firstDate: DateTime(1900),
                                                initialDate: currentValue ??
                                                    DateTime.now(),
                                                lastDate: DateTime(2100));
                                          },
                                        ),
                                      ),
                                      Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 20, vertical: 10),
                                        child: TextFormField(
                                          controller: _socialNumberController,
                                          keyboardType: TextInputType.number,
                                          decoration: InputDecoration(
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.blue,
                                                  width: 1.0),
                                            ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.black,
                                                  width: 1.0),
                                            ),
                                            labelText:
                                                "Numéro de sécurité social ",
                                          ),
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 20, vertical: 10),
                                        child: TextFormField(
                                          maxLines: 6,
                                          controller: _rdvMotifController,
                                          textInputAction: TextInputAction.done,
                                          decoration: InputDecoration(
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.blue,
                                                    width: 1.0),
                                              ),
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.black,
                                                    width: 1.0),
                                              ),
                                              labelText: "Motif du Rdv"),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Visibility(
                              visible: widget
                                      .arguments
                                      .selectedPatientResponseForRdv
                                      .data!
                                      .data!
                                      .payment!
                                      .amount !=
                                  null,
                              child: CreditCardForm(
                                cardNumber: '',
                                expiryDate: '',
                                cardHolderName: '',
                                cvvCode: '',
                                formKey: formKey,
                                onCreditCardModelChange:
                                    onCreditCardModelChange,
                                obscureCvv: false,
                                obscureNumber: false,
                                isHolderNameVisible: false,
                                inputConfiguration: const InputConfiguration(
                                  cardNumberDecoration: const InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'Numéro de la carte',
                                    hintText: 'XXXX XXXX XXXX XXXX',
                                  ),
                                  expiryDateDecoration: const InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'Date expiration',
                                    hintText: 'XX/XX',
                                  ),
                                  cvvCodeDecoration: const InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'CVV',
                                    hintText: 'XXX',
                                  ),
                                  cardHolderDecoration: const InputDecoration(
                                    enabled: false,
                                    border: InputBorder.none,
                                    labelStyle:
                                        TextStyle(color: Colors.transparent),
                                    labelText: 'CVV',
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 20),
                            Visibility(
                              visible: widget
                                      .arguments
                                      .selectedPatientResponseForRdv
                                      .data!
                                      .data!
                                      .payment!
                                      .amount !=
                                  null,
                              child: Container(
                                child: Card(
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 10),
                                    child: RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text: widget
                                                    .arguments
                                                    .selectedPatientResponseForRdv
                                                    .data!
                                                    .data!
                                                    .payment!
                                                    .amountlabel ??
                                                '',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16)),
                                        TextSpan(
                                            text: ": ",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16)),
                                        TextSpan(
                                            text: widget
                                                    ?.arguments
                                                    ?.selectedPatientResponseForRdv
                                                    ?.data
                                                    ?.data
                                                    ?.payment
                                                    ?.amount ??
                                                '',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16))
                                      ]),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 8),
                            Container(
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 10),
                                  child: Text(
                                    widget
                                        .arguments
                                        .selectedPatientResponseForRdv
                                        .data!
                                        .data!
                                        .messageglobalinternet!,
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                              ),
                            ),
                            Visibility(
                              visible: widget
                                      .arguments
                                      .selectedPatientResponseForRdv
                                      .data!
                                      .data!
                                      .payment!
                                      .infos !=
                                  null,
                              child: Container(
                                child: Card(
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 20,
                                      vertical: 10,
                                    ),
                                    child: Text(
                                      widget
                                              .arguments
                                              .selectedPatientResponseForRdv
                                              .data!
                                              .data!
                                              .payment!
                                              .infos ??
                                          '',
                                      textAlign: TextAlign.justify,
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 20),
                            widget.arguments.selectedPatientResponseForRdv.data!
                                        .data!.payment!.amount !=
                                    null
                                ? Container(
                                    height: 48,
                                    child: ElevatedButton.icon(
                                      style: ElevatedButton.styleFrom(
                                        primary: AppColors.primaryColor,
                                        elevation: 0,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                      ),
                                      label: Text(
                                        widget
                                            .arguments
                                            .selectedPatientResponseForRdv
                                            .data!
                                            .data!
                                            .apptbuttonvalidation!
                                            .label!,
                                        style: TextStyle(fontSize: 11),
                                      ),
                                      icon: const Icon(Icons.save),
                                      onPressed: () {
                                        if (_birthDateController.text.isEmpty ||
                                            _rdvMotifController.text.isEmpty ||
                                            !formKey.currentState!.validate()) {
                                          customAlert(
                                            context: context,
                                            content: const Text(
                                              'Veillez renseigner les champs obligatoires',
                                              textAlign: TextAlign.center,
                                            ),
                                            alertType: AlertType.info,
                                            buttonLabel: "Ok",
                                            title: '',
                                            action: () {},
                                            willPop: null,
                                          );
                                        } else {
                                          _data =
                                              "client_birthday_${_birthDateController.text}#@client_nir_${_socialNumberController.text == "#NIR#" ? "" : _socialNumberController.text}#@note_${_rdvMotifController.text}#@";

                                          _ackRdvProgressDialog
                                              .setMessage("Chargement ...");
                                          _ackRdvProgressDialog.show();
                                          rdvTypeCheckState(
                                            context: context,
                                            action: widget
                                                .arguments
                                                .selectedPatientResponseForRdv
                                                .data!
                                                .data!
                                                .apptbuttonvalidation!
                                                .onclickAction!,
                                            data: _data,
                                            session: widget
                                                .arguments
                                                .selectedPatientResponseForRdv
                                                .data!
                                                .session!,
                                            tokenAppointment: widget
                                                .arguments
                                                .selectedPatientResponseForRdv
                                                .params!
                                                .tokenappointment!,
                                            tokenUser: widget
                                                .arguments
                                                .selectedPatientResponseForRdv
                                                .params!
                                                .tokenuser!,
                                          );
                                          // validateAppointmentWithTc(
                                          //   session: widget
                                          //       .arguments
                                          //       .selectedPatientResponseForRdv
                                          //       .data
                                          //       .session,
                                          //   tokenUser: widget
                                          //       .arguments
                                          //       .selectedPatientResponseForRdv
                                          //       .params
                                          //       .tokenuser,
                                          //   action: widget
                                          //       .arguments
                                          //       .selectedPatientResponseForRdv
                                          //       .data
                                          //       .data
                                          //       .apptbuttonvalidation
                                          //       .onclickAction,
                                          //   data: _data,
                                          //   tokenAppointment: widget
                                          //       .arguments
                                          //       .selectedPatientResponseForRdv
                                          //       .params
                                          //       .tokenappointment,
                                          //   context: context,
                                          // );
                                        }
                                      },
                                    ),
                                  )
                                : Container(
                                    height: 48,
                                    child: ElevatedButton.icon(
                                      style: ElevatedButton.styleFrom(
                                        primary: AppColors.primaryColor,
                                        elevation: 0,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                      ),
                                      label: Text(
                                        widget
                                            .arguments
                                            .selectedPatientResponseForRdv
                                            .data!
                                            .data!
                                            .apptbuttonvalidation!
                                            .label!,
                                        style: const TextStyle(fontSize: 11),
                                      ),
                                      icon: const Icon(Icons.save),
                                      onPressed: () {
                                        if (_birthDateController.text.isEmpty ||
                                            _rdvMotifController.text.isEmpty) {
                                          customAlert(
                                            context: context,
                                            content: const Text(
                                              'Renseigner les champs date de naissance et motif de rdv',
                                              textAlign: TextAlign.center,
                                            ),
                                            alertType: AlertType.info,
                                            buttonLabel: "Ok",
                                            title: '',
                                            action: () {},
                                            willPop: null,
                                          );
                                        } else {
                                          _ackRdvProgressDialog
                                              .setMessage("Chargement ...");
                                          _ackRdvProgressDialog.show();
                                          _data =
                                              "client_birthday_${_birthDateController.text}#@client_nir_${_socialNumberController.text == "#NIR#" ? "" : _socialNumberController.text}#@note_${_rdvMotifController.text}#@";
                                          rdvTypeCheckState(
                                            context: context,
                                            action: widget
                                                .arguments
                                                .selectedPatientResponseForRdv
                                                .data!
                                                .data!
                                                .apptbuttonvalidation!
                                                .onclickAction!,
                                            data: _data,
                                            session: widget
                                                .arguments
                                                .selectedPatientResponseForRdv
                                                .data!
                                                .session!,
                                            tokenAppointment: widget
                                                .arguments
                                                .selectedPatientResponseForRdv
                                                .params!
                                                .tokenappointment!,
                                            tokenUser: widget
                                                .arguments
                                                .selectedPatientResponseForRdv
                                                .params!
                                                .tokenuser!,
                                          );

                                          // validateAppointment(
                                          //   session: widget
                                          //       .arguments
                                          //       .selectedPatientResponseForRdv
                                          //       .data
                                          //       .session,
                                          //   tokenUser: widget
                                          //       .arguments
                                          //       .selectedPatientResponseForRdv
                                          //       .params
                                          //       .tokenuser,
                                          //   action: widget
                                          //       .arguments
                                          //       .selectedPatientResponseForRdv
                                          //       .data
                                          //       .data
                                          //       .apptbuttonvalidation
                                          //       .onclickAction,
                                          //   data: _data,
                                          //   tokenAppointment: widget
                                          //       .arguments
                                          //       .selectedPatientResponseForRdv
                                          //       .params
                                          //       .tokenappointment,
                                          //   context: context,
                                          // );
                                        }
                                      },
                                    ),
                                  ),
                          ],
                        ),
                      ),
                    ),
                  );
                }),
              ))
          : BlocProvider<AppointmentBloc>(
              create: (context) {
                return AppointmentBloc(repository: AppointmentRepository());
              },
              child: WhenPatientHaveRdv(
                selectedPatientResponseForRdv:
                    widget.arguments.selectedPatientResponseForRdv,
                tokenUser: widget
                    .arguments.selectedPatientResponseForRdv.params!.tokenuser!,
                onPressedContinueApp: () {
                  setState(() {
                    _thisPatientHaveAppointment = !_thisPatientHaveAppointment;
                  });
                },
              ),
            ),
    );
  }

  void alertToRDVSuccess(BuildContext context, String headermessage) {
    Alert(
      context: context,
      title: '',
      content: Text(
        headermessage,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 14,
        ),
      ),
      type: AlertType.success,
      closeFunction: null,
      closeIcon: SizedBox.shrink(),
      style: AlertStyle(
        isOverlayTapDismiss: false,
        titleStyle: TextStyle(
          color: Theme.of(context).primaryColor,
          fontSize: 14,
          fontWeight: FontWeight.normal,
        ),
      ),
      buttons: [
        DialogButton(
          child: Text(
            'Prendre un nouveau rdv',
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),
          ),
          onPressed: () => Navigator.of(context).pushNamedAndRemoveUntil(
              RouteGenerator.homeScreen,
              ModalRoute.withName(RouteGenerator.homeScreen)),
        ),
        DialogButton(
          child: Text(
            'Quitter',
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),
          ),
          onPressed: () => Navigator.of(context).pushNamedAndRemoveUntil(
            RouteGenerator.appointmentScreen,
            ModalRoute.withName(RouteGenerator.homeScreen),
          ),
        )
      ],
    ).show();
  }
}
