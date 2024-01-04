import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart' as foundation;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logic_rdv_v0/src/core/bloc/bloc_of_shapreference/shared_preference.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/add_doctor/add_doctor_function/add_doctor_function.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/add_doctor/bloc/add_doctor.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/fixer_rdv_doctor/bloc/fixer_rdv_doctor.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/fixer_rdv_doctor/fixer_rdv_doctor_response_function/get_fixer_rdv_doctor.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/generate_and_check_token/bloc/generate_and_check_token.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/remove_doctor/bloc/remove_doctor.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/subcribe_notification/bloc/subcribe.dart';
import 'package:logic_rdv_v0/src/core/constants/constants.dart';
import 'package:logic_rdv_v0/src/core/models/search_name_model/search_name_response.dart';
import 'package:logic_rdv_v0/src/core/preference_key.dart';
import 'package:logic_rdv_v0/src/ui/alert_widgets/custom_snackbar.dart';
import 'package:logic_rdv_v0/src/ui/alert_widgets/progress_dialog.dart';
import 'package:logic_rdv_v0/src/ui/dialog_alert/custom_alert.dart';
import 'package:logic_rdv_v0/src/ui/shared/AdaptativeIndicator.dart';
import 'package:logic_rdv_v0/src/ui/shared/adaptative_appbar.dart';
import 'package:logic_rdv_v0/src/ui/shared/empty_apointment.dart';
import 'package:logic_rdv_v0/src/ui/shared/my_drawer.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import '../../common.dart';
import '../../core/blocs_and_repository/subcribe_notification/repository/subscribe_repository.dart';

bool get isAndroid =>
    foundation.defaultTargetPlatform == TargetPlatform.android;

bool get isWeb => foundation.kIsWeb;

class PatientManagement extends StatefulWidget {
  const PatientManagement();

  @override
  _PatientManagementState createState() => _PatientManagementState();
}

class _PatientManagementState extends State<PatientManagement> {
  late String _tokenUser;
  late String _email;
  late String _fullName;

  final _scaffoldKey = GlobalKey<ScaffoldState>();

  List<ObjectNameOfSearch> activeEtabs = [];
  List<ObjectNameOfSearch> sameCabinetEtabs = [];
  List<ObjectNameOfSearch> _activeEtabsAndSameCabinetEtabs = [];
  late ObjectNameOfSearch _sameCabinetEtabsObject;

  bool isLoading = false;

  @override
  void initState() {
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
      endDrawer:MultiBlocProvider(
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
          page: '4',
          email: _email,
          fullNme: _fullName,
        ),
      ),
      appBar: AdaptativeAppBar(
        title: 'Gestion des patients',
        leading: DefaultBackButton(),
        actions: [
          IconButton(
            icon: isAndroid || isWeb
                ?  Icon(
                    MdiIcons.accountCircle,
                    color: Colors.white,
                  )
                :  Icon(
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
                    'peux maintenant faire des consultations et avoir des patients',
                    textAlign: TextAlign.center,
                  ),
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
                      "Votre compte a été désactivé. vous allez être déconnecté.",
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
                  ),
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
                customAlert(
                  alertType: AlertType.info,
                  context: context,
                  content: Container(
                    child: Text(
                      state.error,
                      textAlign: TextAlign.center,
                    ),
                  ),
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
                  ),
                );
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
                              objectNameOfSearch:
                                  _activeEtabsAndSameCabinetEtabs[i],
                              tokenUser: _tokenUser,
                              onAddHandler: () {
                                _progressDialog.setMessage(
                                    'Activation de votre docteur....');
                                _progressDialog.show();
                                addDoctor(
                                  context: context,
                                  id: _activeEtabsAndSameCabinetEtabs[i].id,
                                  phone: _activeEtabsAndSameCabinetEtabs[i].tel!,
                                  tokenUser: _tokenUser,
                                );
                              },
                            ))
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

class _AppointmentItem extends StatelessWidget {
  final ObjectNameOfSearch? objectNameOfSearch;
  final String? tokenUser;
  final Function()? onAddHandler;

  _AppointmentItem({
    this.objectNameOfSearch,
    this.tokenUser,
    this.onAddHandler,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (objectNameOfSearch?.appointment?.token == null) {
          customAlert(
            context: context,
            alertType: AlertType.info,
            content: Text(
              'Ce Docteur ne fait pas partis de vos medecins veuillez l\'ajouter.',
              textAlign: TextAlign.center,
            ),
          );
        } else {
          Navigator.of(context).pushNamed(RouteGenerator.patientListScreen,
              arguments: GetPatientPageArguments(
                  source: 'patient',
                  doctorName: objectNameOfSearch!.fullName,
                  tokenDoctor: objectNameOfSearch?.appointment?.token));
        }
      },
      child: Card(
        shadowColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Container(
          padding:
              const EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 10),
          child: Column(
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
                      radius: 25,
                      backgroundImage: AssetImage(
                        'assets/images/medecin.png',
                      ),
                      backgroundColor: Colors.white,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                            text: objectNameOfSearch!.civility,
                            style: TextStyle(
                              color: AppColors.secondaryColor,
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                text: objectNameOfSearch!.fullName,
                                style: TextStyle(
                                  color: AppColors.secondaryColor,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 3),
                        Text(
                          objectNameOfSearch!.category!,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: AppColors.primaryColor,
                            fontWeight: FontWeight.w700,
                            fontSize: 14,
                          ),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          objectNameOfSearch!.address!,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: AppColors.primaryColor,
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                          ),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          '${objectNameOfSearch!.zip}' +
                              " " +
                              '${objectNameOfSearch!.city}',
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: AppColors.primaryColor,
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          objectNameOfSearch!.tel!,
                          style: TextStyle(
                            color: AppColors.primaryColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 13.5,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: IconButton(
                      icon: Icon(
                        Icons.chevron_right,
                        color: Colors.grey.shade400,
                        size: 28,
                      ),
                      splashRadius: 20,
                      onPressed: null,
                    ),
                  ),
                ],
              ),
              // Align(
              //   alignment: Alignment.centerRight,
              //   child: IconButton(
              //     icon: Icon(
              //       Icons.chevron_right,
              //       color: Colors.grey,
              //       size: 30,
              //     ),
              //     splashRadius: 20,
              //     onPressed: () {},
              //   ),
              // ),
              // Row(
              //   children: [
              //     Spacer(),
              //     Visibility(
              //       visible: objectNameOfSearch?.appointment?.token == null,
              //       child: IconButton(
              //         onPressed: onAddHandler,
              //         icon: Icon(Icons.person_add_alt_1_rounded),
              //       ),
              //     ),
              //     IconButton(
              //       icon: Icon(
              //         Icons.chevron_right,
              //         color: Colors.red,
              //       ),
              //       splashRadius: 20,
              //       onPressed: () {},
              //     ),
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }

//   void _openWhatsApp(
//     String phone,
//     String message,
//   ) async {
//     String url() {
//       if (isAndroid || isWeb) {
//         return "https://wa.me/$phone/?text=${Uri.parse(message)}";
//       } else {
//         return "https://wa.me/$phone/?text=${Uri.parse(message)}";
//       }
//     }

//     if (await canLaunch(url())) {
//       await launch(url());
//     } else {
//       throw 'Could not launch ${url()}';
//     }
//   }

//   void _openGoogleMapApp(double lat, double lng) async {
//     String googleUrl =
//         'https://www.google.com/maps/search/?api=1&query=$lat,$lng';
//     if (await canLaunch(googleUrl)) {
//       await launch(googleUrl);
//     } else {
//       throw 'Could not open the map.';
//     }
//   }

//   Future<void> _makeCall(
//     String phone,
//   ) async {
//     print('Button pressed');
//     await launch("tel:$phone");
//   }
// }
}
