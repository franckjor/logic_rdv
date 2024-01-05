import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart' as foundation;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logic_rdv_v0/src/common.dart';
import 'package:logic_rdv_v0/src/core/bloc/bloc_of_shapreference/shared_preference.dart';
import 'package:logic_rdv_v0/src/core/bloc/navigation/navigation_bloc.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/appointment/appointment_function/create_appointment_function.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/appointment/bloc/create_appointment_bloc/create_appointement.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/generate_and_check_token/bloc/generate_and_check_token.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/subcribe_notification/bloc/subcribe.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/subcribe_notification/repository/subscribe_repository.dart';
import 'package:logic_rdv_v0/src/core/constants/constants.dart';
import 'package:logic_rdv_v0/src/core/constants/type_rdv_state.dart';
import 'package:logic_rdv_v0/src/core/models/appointment_model/create_appointment_response.dart';
import 'package:logic_rdv_v0/src/core/preference_key.dart';
import 'package:logic_rdv_v0/src/ui/alert_widgets/custom_snackbar.dart';
import 'package:logic_rdv_v0/src/ui/dialog_alert/custom_alert.dart';
import 'package:logic_rdv_v0/src/ui/screens/rdv_select_day_and_time/rdv_select_day_and_time_screen.dart';
import 'package:logic_rdv_v0/src/ui/screens/rdv_type/rdv_type_item.dart';
import 'package:logic_rdv_v0/src/ui/shared/AdaptativeIndicator.dart';
import 'package:logic_rdv_v0/src/ui/shared/adaptative_appbar.dart';
import 'package:logic_rdv_v0/src/ui/shared/my_drawer.dart';
import 'package:logic_rdv_v0/src/ui/shared/started_drawer.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

extension HexColor on Color {
  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }

  String toHex({bool leadingHashSign = true}) => '${leadingHashSign ? '#' : ''}'
      '${alpha.toRadixString(16).padLeft(2, '0')}'
      '${red.toRadixString(16).padLeft(2, '0')}'
      '${green.toRadixString(16).padLeft(2, '0')}'
      '${blue.toRadixString(16).padLeft(2, '0')}';
}

bool get isAndroid =>
    foundation.defaultTargetPlatform == TargetPlatform.android;

bool get isWeb => foundation.kIsWeb;

class GetRdvTypePageArguments implements PagesArgumentType {
  final String tokenAppointment;
  final String idDoctor;
  final String tel;
  final String doctorName;

  GetRdvTypePageArguments({
    required this.tokenAppointment,
    required this.idDoctor,
    required this.tel,
    required this.doctorName,
  });

  @override
  getArguments() {
    return this;
  }
}

class RdvType extends StatefulWidget {
  final GetRdvTypePageArguments arguments;

  RdvType({required this.arguments});

  @override
  _RdvTypeState createState() => _RdvTypeState();
}

class _RdvTypeState extends State<RdvType> {
  late String _tokenUser;
  List<AppointmentTypeResponse> _appointmentType = [];
  late String _session;
  late String _email;
  late String _fullName;
  late String _typState;

  bool _isLoading = false;

  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    BlocProvider.of<SharedPreferenceBloc>(context)
      ..add(GetSharedPreferenceObject(objectKey: PreferenceKey.objectKey));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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
      appBar: AdaptativeAppBar(
        leading: DefaultBackButton(
            onPressed: () => _tokenUser != null
                ? Navigator.pushNamedAndRemoveUntil(
                    context, RouteGenerator.appointmentScreen, (route) => false)
                : Navigator.pop(context)),
        title: 'Motif du Rendez-vous',
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
      ),
      body: MultiBlocListener(
        listeners: [
          BlocListener<SharedPreferenceBloc, SharedPreferenceState>(
              listener: (context, state) {
            if (state is SharedPreferenceReadObjectState) {
              setState(() {
                _tokenUser = state.sharePreferenceObject.token;
                _email = state.sharePreferenceObject.email;
                _fullName = state.sharePreferenceObject.firstName +
                    " " +
                    state.sharePreferenceObject.lastName;
                rdvTypeState(
                  context: context,
                  tokenAppointment: widget.arguments.tokenAppointment,
                  tokenUser: _tokenUser,
                  action: '',
                  data: '',
                  session: '',
                  week: '',
                );
              });
            } else if (state is SharedSessionWriteLoadingSuccess) {
              print('session is writed: ${state.sessionWrite}');
            } else if (state is SharedPreferenceLoadingFailure) {
              rdvTypeState(
                context: context,
                tokenAppointment: widget.arguments.tokenAppointment,
                tokenUser: _tokenUser,
                action: '',
                data: '',
                session: '',
                week: '',
              );
            }
          }),
          BlocListener<CreateAppointmentBloc, CreateAppointmentState>(
              listener: (context, state) {
            if (state is RdvTypeStateLoadingSuccess) {
              setState(() {
                if (state.response.type == TypeRdvState.apptcreneaux) {
                  Navigator.pushReplacementNamed(
                      context, RouteGenerator.rdvSelectDayAndTimeScreen,
                      arguments: GetRdvTimeAndDayPageArguments(
                          session: _session,
                          doctorName: widget.arguments.doctorName,
                          idDoctor: widget.arguments.idDoctor,
                          tel: widget.arguments.tel,
                          rdvType: "",
                          data: "",
                          tokenAppointment: widget.arguments.tokenAppointment,
                          tokenUser: _tokenUser,
                          action: ""));
                } else {
                  getAppointmentType(
                      context: context,
                      tokenUser: _tokenUser,
                      tokenAppointment: widget.arguments.tokenAppointment);
                }
              });
            } else if (state is TypeOfAppointmentLoadingSuccess) {
              setState(() {
                _isLoading = true;
                _appointmentType.addAll(state.response.data!.data!);

                _session = state.response.data!.session!;
                BlocProvider.of<SharedPreferenceBloc>(context)
                  ..add(SetSharedPreferenceSession(
                      sessionKey: PreferenceKey.sessionKey,
                      session: state.response.data!.session!));
              });
            } else if (state is CreateAppointmentFailure) {
              _isLoading = true;
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
                  ), title: '', buttonLabel: '',
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
                customAlert(
                    alertType: AlertType.info,
                    context: context,
                    content: Container(
                      child: Text(
                        state.error,
                        textAlign: TextAlign.center,
                      ),
                    ), title: '', buttonLabel: '', 
                    action: () {  }, willPop: null);
              }
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
        child: BlocBuilder<CreateAppointmentBloc, CreateAppointmentState>(
            builder: (context, state) {
          return SafeArea(
            child: _isLoading
                ? _appointmentType.length > 0
                    ? ListView.builder(
                        padding: const EdgeInsets.fromLTRB(12, 16, 12, 16),
                        shrinkWrap: true,
                        itemCount: _appointmentType.length,
                        itemBuilder: (context, index) {
                          return RdvTypeItem(
                            color:
                                HexColor.fromHex(_appointmentType[index].color!),
                            lieuRdv: _appointmentType[index].labelplace!,
                            motifRdv: _appointmentType[index].description!,
                            onTapHandler: () => Navigator.pushNamed(context,
                                    RouteGenerator.rdvSelectDayAndTimeScreen,
                                    arguments: GetRdvTimeAndDayPageArguments(
                                        session: _session,
                                        doctorName: widget.arguments.doctorName,
                                        idDoctor: widget.arguments.idDoctor,
                                        tel: widget.arguments.tel,
                                        rdvType:
                                            _appointmentType[index].description!,
                                        data:
                                            _appointmentType[index].onclickData!,
                                        tokenAppointment:
                                            widget.arguments.tokenAppointment,
                                        tokenUser: _tokenUser,
                                        action: _appointmentType[index]
                                            .onclickAction!))
                                .then((value) {
                              setState(() {
                                _appointmentType.clear();
                                BlocProvider.of<SharedPreferenceBloc>(context)
                                  ..add(GetSharedPreferenceObject(
                                      objectKey: PreferenceKey.objectKey));
                              });
                            }),
                          );
                        })
                    : const Center(
                        child: Text("Pas de rendez-vous disponible."),
                      )
                : const Center(
                    child: AdaptativeIndicator(),
                  ),
          );
        }),
      ),
    );
  }
}
