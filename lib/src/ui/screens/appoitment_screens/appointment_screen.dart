import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart' as foundation;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:launch_review/launch_review.dart';
import 'package:logic_rdv_v0/src/common.dart';
import 'package:logic_rdv_v0/src/core/bloc/bloc_of_shapreference/shared_preference.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/appointment/appointment_function/appointment_function.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/appointment/bloc/appointment.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/generate_and_check_token/bloc/generate_and_check_token.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/login/bloc/login.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/login/login_repository/login_repository.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/subcribe_notification/bloc/subcribe.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/subcribe_notification/function/subscribe_function.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/subcribe_notification/repository/subscribe_repository.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/version/bloc/version.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/version/function/version_function.dart';
import 'package:logic_rdv_v0/src/core/constants/constants.dart';
import 'package:logic_rdv_v0/src/core/helper/app_version.dart';
import 'package:logic_rdv_v0/src/core/models/appointment_model/appointment_response.dart';
import 'package:logic_rdv_v0/src/core/preference_key.dart';
import 'package:logic_rdv_v0/src/ui/alert_widgets/custom_snackbar.dart';
import 'package:logic_rdv_v0/src/ui/alert_widgets/login_dialog.dart';
import 'package:logic_rdv_v0/src/ui/dialog_alert/custom_alert.dart';
import 'package:logic_rdv_v0/src/ui/dialog_alert/custom_confirm_alert.dart';
import 'package:logic_rdv_v0/src/ui/screens/appoitment_screens/card_item_rdv.dart';
import 'package:logic_rdv_v0/src/ui/shared/adaptative_appbar.dart';
import 'package:logic_rdv_v0/src/ui/shared/my_drawer.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'package:wonderpush_flutter/wonderpush_flutter.dart';

bool get isAndroid =>
    foundation.defaultTargetPlatform == TargetPlatform.android;

bool get isWeb => foundation.kIsWeb;

class AppointementArg {
  int isforDrawer;

  AppointementArg({this.isforDrawer});
}

class AppointmentScreen extends StatefulWidget {
  final AppointementArg appointementArg;

  AppointmentScreen({this.appointementArg});

  @override
  _AppointmentScreenState createState() => _AppointmentScreenState();
}

class _AppointmentScreenState extends State<AppointmentScreen> {
  String _tokenUser;
  String _email;
  String _fullName;
  ScrollController _scrollController = new ScrollController();
  int currentPage = 1;
  int totalOfPage;
  bool isRefreshList = false;
  bool _isLoading = false;
  String _authorizationToke;
  String _installationIdKey;

  bool _notification = true;

  String _rdvDate, _doctorRdv;
  static const String PLAY_STORE_APP_ID = "fr.logicrdv.logicrdv";

  final _scaffoldKey = GlobalKey<ScaffoldState>();

  List<AllAppoinmentResponse> appointments = [];

  Future<String> getInstalationIdKey() async {
    final prefs = await SharedPreferences.getInstance();
    _installationIdKey = prefs.getString(PreferenceKey.InstallationIdKey);
    print("InstallationIdHome: $_installationIdKey");

    return _installationIdKey;
  }

  void writeIsSubscribeInMemory(String value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(PreferenceKey.isSubscribe, value);
  }

  @override
  void initState() {
    tz.initializeTimeZones();
    getInstalationIdKey();
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
          notification: _notification,
          page: '0',
          email: _email,
          fullNme: _fullName,
        ),
      ),
      appBar: AdaptativeAppBar(
        title: 'Mes rendez-vous',
        leading: Material(
          color: Colors.transparent,
          child: IconButton(
            icon: Icon(Icons.search, color: Colors.white),
            splashRadius: 20,
            onPressed: () {
              Navigator.of(context).pushNamed(RouteGenerator.searchDoctorInApp);
            },
          ),
        ),
        actions: [
          IconButton(
            icon: isAndroid || isWeb
                ? const Icon(
                    MdiIcons.accountCircle,
                    color: Colors.white,
                  )
                : const Icon(
                    CupertinoIcons.person_alt_circle_fill,
                    color: Colors.white,
                  ),
            splashRadius: 20,
            onPressed: () => _scaffoldKey.currentState.openEndDrawer(),
          ),
        ],
      ),
      body: MultiBlocListener(
        listeners: [
          BlocListener<SharedPreferenceBloc, SharedPreferenceState>(
              listener: (context, state) {
                print(state);
            if (state is SharedPreferenceReadObjectState) {
              setState(() {
                getVersionApp(context: context);
                appointments.clear();
                _tokenUser = state.sharePreferenceObject.token;
                _email = state.sharePreferenceObject.email;
                _fullName = state.sharePreferenceObject.firstName +
                    " " +
                    state.sharePreferenceObject.lastName;

                isSubscribe(
                    tokenuser: _tokenUser,
                    installationkey: _installationIdKey,
                    context: context);
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
          BlocListener<SubscribeBloc, SubscribeState>(
              listener: (context, state) {
            if (state is SubscribeStateLoadingSuccess) {
              setState(() {
                _notification = true;
                WonderPush.subscribeToNotifications();
                writeIsSubscribeInMemory("1");
                flushBarSuccess(state.subscribeResponse.message, context);
                Navigator.pop(context);
              });
            } else if (state is UnSubscribeStateLoadingSuccess) {
              setState(() {
                _notification = false;
                writeIsSubscribeInMemory("0");
                flushBarSuccess(state.subscribeResponse.message, context);
              });
            } else if (state is IsSubscribeStateLoadingSuccess) {
              setState(() {
                writeIsSubscribeInMemory(
                    state.verifyNotifSubscribtion.data.issubscribed);
                if (state.verifyNotifSubscribtion.data.issubscribed == "0") {
                  _notification = false;
                  customConfirmAlert(
                    context: context,
                    alertType: AlertType.info,
                    content: const Text(
                      "Voulez-vous activer le service de notification ?",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    title: "",
                    onYesAction: () {
                      subscribe(
                        context: context,
                        installationkey: _installationIdKey,
                        tokenuser: _tokenUser,
                      );
                    },
                  );
                } else {
                  _notification = true;
                }
              });
            } else if (state is SubscribeStateLoadingFailure) {
              flushBarError(state.error, context);
            }
          }),
          BlocListener<VersionBloc, VersionState>(listener: (context, state) {
            if (state is VersionLoadingSuccess) {
              if (state.response.data.version.android !=
                  AppVersion.CURRENT_VERSION) {
                customConfirmAlert(
                  context: context,
                  content: const Text(
                    "voulez-vous telecharger ?",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  title:
                      "La version ${state.response.data.version.android} est disponible vous pouvez télécharger.",
                  onYesAction: () {
                    LaunchReview.launch(androidAppId: PLAY_STORE_APP_ID);
                  },
                );
              }
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
                  ),
                );
              } else {
                flushBarError(state.error, context);
              }
              _isLoading = false;
            }
          }),
          BlocListener<GenerateAndCheckTokenBloc, GenerateAndCheckTokenState>(
              listener: (context, state) {
            if (state is GenerateTokenStateLoadingSuccess) {
              BlocProvider.of<SharedPreferenceBloc>(context)
                ..add(SetSharedPreferenceTokenAuthorization(
                    tokenAuthorizationKey: PreferenceKey.tokenAuthorizationKey,
                    tokenAuthorization: state.getToken.data.authorization
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
                                                  },
                                                );
                                              },
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
                            child: const Center(
                              child: CircularProgressIndicator(),
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
