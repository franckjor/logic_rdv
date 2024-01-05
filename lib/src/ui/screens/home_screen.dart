import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart' as foundation;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:logic_rdv_v0/src/common.dart';
import 'package:logic_rdv_v0/src/core/bloc/bloc_of_shapreference/shared_preference.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/add_doctor/add_doctor_function/add_doctor_function.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/add_doctor/bloc/add_doctor.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/fixer_rdv_doctor/bloc/fixer_rdv_doctor.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/fixer_rdv_doctor/fixer_rdv_doctor_response_function/get_fixer_rdv_doctor.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/generate_and_check_token/bloc/generate_and_check_token.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/remove_doctor/bloc/remove_doctor.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/remove_doctor/remove_doctor_function/remove_doctor.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/subcribe_notification/bloc/subcribe.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/subcribe_notification/repository/subscribe_repository.dart';
import 'package:logic_rdv_v0/src/core/constants/constants.dart';
import 'package:logic_rdv_v0/src/core/models/search_name_model/search_name_response.dart';
import 'package:logic_rdv_v0/src/core/preference_key.dart';
import 'package:logic_rdv_v0/src/ui/alert_widgets/custom_snackbar.dart';
import 'package:logic_rdv_v0/src/ui/alert_widgets/progress_dialog.dart';
import 'package:logic_rdv_v0/src/ui/dialog_alert/custom_alert.dart';
import 'package:logic_rdv_v0/src/ui/dialog_alert/custom_confirm_alert.dart';
import 'package:logic_rdv_v0/src/ui/screens/rdv_type/rdv_type.dart';
import 'package:logic_rdv_v0/src/ui/shared/AdaptativeIndicator.dart';
import 'package:logic_rdv_v0/src/ui/shared/adaptative_appbar.dart';
import 'package:logic_rdv_v0/src/ui/shared/buttons/default_elevated_button.dart';
import 'package:logic_rdv_v0/src/ui/shared/empty_apointment.dart';
import 'package:logic_rdv_v0/src/ui/shared/my_drawer.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';

// 70 14 87 15

bool get isAndroid =>
    foundation.defaultTargetPlatform == TargetPlatform.android;

bool get isWeb => foundation.kIsWeb;

class HomeScreen extends StatefulWidget {
  const HomeScreen();

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late String _tokenUser;
  late String _email;
  late String _fullName;

  final _scaffoldKey = GlobalKey<ScaffoldState>();

  List<ObjectNameOfSearch> activeEtabs = [];
  List<ObjectNameOfSearch> sameCabinetEtabs = [];
  late List<ObjectNameOfSearch> _activeEtabsAndSameCabinetEtabs = [];
  late ObjectNameOfSearch _sameCabinetEtabsObject;

  bool isLoading = false;

  void _sendWazeCoordonate(
    String lat,
    String lng,
  ) async {
    if (isAndroid || isWeb) {
      final uri = "https://waze.com/ul?ll=$lat,$lng";
      await launch(uri);
    } else if (Platform.isIOS) {
      final uri = "https://waze.com/ul?ll=$lat,$lng";
      await launch(uri);
    }
  }

  Future<String> getInstalationIdKey() async{
    final prefs = await SharedPreferences.getInstance();
    final String instalationKey = prefs.getString('InstallationIdKey')!;
    print("InstallationIdHome: $instalationKey");
    return instalationKey;
  }

  @override
  void initState() {
    getInstalationIdKey();
    BlocProvider.of<SharedPreferenceBloc>(context)
      ..add(GetSharedPreferenceObject(objectKey: PreferenceKey.objectKey));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ProgressDialog _progressDialog =
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
          page: '1',
          email: _email,
          fullNme: _fullName, notification: false,
        ),
      ),
      appBar: AdaptativeAppBar(
        leading: DefaultBackButton(
          onPressed: () => Navigator.pushReplacementNamed(
              context, RouteGenerator.appointmentScreen),
        ),
        title: 'Fixez rendez-vous',
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
                _tokenUser = state.sharePreferenceObject.token;
                _email = state.sharePreferenceObject.email;
                _fullName = state.sharePreferenceObject.firstName +
                    " " +
                    state.sharePreferenceObject.lastName;
                getFixerRdvDoctorList(context: context, tokenUser: _tokenUser);
              });
            }
          }),
         
          BlocListener<AddDoctorBloc, AddDoctorState>(
              listener: (context, state) {
            if (state is AddDoctorLoadingSuccess) {
              setState(() {
                _progressDialog.hide();
                isLoading = false;
                _activeEtabsAndSameCabinetEtabs.clear();
                getFixerRdvDoctorList(context: context, tokenUser: _tokenUser);
                customAlert(
                  alertType: AlertType.success,
                  context: context,
                  content: Text(
                    'Ce Docteur fait parti de votre liste de medecin et '
                    'peux maintenant faire des consultations et avoir des patients.',
                    textAlign: TextAlign.center,
                  ), title: '', 
                  buttonLabel: '', 
                  action: () {  }, willPop: null,
                );
              });
            } else if (state is AddDoctorFailure) {
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
                  ), title: '', 
                  buttonLabel: '', 
                  action: () {  }, willPop: null,
                );
              }
            }
          }),
          BlocListener<FixerRdvDoctorBloc, FixerRdvDoctorState>(
              listener: (context, state) {
            if (state is FixerRdvDoctorLoadingSuccess) {
              setState(() {
                isLoading = true;
                activeEtabs.clear();
                sameCabinetEtabs.clear();
                activeEtabs.addAll(state.response.data.activeEtabs);
                _activeEtabsAndSameCabinetEtabs.addAll(activeEtabs);

                sameCabinetEtabs.addAll(state.response.data.sameCabinetEtabs);
                _activeEtabsAndSameCabinetEtabs.addAll(sameCabinetEtabs);
              });
            } else if (state is FixerRdvDoctorFailure) {
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
                  ), title: '', 
                  buttonLabel: '', 
                  action: () {  }, 
                  willPop: null,
                );
              }
            }
          }),
          BlocListener<RemoveDoctorBloc, RemoveDoctorState>(
              listener: (context, state) {
            if (state is RemoveDoctorLoadingSuccess) {
              isLoading = false;
              _activeEtabsAndSameCabinetEtabs.clear();
              flushBarSuccess(state.response.message, context);
              getFixerRdvDoctorList(context: context, tokenUser: _tokenUser);
            } else if (state is RemoveDoctorFailure) {
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
                  ), title: '', 
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
                customAlert(
                  alertType: AlertType.info,
                  context: context,
                  content: Container(
                    child: Text(
                      state.error,
                      textAlign: TextAlign.center,
                    ),
                  ), title: '', 
                  buttonLabel: '', 
                  action: () {  }, 
                  willPop: null,
                );
              }
            }
          }),
          BlocListener<GenerateAndCheckTokenBloc, GenerateAndCheckTokenState>(
              listener: (context, state) {
            if (state is GenerateTokenStateLoadingSuccess) {
              BlocProvider.of<SharedPreferenceBloc>(context)
                ..add(
                  SetSharedPreferenceTokenAuthorization(
                    tokenAuthorizationKey: PreferenceKey.tokenAuthorizationKey,
                    tokenAuthorization: state.getToken.data.authorization!
                        .replaceAll("X-LOGICRDV-AUTH:", ""),
                  ),
                );
            } else if (state is GenerateAndCheckTokenStateLoadingFailure) {
              flushBarError(state.error, context);
            }
          }),
        ],
        child: BlocBuilder<FixerRdvDoctorBloc, FixerRdvDoctorState>(
          builder: (context, state) {
            return isLoading
                ? _activeEtabsAndSameCabinetEtabs.length > 0
                    ? ListView.builder(
                        itemCount: _activeEtabsAndSameCabinetEtabs.length,
                        padding: EdgeInsets.only(
                          top: 16,
                          left: 16,
                          right: 16,
                          bottom: 16,
                        ),
                        itemBuilder: (context, i) => _AppointmentItem(
                          length: _activeEtabsAndSameCabinetEtabs.length,
                          objectNameOfSearch:
                              _activeEtabsAndSameCabinetEtabs[i],
                          tokenUser: _tokenUser,
                          onAddHandler: () {
                            _progressDialog
                                .setMessage('Activation de votre docteur....');
                            _progressDialog.show();
                            addDoctor(
                              context: context,
                              id: _activeEtabsAndSameCabinetEtabs[i].id,
                              phone: _activeEtabsAndSameCabinetEtabs[i].tel!,
                              tokenUser: _tokenUser,
                            );
                          }, addPaPressed: null, cabinetId: '',
                        ),
                      )
                    : EmptyApointmentWidget()
                : Container(
                    child: Center(
                      child: AdaptativeIndicator(),
                    ),
                  );
          },
        ),
      ),
    );
  }
}

class _AppointmentItem extends StatefulWidget {
  final ObjectNameOfSearch objectNameOfSearch;
  final String cabinetId;
  final String tokenUser;
  final Function()? onAddHandler;
  final Function()? addPaPressed;
  final int length;

  _AppointmentItem({
    required this.objectNameOfSearch,
    required this.tokenUser,
    required this.onAddHandler,
    required this.length,
    required this.addPaPressed,
    required this.cabinetId,
  });

  @override
  __AppointmentItemState createState() => __AppointmentItemState();
}

class __AppointmentItemState extends State<_AppointmentItem> {
  // void _openWhatsApp(
  //   String phone,
  //   String message,
  // ) async {
  //   var whatsappURl_android = "whatsapp://send?phone=" + phone + "&text=hello";
  //   var whatappURL_ios = "https://wa.me/$phone?text=${Uri.parse("hello")}";
  //   if (Platform.isIOS) {
  //     if (await canLaunch(whatappURL_ios)) {
  //       await launch(whatappURL_ios, forceSafariVC: false);
  //     } else {
  //       ScaffoldMessenger.of(context)
  //           .showSnackBar(SnackBar(content: new Text("whatsapp no installed")));
  //     }
  //   } else {
  //     if (await canLaunch(whatsappURl_android)) {
  //       await launch(whatsappURl_android);
  //     } else {
  //       ScaffoldMessenger.of(context)
  //           .showSnackBar(SnackBar(content: new Text("whatsapp no installed")));
  //     }
  //   }
  // }

  void _openGoogleMapApp(double lat, double lng) async {
    String googleUrl =
        'https://www.google.com/maps/search/?api=1&query=$lat,$lng';
    if (await canLaunch(googleUrl)) {
      await launch(googleUrl);
    } else {
      throw 'Could not open the map.';
    }
  }

  void _sendWazeCoordonate(
    String lat,
    String lng,
  ) async {
    if (isAndroid || isWeb) {
      final uri = "https://waze.com/ul?ll=$lat,$lng";
      await launch(uri);
    } else if (Platform.isIOS) {
      final uri = "https://waze.com/ul?ll=$lat,$lng";
      await launch(uri);
    }
  }

  Future<void> _makeCall(
    String phone,
  ) async {
    print('Button pressed');
    await launch("tel://$phone");
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Container(
        padding: const EdgeInsets.only(top: 16, left: 14, right: 8, bottom: 8),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Material(
                        elevation: 4,
                        color: Colors.transparent,
                        shadowColor: AppColors.primaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage(
                            'assets/images/medecin.png',
                          ),
                          backgroundColor: Colors.white,
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              text: TextSpan(
                                text: widget.objectNameOfSearch.civility,
                                style: TextStyle(
                                  color: AppColors.secondaryColor,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                ),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: widget.objectNameOfSearch.fullName,
                                    style: TextStyle(
                                      color: AppColors.secondaryColor,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 2),
                            Text(
                              widget.objectNameOfSearch.category!,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                color: AppColors.primaryColor,
                                fontWeight: FontWeight.w700,
                                fontSize: 14,
                              ),
                            ),
                            const SizedBox(height: 2),
                            Text(
                              widget.objectNameOfSearch.address!,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                color: AppColors.primaryColor,
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                              ),
                            ),
                            const SizedBox(height: 1),
                            Text(
                              '${widget.objectNameOfSearch.zip}' +
                                  " " +
                                  '${widget.objectNameOfSearch.city}',
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                color: AppColors.primaryColor,
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  widget.objectNameOfSearch.tel!,
                                  style: const TextStyle(
                                    color: AppColors.primaryColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13.5,
                                  ),
                                ),
                                Container(
                                  height: 25,
                                  width: 25,
                                  margin: const EdgeInsets.only(left: 8),
                                  decoration: BoxDecoration(
                                    color: AppColors.primaryColor,
                                    shape: BoxShape.circle,
                                  ),
                                  child: IconButton(
                                    icon: const Icon(
                                      Icons.call,
                                      color: AppColors.whiteColor,
                                      size: 16,
                                    ),
                                    splashRadius: 16,
                                    padding: EdgeInsets.zero,
                                    onPressed: () async {
                                      await FlutterPhoneDirectCaller.callNumber(
                                          widget.objectNameOfSearch.telnospace!);
                                      // try {
                                      //   _makeCall(
                                      //       widget.objectNameOfSearch.telnospace);
                                      // } catch (e) {}
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  DefaultElevatedButton(
                    text: 'Prendre RDV',
                    onPressed: () {
                      if (widget.objectNameOfSearch?.appointment?.token ==
                          null) {
                        customAlert(
                          context: context,
                          alertType: AlertType.info,
                          content: Text(
                            'Ce Docteur ne fait pas partis de vos medecins veuillez l\'ajouter.',
                            textAlign: TextAlign.center,
                          ), title: '', 
                          buttonLabel: '', 
                          action: () {  }, 
                          willPop: null,
                        );
                      } else {
                        Navigator.pushNamed(
                          context,
                          RouteGenerator.rdvType,
                          arguments: GetRdvTypePageArguments(
                            tel: widget.objectNameOfSearch.tel!,
                            idDoctor: widget.objectNameOfSearch.id,
                            doctorName: widget.objectNameOfSearch.fullName,
                            tokenAppointment:
                                widget.objectNameOfSearch.appointment.token!,
                          ),
                        );
                      }
                    },
                  ),
                ],
              ),
            ),
            Container(
              height: 140,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    icon: SvgPicture.asset(
                      'assets/images/whatsapp.svg',
                      height: 30,
                      width: 30,
                    ),
                    splashRadius: 16,
                    padding: EdgeInsets.zero,
                    constraints: BoxConstraints(),
                    onPressed: () async {
                      // _openWhatsApp(widget.objectNameOfSearch.tel, '');
                      try {
                        var whatsappUrlAndroid =
                            "whatsapp://send?text=${widget.objectNameOfSearch.fullName} : ${widget.objectNameOfSearch.address}, ${widget.objectNameOfSearch.zip} ${widget.objectNameOfSearch.city}. Position : https://maps.google.com/?q=${widget.objectNameOfSearch.lat},${widget.objectNameOfSearch.lng}";
                        var whatsappUrlIos =
                            "whatsapp://send?text=${widget.objectNameOfSearch.fullName} : ${widget.objectNameOfSearch.address}, ${widget.objectNameOfSearch.zip} ${widget.objectNameOfSearch.city}. Position : https://maps.google.com/?q=${widget.objectNameOfSearch.lat},${widget.objectNameOfSearch.lng}";
                        if (Platform.isIOS) {
                          if (await canLaunch(whatsappUrlIos)) {
                            await launch(
                              whatsappUrlIos,
                            );
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text("whatsapp not installed"),
                              ),
                            );
                          }
                        } else {
                          if (await canLaunch(whatsappUrlAndroid)) {
                            await launch(whatsappUrlAndroid);
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text("whatsapp no installed"),
                              ),
                            );
                          }
                        }
                      } catch (e) {
                        print(e);
                      }
                    },
                  ),
                  IconButton(
                    icon: SvgPicture.asset(
                      'assets/images/waze.svg',
                      height: 24,
                      width: 24,
                    ),
                    splashRadius: 16,
                    padding: EdgeInsets.zero,
                    constraints: BoxConstraints(),
                    onPressed: () {
                      _sendWazeCoordonate(widget.objectNameOfSearch.lat!,
                          widget.objectNameOfSearch.lng!);
                    },
                  ),
                  IconButton(
                    icon: SvgPicture.asset(
                      'assets/images/google-maps.svg',
                      height: 24,
                      width: 24,
                    ),
                    splashRadius: 16,
                    padding: EdgeInsets.zero,
                    constraints: BoxConstraints(),
                    onPressed: () {
                      _openGoogleMapApp(
                          double.parse(widget.objectNameOfSearch.lat!),
                          double.parse(widget.objectNameOfSearch.lng!));
                    },
                  ),
                  Visibility(
                    visible:
                        widget.objectNameOfSearch?.appointment?.token == null,
                    child: IconButton(
                      onPressed: widget.onAddHandler,
                      splashRadius: 16,
                      constraints: BoxConstraints(),
                      icon: Icon(Icons.person_add_alt_1_rounded),
                    ),
                  ),
                  Visibility(
                    visible:
                        widget.objectNameOfSearch.appointment.token != null &&
                            widget.length > 1,
                    child: IconButton(
                      icon: Icon(
                        MdiIcons.delete,
                        color: Colors.red,
                      ),
                      splashRadius: 16,
                      constraints: BoxConstraints(),
                      padding: EdgeInsets.zero,
                      onPressed: () {
                        customConfirmAlert(
                          context: context,
                          content: Container(
                            child: Text(
                              "Etes-vous sure de vouloir retirer ce médecin de votre liste de rendez-vous ?",
                              textAlign: TextAlign.center,
                            ),
                          ),
                          title: "",
                          onYesAction: () {
                            removeDoctorToList(
                              tokenUser: widget.tokenUser,
                              context: context,
                              idDoctor: widget.objectNameOfSearch.id,
                            );
                          }, 
                          alertType: null, 
                          confirmButtonLabel: '', 
                          cancelButtonLabel: '', 
                          onNoAction: () {  }, closeFunction: () {  },
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget myPopMenu() {
    return PopupMenuButton(
      onSelected: (value) {
        print('is me');
      },
      itemBuilder: (context) => [
        PopupMenuItem(
          value: 1,
          child: InkWell(
            onTap: () {
              Navigator.popAndPushNamed(context, RouteGenerator.rdvType);
            },
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(2, 2, 8, 2),
                  child: Icon(Icons.timer),
                ),
                Text('motif de votre rendez-vous'),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
