import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart' as foundation;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logic_rdv_v0/src/common.dart';
import 'package:logic_rdv_v0/src/core/bloc/bloc_of_shapreference/shared_preference.dart';
import 'package:logic_rdv_v0/src/core/bloc/navigation/navigation_bloc.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/add_doctor/add_doctor_function/add_doctor_function.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/add_doctor/bloc/add_doctor.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/appointment/appointment_function/create_appointment_function.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/appointment/bloc/create_appointment_bloc/create_appointement.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/generate_and_check_token/bloc/generate_and_check_token.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/inscription_rapide/bloc/incription_rapid.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/inscription_rapide/repositories/inscription_repository.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/login/bloc/login.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/login/login_repository/login_repository.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/subcribe_notification/bloc/subcribe.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/subcribe_notification/repository/subscribe_repository.dart';
import 'package:logic_rdv_v0/src/core/constants/constants.dart';
import 'package:logic_rdv_v0/src/core/constants/type_rdv_state.dart';
import 'package:logic_rdv_v0/src/core/models/appointment_model/get_apointment_time_response.dart';
import 'package:logic_rdv_v0/src/core/models/appointment_model/selected_patient_response_for_rdv.dart';
import 'package:logic_rdv_v0/src/core/preference_key.dart';
import 'package:logic_rdv_v0/src/ui/alert_widgets/custom_snackbar.dart';
import 'package:logic_rdv_v0/src/ui/alert_widgets/login_dialog.dart';
import 'package:logic_rdv_v0/src/ui/alert_widgets/progress_dialog.dart';
import 'package:logic_rdv_v0/src/ui/dialog_alert/custom_alert.dart';
import 'package:logic_rdv_v0/src/ui/screens/rdv_select_day_and_time/card_date.dart';
import 'package:logic_rdv_v0/src/ui/screens/validate_rdv/rdv_validate.dart';
import 'package:logic_rdv_v0/src/ui/shared/AdaptativeIndicator.dart';
import 'package:logic_rdv_v0/src/ui/shared/adaptative_appbar.dart';
import 'package:logic_rdv_v0/src/ui/shared/my_drawer.dart';
import 'package:logic_rdv_v0/src/ui/shared/started_drawer.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

bool get isAndroid =>
    foundation.defaultTargetPlatform == TargetPlatform.android;

bool get isWeb => foundation.kIsWeb;

class GetRdvTimeAndDayPageArguments implements PagesArgumentType {
  final String tokenAppointment;
  final String tokenUser;
  final String data;
  final String action;
  final String session;
  final String idDoctor;
  final String tel;
  final String doctorName;
  final String rdvType;

  GetRdvTimeAndDayPageArguments(
      {
      required this.tokenAppointment,
      required this.tokenUser,
      required this.data,
      required this.action,
      required this.session,
      required this.idDoctor,
      required this.doctorName,
      required this.rdvType,
      required this.tel
      });

  @override
  getArguments() {
    return this;
  }
}

class RdvSelectDayAndTimeScreen extends StatefulWidget {
  final GetRdvTimeAndDayPageArguments arguments;

  RdvSelectDayAndTimeScreen({required this.arguments});

  @override
  _RdvSelectDayAndTimeScreenState createState() =>
      _RdvSelectDayAndTimeScreenState();
}

class _RdvSelectDayAndTimeScreenState extends State<RdvSelectDayAndTimeScreen> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  late GetApointmentTimeResponse _getApointmentTimeResponse;
  List<Creneaux> _creneauxList = [];
  late String _typState;
  late String _currentSession;
  late String _week;
  late String _prevWeek;
  Prevweek _weekPrev = new Prevweek();
  late String _prev;
  late String _data;
  late String _tokenUser;
  late String _fullName;
  late String _email;

  bool _isLoading = false;
  bool _isNextAsk = false;

  List<DataTimeRdv> _rdvTimeData = [];
  List<Creneaux> _creneaux = [];
  late Creneaux _creneauxItem;

  late String _onClickDate;
  late String _onClickAction;
  late String _onClickMessage;

  late SelectedPatientResponseForRdv selectedPatientResponseForRdv;

  _setDataFunction(String data) {
    _onClickDate = data;
    print('mydata:$_onClickDate');
  }

  _setActionFunction(String action) {
    _onClickAction = action;
    print('myaction:$_onClickAction');
  }

  @override
  initState() {
    BlocProvider.of<SharedPreferenceBloc>(context)
      ..add(GetSharedPreferenceObject(objectKey: PreferenceKey.objectKey));
    getAppointmentTimeAndDay(
        action: widget.arguments.action,
        tokenUser: widget.arguments.tokenUser,
        tokenAppointment: widget.arguments.tokenAppointment,
        data: widget.arguments.data,
        session: widget.arguments.session,
        context: context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ProgressDialog _ackRdvProgressDialog =
        ProgressDialog(context, ProgressDialogType.Normal);
    return Scaffold(
      key: _scaffoldKey,
      endDrawer: _tokenUser != null
          ? MultiBlocProvider(
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
                fullNme: _fullName, notification: false,
              ),
            )
          : StartedDrawer(),
      backgroundColor: AppColors.whiteColor,
      appBar: AdaptativeAppBar(
        leading: DefaultBackButton(),
        title: 'Jour et Heure du Rdv',
        actions: [
          _tokenUser != null
              ? IconButton(
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
                )
              : IconButton(
                  icon: isAndroid || isWeb
                      ?  Icon(
                          MdiIcons.menu,
                          color: AppColors.whiteColor,
                        )
                      :  Icon(
                          MdiIcons.menu,
                          color: AppColors.whiteColor,
                        ),
                  splashRadius: 20,
                  onPressed: () => _scaffoldKey.currentState!.openEndDrawer(),
                ),
        ],
        // ${widget.arguments.rdvType}
      ),
      bottomSheet: Container(
        color: AppColors.primaryColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Visibility(
              visible: _prevWeek != null,
              child: TextButton(
                  child: const Text(
                    'Sem. Préc.',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    getPrevAppointmentTimeAndDay(
                        action: "",
                        tokenUser: widget.arguments.tokenUser,
                        tokenAppointment: widget.arguments.tokenAppointment,
                        data: "",
                        week: _prevWeek,
                        session: _currentSession,
                        context: context);
                  }),
            ),
            Visibility(
              visible: _week != null,
              child: TextButton(
                  child: const Text(
                    'Sem. Suiv.',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    getNextAppointmentTimeAndDay(
                        action: "",
                        tokenUser: widget.arguments.tokenUser,
                        tokenAppointment: widget.arguments.tokenAppointment,
                        data: "",
                        week: _week,
                        session: _currentSession,
                        context: context);
                  }),
            ),
          ],
        ),
      ),
      body: MultiBlocListener(
        listeners: [
          BlocListener<CreateAppointmentBloc, CreateAppointmentState>(
            listener: (context, state) {
              if (state is CreateAppointmentLoading) {
                _ackRdvProgressDialog.setMessage("Chargement en cours");
                _ackRdvProgressDialog.show();
              } else if (state is DayAndTimeOfAppointmentLoadingSuccess) {
                _ackRdvProgressDialog.hide();
                setState(() {
                  _isLoading = true;
                  _getApointmentTimeResponse = state.response;
                  _getApointmentTimeResponse.data.data!.forEach((p0) {
                    _creneauxList = p0.creneaux!.toList();
                  });
                  _creneauxList.map((e) => _onClickMessage = e.onclickMessage!);
                  _currentSession = _getApointmentTimeResponse.data.session!;
                  _week = _getApointmentTimeResponse
                      .data.navigation!.nextweek!.onclickWeek;
                  _rdvTimeData.addAll(_getApointmentTimeResponse.data.data!);
                });
              } else if (state is NextDayAndTimeOfAppointmentLoadingSuccess) {
                _ackRdvProgressDialog.hide();
                setState(() {
                  _isLoading = true;
                  _creneaux.clear();
                  _currentSession = _getApointmentTimeResponse.data.session!;
                  _getApointmentTimeResponse = state.response;
                  _week = _getApointmentTimeResponse
                          ?.data?.navigation?.nextweek?.onclickWeek ??
                      '';
                  _prevWeek = _getApointmentTimeResponse
                          ?.data?.navigation?.prevweek?.onclickWeek ??
                      '';
                  _weekPrev =
                      _getApointmentTimeResponse.data.navigation!.prevweek!;

                  _prev = _getApointmentTimeResponse
                          ?.data?.navigation?.prev?.onclickWeek ??
                      '';
                  _rdvTimeData.clear();
                  _rdvTimeData.addAll(_getApointmentTimeResponse.data.data!);
                });
              } else if (state is PrevDayAndTimeOfAppointmentLoadingSuccess) {
                _ackRdvProgressDialog.hide();
                setState(() {
                  _isLoading = true;
                  _creneaux.clear();
                  _getApointmentTimeResponse = state.response;
                  _currentSession = _getApointmentTimeResponse.data.session!;
                  _week = _getApointmentTimeResponse
                          ?.data?.navigation?.nextweek?.onclickWeek ??
                      '';
                  _prevWeek = _getApointmentTimeResponse
                      .data.navigation!.prevweek!.onclickWeek!;
                  _prev = _getApointmentTimeResponse
                          ?.data?.navigation?.prev?.onclickWeek ??
                      '';
                  _rdvTimeData.clear();
                  _rdvTimeData.addAll(_getApointmentTimeResponse.data.data!);
                });
              } else if (state is RdvTypeStateLoadingSuccess) {
                _ackRdvProgressDialog.hide();
                setState(
                  () {
                    _ackRdvProgressDialog.hide();
                    _isLoading = true;
                    _typState = state.response.type;
                    if (_typState == TypeRdvState.apptconfirm) {
                      _ackRdvProgressDialog.hide();
                      patientSelectedForRdv(
                          context: context,
                          tokenAppointment: widget.arguments.tokenAppointment,
                          data: _onClickDate,
                          action: _onClickAction,
                          tokenUser: widget.arguments.tokenUser ?? _tokenUser,
                          session: _currentSession);
                    } else if (_typState == TypeRdvState.appPatient) {
                      _ackRdvProgressDialog.hide();
                      Navigator.of(context).popAndPushNamed(
                        RouteGenerator.patientListScreen,
                        arguments: GetPatientPageArguments(
                          session: _currentSession,
                          data: _onClickDate,
                          action: _onClickAction,
                          doctorName: widget.arguments.doctorName,
                          source: 'rdv',
                          tokenappointment: widget.arguments.tokenAppointment,
                          tokenDoctor: widget.arguments.tokenAppointment,
                          tokenuser: widget.arguments.tokenUser ?? _tokenUser,
                        ),
                      );
                    } else if (_typState == TypeRdvState.apptdoctoradd) {
                      _ackRdvProgressDialog.hide();
                      addDoctor(
                        context: context,
                        id: widget.arguments.idDoctor,
                        phone: widget.arguments.tel,
                        tokenUser: _tokenUser ?? widget.arguments.tokenUser,
                      );
                    } else if (_typState == TypeRdvState.apptconnect &&
                        _tokenUser != null) {
                      _ackRdvProgressDialog.hide();
                      addDoctor(
                        context: context,
                        id: widget.arguments.idDoctor,
                        phone: widget.arguments.tel,
                        tokenUser: _tokenUser ?? widget.arguments.tokenUser,
                      );
                    } else if (_typState == TypeRdvState.apptconnect &&
                        _tokenUser == null) {
                      _ackRdvProgressDialog.hide();
                      showDialog(
                        context: context,
                        builder: (_) => MultiBlocProvider(
                          providers: [
                            BlocProvider<LoginBloc>(create: (context) {
                              return LoginBloc(repository: LoginRepository());
                            }),
                            BlocProvider<InscriptionRapidBloc>(
                                create: (context) {
                              return InscriptionRapidBloc(
                                  repository: InscriptionRapidRepository());
                            }),
                          ],
                          child: LoginfDialog(),
                        ),
                      ).then(
                        (value) {
                          setState(
                            () {
                              if (value == 0) {
                                return null;
                              } else {
                                _ackRdvProgressDialog.hide();
                                _tokenUser = value;
                                rdvTypeState(
                                  context: context,
                                  action: _onClickAction,
                                  data: _onClickDate,
                                  session: _currentSession,
                                  tokenAppointment:
                                      widget.arguments.tokenAppointment,
                                  tokenUser: _tokenUser,
                                );
                              }
                            },
                          );
                        },
                      );
                    } else if (_typState == TypeRdvState.appcrenaux) {
                      customAlert(
                          context: context,
                          action: () {
                            _ackRdvProgressDialog.hide();
                            Navigator.pop(context);
                          },
                          content: Text(
                            "Votre prise de rendez n'est pas validée. Veuillez choisir un autre créneau horaire.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.normal),
                          ), 
                          alertType: null, 
                          title: '', 
                          buttonLabel: '', 
                          willPop: null);
                    } else if (_typState == TypeRdvState.apptlocked) {
                      customAlert(
                          context: context,
                          action: () {
                            _ackRdvProgressDialog.hide();
                            Navigator.pop(context);
                          },
                          content: Text(
                            state.response.message,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.normal),
                          ), 
                          alertType: null, 
                          title: '', 
                          buttonLabel: '', 
                          willPop: null);
                    }
                  },
                );
              } else if (state is PatientSelectedForAppointmentLoadingSuccess) {
                setState(
                  () {
                    Navigator.pop(context);
                    selectedPatientResponseForRdv = state.response;
                    Navigator.pushNamed(
                      context,
                      RouteGenerator.rdvValidate,
                      arguments: ValidateRdvPageArguments(
                        selectedPatientResponseForRdv:
                            selectedPatientResponseForRdv,
                        session: _currentSession,
                        birthdate: '',
                        socialNumber: '',
                      ),
                    );
                  },
                );
              } else if (state is CreateAppointmentFailure) {
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
                    ), title: '', buttonLabel: '',
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
                    ), title: '', buttonLabel: '',
                  );
                } else {
                  customAlert(
                    alertType: AlertType.error,
                    context: context,
                    content: Text(
                      state.error,
                      style: TextStyle(
                          fontSize: 14, fontWeight: FontWeight.normal),
                    ), title: '', 
                    buttonLabel: '', 
                    action: () {  }, 
                    willPop: null,
                  );
                }
                _isLoading = true;
              }
            },
          ),
          BlocListener<SharedPreferenceBloc, SharedPreferenceState>(
              listener: (context, state) {
            if (state is SharedPreferenceReadObjectState) {
              setState(() {
                _tokenUser = state.sharePreferenceObject.token;
                _email = state.sharePreferenceObject.email;
                _fullName = state.sharePreferenceObject.firstName +
                    " " +
                    state.sharePreferenceObject.lastName;
              });
            }
          }),
          BlocListener<GenerateAndCheckTokenBloc, GenerateAndCheckTokenState>(
            listener: (context, state) {
              if (state is GenerateTokenStateLoadingSuccess) {
                BlocProvider.of<SharedPreferenceBloc>(context)
                  ..add(SetSharedPreferenceTokenAuthorization(
                      tokenAuthorizationKey:
                          PreferenceKey.tokenAuthorizationKey,
                      tokenAuthorization: state.getToken.data.authorization!
                          .replaceAll("X-LOGICRDV-AUTH:", "")));
              } else if (state is GenerateAndCheckTokenStateLoadingFailure) {
                _ackRdvProgressDialog.hide();
                flushBarError(state.error, context);
              }
            },
          ),
          BlocListener<AddDoctorBloc, AddDoctorState>(
            listener: (context, state) {
              if (state is AddDoctorLoadingSuccess) {
                setState(
                  () {
                    rdvTypeState(
                      context: context,
                      action: _onClickAction,
                      data: _onClickDate,
                      session: _currentSession,
                      tokenAppointment:
                          state.response.data.etablissement.appointment.token,
                      tokenUser: _tokenUser,
                    );
                  },
                );
              } else if (state is AddDoctorFailure) {
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
                    ), title: '', buttonLabel: '',
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
                    ), title: '', buttonLabel: '',
                  );
                } else {
                  customAlert(
                    alertType: AlertType.info,
                    context: context,
                    content: Container(
                      child: Text(
                        state.error,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ), title: '', 
                    buttonLabel: '', 
                    action: () {  }, 
                    willPop: null,
                  );
                }
              }
            },
          ),
        ],
        child: BlocBuilder<CreateAppointmentBloc, CreateAppointmentState>(
            builder: (context, state) {
          return SafeArea(
            child: Container(
              child: _isLoading
                  ? _rdvTimeData.length > 0
                      ? Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Visibility(
                              visible: widget.arguments.rdvType != "",
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(16, 16, 8, 12),
                                child: Wrap(
                                  children: [
                                    Visibility(
                                      child: Text(
                                        'Date et heure pour: ',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      visible: widget.arguments.rdvType != "",
                                    ),
                                    const SizedBox(width: 4),
                                    Text(
                                      '${widget.arguments.rdvType}',
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: AppColors.colorPrimary,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: ListView.separated(
                                padding:
                                    const EdgeInsets.only(top: 0, bottom: 100),
                                shrinkWrap: true,
                                itemCount: _rdvTimeData.length,
                                separatorBuilder: (context, _) => Container(
                                  height: 0,
                                  width: double.infinity,
                                  color: Colors.grey.shade400,
                                ),
                                itemBuilder: (context, ind) {
                                  _creneaux.addAll(_rdvTimeData[ind].creneaux!);
                                  return CardDateItem(
                                    onClickMessage: _onClickMessage,
                                    dataFunction: _setDataFunction,
                                    actionFunction: _setActionFunction,
                                    tokenUser: widget.arguments.tokenUser,
                                    tokenAppointment:
                                        widget.arguments.tokenAppointment,
                                    currentSession: _currentSession,
                                    dataTimeRdv: _rdvTimeData[ind],
                                    contextTimer: context,
                                  );
                                },
                              ),
                            ),
                          ],
                        )
                      : Center(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 24),
                            child: const Text(
                              "Prise de rendez-vous par internet non autoris\u00e9e, appelez le secr\u00e9tariat",
                              textAlign: TextAlign.center,
                            ),
                          ),
                        )
                  : const Center(
                      child: AdaptativeIndicator(),
                    ),
            ),
          );
        }),
      ),
    );
  }
}
