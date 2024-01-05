import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart' as foundation;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:logic_rdv_v0/src/core/bloc/bloc_of_shapreference/shared_preference.dart';
import 'package:logic_rdv_v0/src/core/bloc/navigation/navigation_bloc.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/doctor_details/bloc/doctor_details.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/doctor_details/doctor_details_function/get_doctor_details_function.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/subcribe_notification/bloc/subcribe.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/subcribe_notification/repository/subscribe_repository.dart';
import 'package:logic_rdv_v0/src/core/constants/constants.dart';
import 'package:logic_rdv_v0/src/core/models/doctor_details_model/search_doctor_details_response.dart';
import 'package:logic_rdv_v0/src/core/preference_key.dart';
import 'package:logic_rdv_v0/src/ui/dialog_alert/custom_alert.dart';
import 'package:logic_rdv_v0/src/ui/screens/rdv_type/rdv_type.dart';
import 'package:logic_rdv_v0/src/ui/screens/search_doctor_around/search_doctor_around_screen.dart';
import 'package:logic_rdv_v0/src/ui/shared/AdaptativeIndicator.dart';
import 'package:logic_rdv_v0/src/ui/shared/adaptative_appbar.dart';
import 'package:logic_rdv_v0/src/ui/shared/buttons/default_elevated_button.dart';
import 'package:logic_rdv_v0/src/ui/shared/my_drawer.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:url_launcher/url_launcher.dart';
import '../shared/started_drawer.dart';
import '../../common.dart';

bool get isAndroid =>
    foundation.defaultTargetPlatform == TargetPlatform.android;

bool get isWeb => foundation.kIsWeb;

class GetDoctorIdPageArguments implements PagesArgumentType {
  final String id;
  final String tokenAppointment;
  final String tokenDoctor;

  GetDoctorIdPageArguments(
      {required this.id, required this.tokenAppointment, required this.tokenDoctor});

  @override
  getArguments() {
    return this;
  }
}

class DoctorProfileScreen extends StatefulWidget {
  final GetDoctorIdPageArguments arguments;

  const DoctorProfileScreen({required this.arguments});

  @override
  _DoctorProfileScreenState createState() => _DoctorProfileScreenState();
}

class _DoctorProfileScreenState extends State<DoctorProfileScreen> {
  late SearchDoctorDetailsResponse _searchDoctorDetailsResponse;
  List<Chapters> _chapter = [];
  bool _isLoadingData = false;
  late String _tokenUser;

  @override
  void initState() {
    getDoctorDetails(context: context, id: widget.arguments.id);
    BlocProvider.of<SharedPreferenceBloc>(context)
      ..add(GetSharedPreferenceObject(objectKey: PreferenceKey.objectKey));
    super.initState();
  }

  final _scaffoldKey = GlobalKey<ScaffoldState>();
  late String _email;
  late String _fullName;

  void _openWhatsApp(
    String phone,
    String message,
  ) async {
    String url() {
      if (isAndroid || isWeb) {
        return "whatsapp://send?text=$message";
      } else {
        return "whatsapp://send?text=$message";
      }
    }

    if (await canLaunch(url())) {
      await launch(url());
    } else {
      throw 'Could not launch ${url()}';
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

  void _openGoogleMapApp(double lat, double lng) async {
    String googleUrl =
        'https://www.google.com/maps/search/?api=1&query=$lat,$lng';
    if (await canLaunch(googleUrl)) {
      await launch(googleUrl);
    } else {
      throw 'Could not open the map.';
    }
  }

  Future<void> _makeCall(
    String phone,
  ) async {
    await FlutterPhoneDirectCaller.callNumber(phone);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      endDrawer: _tokenUser == null
          ? StartedDrawer()
          : MultiBlocProvider(
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
            ),
      appBar: AdaptativeAppBar(
        title: 'Détail du médecin',
        leading: DefaultBackButton(),
        actions: [
          _tokenUser == null
              ? IconButton(
                  icon: isAndroid || isWeb
                      ?  Icon(
                          MdiIcons.menu,
                          color: Color.fromARGB(255, 255, 255, 255),
                        )
                      :  Icon(
                          MdiIcons.menu,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                  splashRadius: 20,
                  onPressed: () => _scaffoldKey.currentState!.openEndDrawer(),
                )
              : Visibility(
                  visible: _tokenUser != null,
                  child: IconButton(
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
                ),
        ],
      ),
      body: MultiBlocListener(
        listeners: [
          BlocListener<DoctorDetailsBloc, DoctorDetailsState>(
              listener: (context, state) {
            if (state is DoctorDetailsLoadingSuccess) {
              setState(() {
                _isLoadingData = true;
                _searchDoctorDetailsResponse = state.response;
                _chapter.addAll(state.response.data.chapters.toList());
              });
            } else if (state is DoctorDetailsFailure) {
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
                  alertType: AlertType.error,
                  context: context,
                  content: Container(
                    child: Text(
                      state.error,
                      textAlign: TextAlign.center,
                    ),
                  ), title: '', 
                  action: () {  }, 
                  buttonLabel: '', 
                  willPop: null,
                );
              }
            }
          }),
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
        ],
        child: BlocBuilder<DoctorDetailsBloc, DoctorDetailsState>(
            builder: (context, state) {
          return _isLoadingData
              ? SafeArea(
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                    decoration: const BoxDecoration(
                      color: const Color(0xFFeff4fb),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      ),
                    ),
                    child: SingleChildScrollView(
                      primary: true,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            if (_searchDoctorDetailsResponse
                                    .data.appointment.token.length !=
                                0) ...[
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 16),
                                child: DefaultElevatedButton(
                                  textFieldHeight: 50,
                                  text: 'Prendre rendez-vous'.toUpperCase(),
                                  onPressed: () {
                                    gotRdvTypeToTakeAppointment(context);
                                  },
                                ),
                              ),
                            ],
                            const SizedBox(height: 10),
                            Card(
                              elevation: 4,
                              shadowColor: Colors.white70,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Container(
                                padding: const EdgeInsets.all(16),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                              top: 0,
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Material(
                                                  elevation: 4,
                                                  color: Colors.transparent,
                                                  shadowColor:
                                                      AppColors.primaryColor,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30),
                                                  ),
                                                  child: CircleAvatar(
                                                    radius: 30,
                                                    backgroundImage: AssetImage(
                                                      'assets/images/medecin.png',
                                                    ),
                                                    backgroundColor:
                                                        Colors.white,
                                                  ),
                                                ),
                                                const SizedBox(width: 12),
                                                Expanded(
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      new RichText(
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        softWrap: false,
                                                        maxLines: 1,
                                                        text: new TextSpan(
                                                          text:
                                                              _searchDoctorDetailsResponse
                                                                  .data
                                                                  .civility,
                                                          style: TextStyle(
                                                            color: AppColors
                                                                .secondaryColor,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontSize: 16,
                                                          ),
                                                          children: <TextSpan>[
                                                            new TextSpan(
                                                              text: " " +
                                                                  _searchDoctorDetailsResponse
                                                                      .data.nom,
                                                              style: TextStyle(
                                                                color: AppColors
                                                                    .secondaryColor,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                fontSize: 16,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      const SizedBox(height: 2),
                                                      Text(
                                                        _searchDoctorDetailsResponse
                                                            .data.category,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        style: TextStyle(
                                                          color: AppColors
                                                              .primaryColor,
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          fontSize: 14,
                                                        ),
                                                      ),
                                                      const SizedBox(height: 2),
                                                      Text(
                                                        _searchDoctorDetailsResponse
                                                            .data.address
                                                            .toUpperCase(),
                                                        softWrap: false,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        style: TextStyle(
                                                          color: AppColors
                                                              .primaryColor,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontSize: 12,
                                                        ),
                                                      ),
                                                      const SizedBox(height: 4),
                                                      Text(
                                                        _searchDoctorDetailsResponse
                                                                .data.zip +
                                                            " " +
                                                            _searchDoctorDetailsResponse
                                                                .data.city,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        style: TextStyle(
                                                          color: AppColors
                                                              .primaryColor,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontSize: 12,
                                                        ),
                                                      ),
                                                      const SizedBox(height: 4),
                                                      (_searchDoctorDetailsResponse
                                                                      .data
                                                                      .kmDiff ==
                                                                  '' ||
                                                              _searchDoctorDetailsResponse
                                                                      .data
                                                                      .kmDiff ==
                                                                  null)
                                                          ? const SizedBox
                                                              .shrink()
                                                          : Text(
                                                              'à ' +
                                                                  _searchDoctorDetailsResponse
                                                                      .data
                                                                      .kmDiff! +
                                                                  ' Km',
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              style: TextStyle(
                                                                color: AppColors
                                                                    .primaryColor,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                fontSize: 12,
                                                              ),
                                                            ),
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            _searchDoctorDetailsResponse
                                                                .data.tel,
                                                            style: TextStyle(
                                                              color: AppColors
                                                                  .primaryColor,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize: 13.5,
                                                            ),
                                                          ),
                                                          Container(
                                                            height: 25,
                                                            width: 25,
                                                            margin:
                                                                const EdgeInsets
                                                                    .only(
                                                                    left: 8),
                                                            decoration:
                                                                BoxDecoration(
                                                              color: AppColors
                                                                  .primaryColor,
                                                              shape: BoxShape
                                                                  .circle,
                                                            ),
                                                            child: IconButton(
                                                              icon: const Icon(
                                                                Icons.call,
                                                                color: AppColors
                                                                    .whiteColor,
                                                                size: 16,
                                                              ),
                                                              splashRadius: 16,
                                                              padding:
                                                                  EdgeInsets
                                                                      .zero,
                                                              onPressed: () async =>
                                                                  await _makeCall(
                                                                      _searchDoctorDetailsResponse
                                                                          .data
                                                                          .telnospace),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        const SizedBox(width: 4),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            SocialIcon(
                                              imageUrl:
                                                  'assets/images/whatsapp.svg',
                                              onPressed: () => _openWhatsApp(
                                                  '${_searchDoctorDetailsResponse.data.telnospace}',
                                                  '${_searchDoctorDetailsResponse.data.nom} : ${_searchDoctorDetailsResponse.data.address}, ${_searchDoctorDetailsResponse.data.city}. Position : https://maps.google.com/?q=${_searchDoctorDetailsResponse.data.lat},${_searchDoctorDetailsResponse.data.lng}'),
                                            ),
                                            SocialIcon(
                                              imageUrl:
                                                  'assets/images/waze.svg',
                                              onPressed: () => _sendWazeCoordonate(
                                                  '${_searchDoctorDetailsResponse.data.lat}',
                                                  '${_searchDoctorDetailsResponse.data.lng}'),
                                            ),
                                            SocialIcon(
                                              imageUrl:
                                                  'assets/images/google-maps.svg',
                                              onPressed: () => _openGoogleMapApp(
                                                  double.parse(
                                                      _searchDoctorDetailsResponse
                                                          .data.lat),
                                                  double.parse(
                                                      _searchDoctorDetailsResponse
                                                          .data.lng)),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(height: 16),
                            Container(
                              height: 48,
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 18),
                              child: DefaultElevatedButton(
                                text: 'Chercher autour'.toUpperCase(),
                                onPressed: () {
                                  Navigator.pushNamed(
                                    context,
                                    RouteGenerator.searchDoctorAround,
                                    arguments:
                                        SearchDoctorAroundResultPageArguments(
                                      categoryId:
                                          _searchDoctorDetailsResponse.data.id,
                                      city: _searchDoctorDetailsResponse
                                          .data.city,
                                      cityId: _searchDoctorDetailsResponse
                                          .data.idCity,
                                      cityOrOther: _searchDoctorDetailsResponse
                                          .data.city,
                                      nameOrSpeciality:
                                          _searchDoctorDetailsResponse.data.nom,
                                    ),
                                  );
                                }, textFieldHeight: 0.0,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Card(
                              elevation: 4,
                              shadowColor: Colors.white70,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 14,
                                      left: 14,
                                    ),
                                    child: const Text(
                                      'Caractéristiques & Horaires',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                  ListView.builder(
                                    shrinkWrap: true,
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    padding: const EdgeInsets.all(14),
                                    itemCount: _chapter.length,
                                    itemBuilder: (context, index) {
                                      return _ChaptersInfos(
                                        title: _chapter[index].title,
                                        description:
                                            _chapter[index].description,
                                      );
                                    },
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 8),
                            Card(
                              elevation: 4,
                              shadowColor: Colors.white70,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Container(
                                padding: const EdgeInsets.all(16),
                                child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    const Text(
                                      'Spécialité',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                      ),
                                    ),
                                    const SizedBox(height: 16),
                                    Container(
                                      padding: const EdgeInsets.all(16),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        color:
                                            AppColors.colorScaffoldBackground,
                                      ),
                                      child: Text(
                                        _searchDoctorDetailsResponse
                                            .data.category,
                                        style: const TextStyle(
                                          fontSize: 16.5,
                                          color: Color(0xFF304170),
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(height: 24),
                            if (_searchDoctorDetailsResponse
                                    .data.appointment.token.length !=
                                0) ...[
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 16),
                                child: DefaultElevatedButton(
                                  textFieldHeight: 50,
                                  text: 'Prendre rendez-vous'.toUpperCase(),
                                  onPressed: () {
                                    gotRdvTypeToTakeAppointment(context);
                                  },
                                ),
                              ),
                            ],
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              : const Center(
                  child: AdaptativeIndicator(),
                );
        }),
      ),
    );
  }

  void gotRdvTypeToTakeAppointment(BuildContext context) {
    Navigator.popAndPushNamed(context, RouteGenerator.rdvType,
        arguments: GetRdvTypePageArguments(
            tel: _searchDoctorDetailsResponse.data.tel,
            idDoctor: _searchDoctorDetailsResponse.data.id,
            doctorName: _searchDoctorDetailsResponse.data.nom +
                " " +
                _searchDoctorDetailsResponse.data.prenom!,
            tokenAppointment:
                _searchDoctorDetailsResponse.data.appointment.token != ""
                    ? _searchDoctorDetailsResponse.data.appointment.token
                    : widget.arguments.tokenAppointment));
  }
}

class _DoctorInfo extends StatelessWidget {
  final String info;
  final IconData icon;
  final TextStyle textStyle;

  const _DoctorInfo({
    super.key,
    required this.info,
    required this.icon,
    required this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: Colors.black54,
          ),
          const SizedBox(width: 8),
          Text(
            info ?? '--',
            style: textStyle,
          ),
        ],
      ),
    );
  }
}

class _ChaptersInfos extends StatelessWidget {
  final String title;
  final String description;

  const _ChaptersInfos({required this.title,required this.description});

  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.symmetric(horizontal: 05, vertical: 05),
          height: 40,
          width: double.infinity,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: AppColors.colorScaffoldBackground,
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: Text(
            title.toUpperCase(),
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 12, bottom: 4),
          child: Text(
            description ?? '--',
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}
