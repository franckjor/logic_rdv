import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logic_rdv_v0/src/core/bloc/bloc_of_shapreference/shared_preference.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/appointment/appointment_function/appointment_function.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/appointment/bloc/appointment.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/generate_and_check_token/bloc/generate_and_check_token.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/login/bloc/login.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/login/login_repository/login_repository.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/subcribe_notification/bloc/subcribe.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/subcribe_notification/repository/subscribe_repository.dart';
import 'package:logic_rdv_v0/src/core/constants/constants.dart';
import 'package:logic_rdv_v0/src/core/models/appointment_model/appointment_response.dart';
import 'package:logic_rdv_v0/src/core/preference_key.dart';
import 'package:logic_rdv_v0/src/ui/alert_widgets/custom_snackbar.dart';
import 'package:logic_rdv_v0/src/ui/alert_widgets/login_dialog.dart';
import 'package:logic_rdv_v0/src/ui/dialog_alert/custom_alert.dart';
import 'package:logic_rdv_v0/src/ui/dialog_alert/custom_confirm_alert.dart';
import 'package:logic_rdv_v0/src/ui/shared/adaptative_appbar.dart';
import 'package:logic_rdv_v0/src/ui/shared/my_drawer.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import '../../../common.dart';

import 'package:timezone/data/latest.dart' as tz;
import 'package:timezone/timezone.dart' as tz;
import 'package:flutter/foundation.dart' as foundation;

import 'card_item_rdv.dart';

bool get isAndroid =>
    foundation.defaultTargetPlatform == TargetPlatform.android;

bool get isWeb => foundation.kIsWeb;



class ListOfRdv extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ListOfRdvState();
  }
}

class ListOfRdvState extends State<ListOfRdv> {
  late String _tokenUser;
  late String _email;
  late String _fullName;
  ScrollController _scrollController = new ScrollController();
  late int currentPage = 1;
  late int totalOfPage;
  late bool isRefreshList = false;
  bool _isLoading = false;
  late String _authorizationToke;

  late String _rdvDate, _doctorRdv;

  final _scaffoldKey = GlobalKey<ScaffoldState>();

  List<AllAppoinmentResponse> appointments = [];

 

  @override
  void initState() {
    tz.initializeTimeZones();
    BlocProvider.of<SharedPreferenceBloc>(context)
      ..add(GetSharedPreferenceObject(objectKey: PreferenceKey.objectKey));
    super.initState();
  }

  bool _handleNotificationScroll(ScrollNotification notification) {
    if (notification is ScrollEndNotification &&
        _scrollController.position.extentAfter == 0) {
      if (totalOfPage < currentPage) {
        setState(() {
          isRefreshList = false;
        });
      } else {
        setState(() {
          isRefreshList = true;
          getAppointmentList(
              context: context,
              tokenUser: _tokenUser,
              page: currentPage.toString());
        });
      }
    }
    return false;
  }

  int _rdvNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: const Color(0xFFf4f5f7),
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
          page: '6',
          email: _email,
          fullNme: _fullName, notification: true,
        ),
      ),
      appBar: AdaptativeAppBar(
        leading: DefaultBackButton(),
        title: 'Liste de mes rendez-vous',
        actions: [
          IconButton(
            icon: isAndroid || isWeb
                ?  Icon(
                    MdiIcons.accountCircle,
                    color: Colors.white,
                  )
                : const Icon(
                    CupertinoIcons.person_alt_circle_fill,
                    color: Colors.white,
                  ),
            splashRadius: 20,
            onPressed: () => _scaffoldKey.currentState!.openEndDrawer(),
          ),
        ],
      ),
      body: MultiBlocListener(
        listeners: [
          BlocListener<SharedPreferenceBloc, SharedPreferenceState>(
              listener: (context, state) {
            if (state is SharedPreferenceReadObjectState) {
              setState(() {
                appointments.clear();
                _tokenUser = state.sharePreferenceObject.token;
                _email = state.sharePreferenceObject.email;
                _fullName = state.sharePreferenceObject.firstName +
                    " " +
                    state.sharePreferenceObject.lastName;
                getAppointmentList(
                    context: context,
                    tokenUser: _tokenUser,
                    page: currentPage.toString());
              });
            } else if (state is SharedPreferenceTokenAuthorizationWriteState) {
              showDialog(
                barrierDismissible: false,
                context: context,
                builder: (_) => MultiBlocProvider(
                  providers: [
                    BlocProvider<LoginBloc>(create: (context) {
                      return LoginBloc(repository: LoginRepository());
                    }),
                  ],
                  child: LoginfDialog(),
                ),
              );
            }
          }),
          BlocListener<AppointmentBloc, AppointmentState>(
              listener: (context, state) {
            if (state is AppointmentLoadingSuccess) {
              setState(() {
                _isLoading = true;
                appointments.addAll(state.response.data.list);
                currentPage += 1;
                totalOfPage = int.parse(state.response.data.pagination.maxpage);
                isRefreshList = false;
              });
            } else if (state is CancelAppointmentLoadingSuccess) {
              setState(() {
                getAppointmentList(
                    context: context, tokenUser: _tokenUser, page: '1');
                _isLoading = true;
                appointments.clear();
                flushBarSuccess("Rdv annulé avec succès", context);
              });
            } else if (state is AppointmentFailure) {
              if (state.error == messageErrorTokenInvalid ||
                  state.error == messageErrorTokenExpired) {
                customAlert(
                  willPop: true,
                  alertType: AlertType.info,
                  context: context,
                  action: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, RouteGenerator.loginScreen, (route) => false);
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
                    Navigator.pushNamedAndRemoveUntil(
                        context, RouteGenerator.loginScreen, (route) => false);
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
                  ), title: '', buttonLabel: '',
                );
              } else {
                flushBarError(state.error, context);
              }
              _isLoading = true;
            }
          }),
          BlocListener<GenerateAndCheckTokenBloc, GenerateAndCheckTokenState>(
              listener: (context, state) {
            if (state is GenerateTokenStateLoadingSuccess) {
              BlocProvider.of<SharedPreferenceBloc>(context)
                ..add(SetSharedPreferenceTokenAuthorization(
                    tokenAuthorizationKey: PreferenceKey.tokenAuthorizationKey,
                    tokenAuthorization: state.getToken.data.authorization!
                        .replaceAll("X-LOGICRDV-AUTH:", "")));
            } else if (state is GenerateAndCheckTokenStateLoadingFailure) {
              flushBarError(state.error, context);
            }
          }),
        ],
        child: BlocBuilder<AppointmentBloc, AppointmentState>(
            builder: (context, state) {
          return SafeArea(
            child: NotificationListener<ScrollNotification>(
              onNotification: _handleNotificationScroll,
              child: SingleChildScrollView(
                controller: _scrollController,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 16),
                    Center(
                      child: Container(
                        height: 36,
                        decoration: BoxDecoration(
                          color: AppColors.colorPrimary,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: TextButton(
                          onPressed: () {
                            Navigator.of(context)
                                .pushNamed(RouteGenerator.homeScreen);
                          },
                          child: Text(
                            'Prendre un Rendez-vous rapide'.toUpperCase(),
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 11.5,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                    _isLoading
                        ? appointments.length > 0
                            ? Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 16, top: 16),
                                    child: const Text(
                                      'Mes Rendez-vous',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: AppColors.blackColor,
                                      ),
                                    ),
                                  ),
                                  ListView.builder(
                                      physics: NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      itemCount: appointments.length,
                                      padding: const EdgeInsets.fromLTRB(
                                          16, 12, 16, 0),
                                      itemBuilder: (context, i) {
                                        return CardItemRdv(
                                          appointmentDataResponse:
                                              appointments[i].appointment,
                                          cabinetResponse:
                                              appointments[i].cabinet,
                                          onCancelAppointmentHandler: () {
                                            customConfirmAlert(
                                              context: context,
                                              content: const Text(
                                                "Êtes-vous sûr de vouloir annuler ce rendez-vous ?",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  fontSize: 16,
                                                ),
                                              ),
                                              title: "",
                                              onYesAction: () {
                                                setState(
                                                  () {
                                                    _rdvDate = appointments[i]
                                                        .appointment
                                                        .date;
                                                    _doctorRdv = appointments[i]
                                                        .cabinet
                                                        .nom;
                                                    _isLoading = false;
                                                    cancelAppointment(
                                                      context: context,
                                                      tokenUser: _tokenUser,
                                                      tokenAppointment:
                                                          appointments[i]
                                                              .appointment
                                                              .token,
                                                    );
                                                    // _scaffoldKey.currentState
                                                    //     .showSnackBar(
                                                    //   SnackBar(
                                                    //     content: Text(
                                                    //         'Rendez-vous annulé.'),
                                                    //   ),
                                                    // );
                                                  },
                                                );
                                              }, 
                                              alertType: null, 
                                              confirmButtonLabel: '', 
                                              onNoAction: () {  }, 
                                              cancelButtonLabel: '', 
                                              closeFunction: () {  },
                                            );
                                          },
                                          patientResponse:
                                              appointments[i].patient,
                                        );
                                      }),
                                ],
                              )
                            : const SizedBox.shrink()
                        : Padding(
                            padding: const EdgeInsets.only(
                                top: 24, left: 12, right: 12),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Center(
                                  child: CircularProgressIndicator(),
                                )
                              ],
                            ),
                          ),
                  ],
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
