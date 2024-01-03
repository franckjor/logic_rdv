import 'package:animations/animations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dash/flutter_dash.dart';
import 'package:logic_rdv_v0/src/common.dart';
import 'package:logic_rdv_v0/src/core/bloc/bloc_of_shapreference/shared_preference.dart';
import 'package:logic_rdv_v0/src/core/bloc/navigation/navigation_bloc.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/appointment/appointment_function/create_appointment_function.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/appointment/bloc/create_appointment_bloc/create_appointement.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/generate_and_check_token/bloc/generate_and_check_token.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/generate_and_check_token/function/get_token.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/patient/bloc/patient.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/patient/patient_function/patient_function.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/patient/patient_repository/patient_repository.dart';
import 'package:logic_rdv_v0/src/core/constants/constants.dart';
import 'package:logic_rdv_v0/src/core/constants/type_rdv_state.dart';
import 'package:logic_rdv_v0/src/core/models/appointment_model/get_paient_for_rdv_response.dart';
import 'package:logic_rdv_v0/src/core/models/appointment_model/selected_patient_response_for_rdv.dart';
import 'package:logic_rdv_v0/src/core/models/patient/patient_request.dart';
import 'package:logic_rdv_v0/src/core/models/patient/patient_response_afert_create.dart';
import 'package:logic_rdv_v0/src/core/preference_key.dart';
import 'package:logic_rdv_v0/src/ui/alert_widgets/custom_dialog_for_add_patient.dart';
import 'package:logic_rdv_v0/src/ui/alert_widgets/custom_snackbar.dart';
import 'package:logic_rdv_v0/src/ui/alert_widgets/progress_dialog.dart';
import 'package:logic_rdv_v0/src/ui/dialog_alert/custom_alert.dart';
import 'package:logic_rdv_v0/src/ui/dialog_alert/custom_confirm_alert.dart';
import 'package:logic_rdv_v0/src/ui/screens/rdv_select_day_and_time/rdv_select_day_and_time_screen.dart';
import 'package:logic_rdv_v0/src/ui/screens/validate_rdv/rdv_validate.dart';
import 'package:logic_rdv_v0/src/ui/shared/AdaptativeIndicator.dart';
import 'package:logic_rdv_v0/src/ui/shared/adaptative_appbar.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:url_launcher/url_launcher.dart';

//
// bool get isAndroid =>
//     foundation.defaultTargetPlatform == TargetPlatform.android;
//
// bool get isWeb => foundation.kIsWeb;

class GetPatientPageArguments implements PagesArgumentType {
  final String tokenDoctor;
  final String tokenuser;
  final String tokenappointment;
  final String data;
  final String action;
  final String session;
  final String source;
  final String doctorName;

  GetPatientPageArguments(
      {this.tokenDoctor,
      this.data,
      this.session,
      this.action,
      this.tokenappointment,
      this.tokenuser,
      this.source,
      this.doctorName});

  @override
  getArguments() {
    return this;
  }
}

class PatientListScreen extends StatefulWidget {
  final GetPatientPageArguments arguments;

  PatientListScreen({required this.arguments});

  @override
  _PatientListScreenState createState() => _PatientListScreenState();
}

class _PatientListScreenState extends State<PatientListScreen> {
  String _tokenUser;
  String _session;
  String _typState;
  String _listOfPatientOnClickData;
  String _listOfPatientOnClickAction;

  GetPaientForRdvResponse _getPaientForRdvResponse;
  List<PatientDataResponseDrv> _listOfPatient = [];

  void _showDialogToAddPatient({
    String intention,
    PatientRequest patientRequest,
    String tokenAppt,
    String tokenUser,
    String tokenPatient,
    DataPatientResponseAfertCreate patient,
  }) {
    showModal(
      context: context,
      configuration: FadeScaleTransitionConfiguration(),
      builder: (context) => MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) {
            return PatientBloc(repository: PatientRepository());
          })
        ],
        child: DialogForCreatePatient(
          intention: intention,
          patientRequest: patientRequest,
          tokenAppt: tokenAppt,
          tokenUser: tokenUser,
          tokenPatient: tokenPatient,
          patient: _patient,
        ),
      ),
    ).then((value) {
      _isLoading = false;
      if (widget.arguments.source == 'rdv') {
        _listOfPatient.clear();
        getPatientList(
          context: context,
          action: widget.arguments.action,
          data: widget.arguments.data,
          session: widget.arguments.session,
          tokenAppointment: widget.arguments.tokenappointment,
          tokenUser: widget.arguments.tokenuser,
        );
      } else {
        getListOfPatient(
          context: context,
          tokenDoctor: widget.arguments.tokenDoctor,
          tokenUser: tokenUser,
        );
      }
    });
  }

  List<DataPatientResponseAfertCreate> _patientList = [];
  DataPatientResponseAfertCreate _patient;
  bool _isLoading = false;
  SelectedPatientResponseForRdv selectedPatientResponseForRdv;
  String _birthDate;
  String _socialNumber;
  int _currentIndex;

  @override
  void initState() {
    if (widget.arguments.source == 'rdv') {
      getPatientList(
        context: context,
        action: widget.arguments.action,
        data: widget.arguments.data,
        session: widget.arguments.session,
        tokenAppointment: widget.arguments.tokenappointment,
        tokenUser: widget.arguments.tokenuser,
      );
    } else {
      BlocProvider.of<SharedPreferenceBloc>(context)
        ..add(GetSharedPreferenceObject(objectKey: PreferenceKey.objectKey));
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ProgressDialog _progressDialog =
        ProgressDialog(context, ProgressDialogType.Normal);
    return Scaffold(
      appBar: AdaptativeAppBar(
        title: 'Liste des patients\n${widget.arguments.doctorName ?? ''}',
        leading: DefaultBackButton(),
        actions: [
          IconButton(
            icon: Icon(Icons.add_circle, color: Colors.white),
            onPressed: () {
              _showDialogToAddPatient(
                tokenAppt: widget.arguments.tokenDoctor,
                intention: '',
                tokenUser: _tokenUser ?? widget.arguments.tokenuser,
                patient: _patient,
              );
            },
          ),
        ],
      ),
      body: MultiBlocListener(
          listeners: [
            BlocListener<SharedPreferenceBloc, SharedPreferenceState>(
                listener: (context, state) {
              if (state is SharedPreferenceReadObjectState) {
                setState(() {
                  _tokenUser = state.sharePreferenceObject.token;
                  getListOfPatient(
                    context: context,
                    tokenDoctor: widget.arguments.tokenDoctor,
                    tokenUser: _tokenUser,
                  );
                });
              }
            }),
            BlocListener<CreateAppointmentBloc, CreateAppointmentState>(
                listener: (context, state) {
              if (state is PatientForAppointmentLoadingSuccess) {
                _progressDialog.hide();
                setState(() {
                  _getPaientForRdvResponse = state.response;
                  _session = _getPaientForRdvResponse.data.session;
                  _listOfPatient
                      .addAll(_getPaientForRdvResponse?.data?.data ?? []);
                  _isLoading = true;
                });
              } else if (state is PatientSelectedForAppointmentLoadingSuccess) {
                setState(() {
                  _progressDialog.hide();
                  selectedPatientResponseForRdv = state.response;
                  Navigator.pushNamed(context, RouteGenerator.rdvValidate,
                      arguments: ValidateRdvPageArguments(
                          selectedPatientResponseForRdv:
                              selectedPatientResponseForRdv,
                          session: _session,
                          birthdate: _birthDate,
                          socialNumber: _socialNumber));
                });
              } else if (state is RdvTypeStateLoadingSuccess) {
                setState(() {
                  _progressDialog.hide();
                  _typState = state.response.type;
                  if (_typState == TypeRdvState.appcrenaux) {
                    _progressDialog.hide();
                    customAlert(
                        context: context,
                        content: Text(
                          "Votre prise de rendez n'est pas validée. Veuillez choisir un autre créneau horaire.",
                          textAlign: TextAlign.center,
                        ),
                        action: () {
                          Navigator.pushReplacementNamed(
                              context, RouteGenerator.rdvSelectDayAndTimeScreen,
                              arguments: GetRdvTimeAndDayPageArguments(
                                  session: _session,
                                  data: _listOfPatientOnClickData,
                                  tokenAppointment:
                                      widget.arguments.tokenDoctor,
                                  tokenUser: widget.arguments.tokenuser,
                                  action: _listOfPatientOnClickAction));
                        });
                  } else {
                    patientSelectedForRdv(
                        context: context,
                        tokenAppointment: widget.arguments.tokenDoctor,
                        data: _listOfPatientOnClickData,
                        action: _listOfPatientOnClickAction,
                        tokenUser: widget.arguments.tokenuser,
                        session: _session);
                  }
                });
              } else if (state is CreateAppointmentFailure) {
                _progressDialog.hide();
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
                  );
                } else if (state.error == invalidTokenUser) {
                  _progressDialog.hide();
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
                  );
                } else {
                  _progressDialog.hide();
                  customAlert(
                      alertType: AlertType.info,
                      context: context,
                      content: Container(
                        child: Text(
                          state.error,
                          textAlign: TextAlign.center,
                        ),
                      ));
                }
              }
            }),
            BlocListener<PatientBloc, PatientState>(listener: (context, state) {
              if (state is ListOfPatientLoadingSuccess) {
                setState(() {
                  _patientList.clear();
                  _patientList.addAll(state.response.data);
                  _patient = _patientList[0];
                  _isLoading = true;
                });
              } else if (state is RemovePatientLoadingSuccess) {
                if (widget.arguments.source == 'rdv') {
                  setState(() {
                    // _listOfPatient.clear();
                    _listOfPatient.removeAt(_currentIndex);
                  });
                  // getPatientList(
                  //   context: context,
                  //   action: widget.arguments.action,
                  //   data: widget.arguments.data,
                  //   session: widget.arguments.session,
                  //   tokenAppointment: widget.arguments.tokenappointment,
                  //   tokenUser: widget.arguments.tokenuser,
                  // );
                } else {
                  _isLoading = false;
                  _patientList.clear();
                  getListOfPatient(
                    context: context,
                    tokenDoctor: widget.arguments.tokenDoctor,
                    tokenUser: _tokenUser,
                  );
                }
              } else if (state is PatientFailure) {
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
                  );
                } else {
                  customAlert(
                      alertType: AlertType.info,
                      context: context,
                      content: Container(
                        child: Text(
                          state.error,
                          textAlign: TextAlign.center,
                        ),
                      ));
                }
              }
            }),
            BlocListener<GenerateAndCheckTokenBloc, GenerateAndCheckTokenState>(
                listener: (context, state) {
              if (state is GenerateTokenStateLoadingSuccess) {
                BlocProvider.of<SharedPreferenceBloc>(context)
                  ..add(SetSharedPreferenceTokenAuthorization(
                      tokenAuthorizationKey:
                          PreferenceKey.tokenAuthorizationKey,
                      tokenAuthorization: state.getToken.data.authorization
                          .replaceAll("X-LOGICRDV-AUTH:", "")));
              } else if (state is GenerateAndCheckTokenStateLoadingFailure) {
                flushBarError(state.error, context);
              }
            }),
            BlocListener<SharedPreferenceBloc, SharedPreferenceState>(
                listener: (context, state) {
              if (state is SharedPreferenceReadObjectState) {
                setState(() {});
              }
            }),
          ],
          child: widget.arguments.source == 'rdv'
              ? BlocBuilder<CreateAppointmentBloc, CreateAppointmentState>(
                  builder: (context, state) {
                  return _isLoading
                      ? _listOfPatient.length > 0
                          ? ListView.builder(
                              itemCount: _listOfPatient.length,
                              padding: const EdgeInsets.only(top: 8),
                              itemBuilder: (context, i) =>
                                  _MyTodayAppointmentItemForGetRdv(
                                onTapForItem: () {
                                  if (_listOfPatient[i].lockmessage != "") {
                                    customAlert(
                                        context: context,
                                        content: Text(
                                            _listOfPatient[i].lockmessage));
                                  } else {
                                    rdvTypeState(
                                      context: context,
                                      action: _listOfPatient[i].onclickAction,
                                      data: _listOfPatient[i].onclickData,
                                      session: _session,
                                      tokenAppointment:
                                          widget.arguments.tokenDoctor,
                                      tokenUser: _tokenUser,
                                    );
                                    _progressDialog
                                        .setMessage("Chargement en cours ...");
                                    _progressDialog.show();
                                    setState(() {
                                      _birthDate = _listOfPatient[i].dob;
                                      _socialNumber = _listOfPatient[i].locked;
                                      _listOfPatientOnClickData =
                                          _listOfPatient[i].onclickData;
                                      _listOfPatientOnClickAction =
                                          _listOfPatient[i].onclickAction;
                                    });
                                  }
                                },
                                length: _listOfPatient.length,
                                dataPatientResponseAfertCreate:
                                    _listOfPatient[i],
                                updatePatientHandler: () {
                                  if (_listOfPatient[i]?.token == null) {
                                    customAlert(
                                      context: context,
                                      content: Text('Ce patient n\'existe pas'),
                                    );
                                  } else {
                                    PatientRequest _patient =
                                        PatientRequest((builder) => builder
                                          ..tokenappt =
                                              widget.arguments.tokenDoctor
                                          ..tokenuser = _tokenUser ??
                                              widget.arguments.tokenuser
                                          ..tokenpatient =
                                              _listOfPatient[i].token
                                          ..phone = _listOfPatient[i].phone
                                          ..nom = _listOfPatient[i].nom
                                          ..prenom = _listOfPatient[i].prenom
                                          ..email = _listOfPatient[i].email);
                                    _showDialogToAddPatient(
                                        patientRequest: _patient,
                                        intention: updateIntention,
                                        tokenUser: _tokenUser ??
                                            widget.arguments.tokenuser,
                                        tokenPatient: _listOfPatient[i].token,
                                        tokenAppt:
                                            widget.arguments.tokenDoctor);
                                  }
                                },
                                removePatientHandler: () {
                                  customConfirmAlert(
                                      context: context,
                                      title: '',
                                      alertType: AlertType.info,
                                      content: const Text(
                                        'Voulez-vous supprimer ce patient ? ',
                                        textAlign: TextAlign.center,
                                      ),
                                      onYesAction: () {
                                        setState(() {
                                          _currentIndex = i;
                                          removePatient(
                                              tokenDoctor:
                                                  widget.arguments.tokenDoctor,
                                              tokenUser: _tokenUser ??
                                                  widget.arguments.tokenuser,
                                              context: context,
                                              tokenPatient:
                                                  _listOfPatient[i].token);
                                        });
                                      });
                                },
                              ),
                            )
                          : Container(
                              child: Center(
                                child: const Text(
                                    'Pas de patient pour ce medecin!!'),
                              ),
                            )
                      : Center(
                          child: AdaptativeIndicator(),
                        );
                })
              : BlocBuilder<PatientBloc, PatientState>(
                  builder: (context, state) {
                  return _isLoading
                      ? _patientList.length > 0
                          ? ListView.builder(
                              itemCount: _patientList.length,
                              // padding: EdgeInsets.all(16),
                              itemBuilder: (context, i) =>
                                  _MyTodayAppointmentItem(
                                length: _patientList.length,
                                dataPatientResponseAfertCreate: _patientList[i],
                                updatePatientHandler: () {
                                  PatientRequest _patient =
                                      PatientRequest((builder) => builder
                                        ..tokenappt =
                                            widget.arguments.tokenDoctor
                                        ..tokenuser = _tokenUser
                                        ..tokenpatient = _patientList[i].token
                                        ..phone = _patientList[i].phone
                                        ..nom = _patientList[i].nom
                                        ..prenom = _patientList[i].prenom
                                        ..email = _patientList[i].email);
                                  _showDialogToAddPatient(
                                      patientRequest: _patient,
                                      intention: updateIntention,
                                      tokenUser: _tokenUser,
                                      tokenPatient: _patientList[i].token,
                                      tokenAppt: widget.arguments.tokenDoctor);
                                },
                                removePatientHandler: () {
                                  customConfirmAlert(
                                      context: context,
                                      title: '',
                                      alertType: AlertType.info,
                                      content: const Text(
                                        'Voulez-vous supprimer ce patient ? ',
                                        textAlign: TextAlign.center,
                                      ),
                                      onYesAction: () {
                                        removePatient(
                                            tokenDoctor:
                                                widget.arguments.tokenDoctor,
                                            tokenUser: _tokenUser,
                                            context: context,
                                            tokenPatient:
                                                _patientList[i].token);
                                      });
                                },
                              ),
                            )
                          : Container(
                              child: Center(
                                child: const Text(
                                    'Pas de patient pour ce médecin!!'),
                              ),
                            )
                      : Center(
                          child: CircularProgressIndicator(),
                        );
                })),
    );
  }
}

void _makeCall(
  String phone,
) async {
  await launch("tel://$phone");
}

class _MyTodayAppointmentItem extends StatelessWidget {
  final DataPatientResponseAfertCreate dataPatientResponseAfertCreate;
  final Function removePatientHandler;
  final Function updatePatientHandler;
  final int length;

  _MyTodayAppointmentItem({
    this.dataPatientResponseAfertCreate,
    this.removePatientHandler,
    this.updatePatientHandler,
    this.length,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      margin: const EdgeInsets.only(
        top: 8,
        left: 16,
        right: 16,
      ),
      child: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                      image: dataPatientResponseAfertCreate.photo == ""
                          ? AssetImage('assets/images/medecin.png')
                          : NetworkImage(dataPatientResponseAfertCreate.photo),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        '${dataPatientResponseAfertCreate?.nom} ${dataPatientResponseAfertCreate?.prenom}',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.phone,
                              size: 14,
                              color: AppColors.colorPrimary,
                            ),
                            const SizedBox(width: 6),
                            Text(
                              '${dataPatientResponseAfertCreate?.phone}',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey.shade500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 4),
                      dataPatientResponseAfertCreate.dob == ''
                          ? SizedBox.shrink()
                          : Padding(
                              padding: const EdgeInsets.symmetric(vertical: 8),
                              child: Row(
                                children: [
                                  const Icon(
                                    Icons.calendar_today,
                                    size: 14,
                                    color: AppColors.colorPrimary,
                                  ),
                                  const SizedBox(width: 6),
                                  Text(
                                    '${dataPatientResponseAfertCreate?.dob}' ??
                                        '--/--/-- ',
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey.shade500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(
                            Icons.email,
                            size: 14,
                            color: AppColors.colorPrimary,
                          ),
                          const SizedBox(width: 6),
                          SizedBox(
                            width: 165,
                            child: Text(
                              '${dataPatientResponseAfertCreate?.email}' ??
                                  'Pas d\'email ',
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey.shade500,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const Dash(
                  direction: Axis.vertical,
                  length: 90,
                  dashLength: 1,
                  dashColor: Colors.grey,
                ),
                const SizedBox(width: 10),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ContactIconButton(
                      icon: Icons.edit,
                      onTap: updatePatientHandler,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Visibility(
                      visible: length > 1,
                      child: ContactIconButton(
                        icon: MdiIcons.delete,
                        onTap: removePatientHandler,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [
              0.1,
              0.6,
              0.6,
            ],
            colors: [
              AppColors.colorPrimary.withOpacity(.1),
              Colors.white60.withOpacity(.1),
              Colors.white60,
            ],
          ),
        ),
      ),
    );
  }
}

class _MyTodayAppointmentItemForGetRdv extends StatelessWidget {
  final PatientDataResponseDrv dataPatientResponseAfertCreate;
  final Function removePatientHandler;
  final Function updatePatientHandler;
  final Function onTapForItem;
  final int length;

  _MyTodayAppointmentItemForGetRdv({
    this.dataPatientResponseAfertCreate,
    this.removePatientHandler,
    this.updatePatientHandler,
    this.onTapForItem,
    this.length,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTapForItem,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        margin: const EdgeInsets.only(
          top: 8,
          left: 16,
          right: 16,
        ),
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                            image: dataPatientResponseAfertCreate.photo == null
                                ? AssetImage('assets/images/medecin.png')
                                : NetworkImage(
                                    dataPatientResponseAfertCreate?.photo),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Visibility(
                        visible:
                            dataPatientResponseAfertCreate.lockmessage != "",
                        child: const Icon(
                          Icons.block,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        '${dataPatientResponseAfertCreate?.nom ?? ''} ${dataPatientResponseAfertCreate?.prenom ?? ''}',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          const Icon(
                            Icons.message,
                            size: 14,
                            color: AppColors.colorPrimary,
                          ),
                          const SizedBox(width: 6),
                          Container(
                            width: 150,
                            child: Text(
                              '${dataPatientResponseAfertCreate.email}',
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey.shade500,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          const Icon(
                            Icons.phone,
                            size: 14,
                            color: AppColors.colorPrimary,
                          ),
                          const SizedBox(width: 6),
                          Text(
                            '${dataPatientResponseAfertCreate.phone}',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey.shade500,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          const Icon(
                            Icons.calendar_today,
                            size: 14,
                            color: AppColors.colorPrimary,
                          ),
                          const SizedBox(width: 6),
                          Text(
                            dataPatientResponseAfertCreate?.dob == ''
                                ? '--/--/--'
                                : dataPatientResponseAfertCreate?.dob,
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey.shade500,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  const Spacer(),
                  const Dash(
                    direction: Axis.vertical,
                    length: 70,
                    dashLength: 1,
                    dashColor: Colors.grey,
                  ),
                  const Spacer(),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ContactIconButton(
                        icon: Icons.edit,
                        onTap: updatePatientHandler,
                      ),
                      const SizedBox(height: 30),
                      Visibility(
                        visible: length > 1,
                        child: ContactIconButton(
                          icon: MdiIcons.delete,
                          onTap: removePatientHandler,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: [
                0.1,
                0.6,
                0.6,
              ],
              colors: [
                AppColors.colorPrimary.withOpacity(.1),
                Colors.white60.withOpacity(.1),
                Colors.white60,
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ContactIconButton extends StatelessWidget {
  final IconData icon;
  final void Function() onTap;

  const ContactIconButton({
    super.key,
    this.icon,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 25,
        width: 25,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: Icon(
            icon,
            color: Colors.white,
            size: 16,
          ),
        ),
      ),
    );
  }
}
