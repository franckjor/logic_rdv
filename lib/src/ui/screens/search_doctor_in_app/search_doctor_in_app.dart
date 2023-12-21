import 'dart:io';

//import 'package:geocoding/geocoding.dart';
import 'package:animations/animations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart' as foundation;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:logic_rdv_v0/src/core/bloc/bloc_of_shapreference/shared_preference.dart';
import 'package:logic_rdv_v0/src/core/bloc/navigation/navigation_bloc.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/generate_and_check_token/bloc/generate_and_check_token.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/generate_and_check_token/function/get_token.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/login/bloc/login.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/login/login_repository/login_repository.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/search_city/bloc/search.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/search_city/search_city_repository/search_city_repository.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/subcribe_notification/bloc/subcribe.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/subcribe_notification/repository/subscribe_repository.dart';
import 'package:logic_rdv_v0/src/core/constants/constants.dart';
import 'package:logic_rdv_v0/src/core/helper/validator_form.dart';
import 'package:logic_rdv_v0/src/core/models/search_city_model/search_city_response.dart';
import 'package:logic_rdv_v0/src/core/models/search_name_model/search_name_response.dart';
import 'package:logic_rdv_v0/src/core/preference_key.dart';
import 'package:logic_rdv_v0/src/ui/alert_widgets/custom_snackbar.dart';
import 'package:logic_rdv_v0/src/ui/alert_widgets/dialog_search_city.dart';
import 'package:logic_rdv_v0/src/ui/alert_widgets/dialog_search_object_name.dart';
import 'package:logic_rdv_v0/src/ui/alert_widgets/get_address_dialog.dart';
import 'package:logic_rdv_v0/src/ui/alert_widgets/login_dialog.dart';
import 'package:logic_rdv_v0/src/ui/dialog_alert/custom_alert.dart';
import 'package:logic_rdv_v0/src/ui/shared/adaptative_appbar.dart';
import 'package:logic_rdv_v0/src/ui/shared/adaptative_textform_field.dart';
import 'package:logic_rdv_v0/src/ui/shared/adaptatvive_scaffold.dart';
import 'package:logic_rdv_v0/src/ui/shared/appbar_title.dart';
import 'package:logic_rdv_v0/src/ui/shared/my_drawer.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:geolocator/geolocator.dart';

import '../../../common.dart';

class SearchDoctorInApp extends StatefulWidget {
  const SearchDoctorInApp();

  @override
  _SearchDoctorInAppState createState() => _SearchDoctorInAppState();
}

class _SearchDoctorInAppState extends State<SearchDoctorInApp> {
  double _textFieldHeight = 0;
  int currentPage = 1;

  bool get isAndroid =>
      foundation.defaultTargetPlatform == TargetPlatform.android;

  bool get isWeb => foundation.kIsWeb;

  GlobalKey _keyTextField = new GlobalKey();
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  // final _textFieldKey = GlobalKey();
  TextEditingController _searchValueCity = TextEditingController();
  TextEditingController _searchValueName = TextEditingController();
  ScrollController _scrollController = new ScrollController();
  String _cityId ='';
  String _categoryId = '';
  int totalOfPage =0;
  bool isRefreshList = false;

  bool _isLoading = false;
  bool _isSearchListOfPractitien = false;
  List<ClientInfosResponseSearchCity> clientInfoSearchCity = [];

  List<ObjectNameOfSearch> objectNameOfSearch = [];

  late Position _currentPosition;
  String _currentAddress ='';

  FocusNode _connectButtonFocus = FocusNode();
  FocusNode _cityFocus = FocusNode();
  FocusNode _nameFocus = FocusNode();
  FocusNode _searchButtonFocus =FocusNode();

  String _email = '';
  String _fullName = '';
  String _tokenuser = '';
  bool isCity = false;
  bool isSpecification = false;
  bool isCurrentPositionAsk = false;

  List<ObjectNameOfSearch> doctors = [];

  final Geolocator geolocator = Geolocator();
  // Geolocator geolocator;

  void _getCurrentLocation() {
    if (kIsWeb) {
      customAlert(
          context: context,
          alertType: AlertType.info,
          content: Text('Fontionnalite disponible uniquement sur mobile'), title: '', buttonLabel: '', action: () {  }, willPop: false);
    } else {
       Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.best)
          .then((Position position) {
        setState(() {
          _currentPosition = position;
        });
        _getAddressFromLatLng();
      }).catchError((e) {
        print(e);
      });
    }
  }

  _getAddressFromLatLng() async {
    try {
      if (kIsWeb) {
        print('is web platform');
      } else {
        List<Placemark> p = await geolocator.placemarkFromCoordinates(
            _currentPosition.latitude, _currentPosition.longitude);
        Placemark place = p[0];
        setState(() {
          _searchValueCity.text = "Ma position";
          _cityId =
              'p${_currentPosition.latitude},${_currentPosition.longitude}';
          isCurrentPositionAsk = !isCurrentPositionAsk;
        });
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  void initState() {
    super.initState();
    _connectButtonFocus = FocusNode();
    _cityFocus = FocusNode();
    _nameFocus = FocusNode();
    _searchButtonFocus = FocusNode();
    BlocProvider.of<SharedPreferenceBloc>(context)
      ..add(GetSharedPreferenceObject(objectKey: PreferenceKey.objectKey));
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        _textFieldHeight = _keyTextField.currentContext!.size!.height;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    _connectButtonFocus.dispose();
    _cityFocus.dispose();
    _nameFocus.dispose();
    _searchButtonFocus.dispose();
  }

  void _showDialogSearchCity(BuildContext context) {
    showModal(
      context: context,
      configuration: FadeScaleTransitionConfiguration(),
      builder: (context) => BlocProvider(
        create: (context) {
          return SearchBloc(repository: SearchCityRepository());
        },
        child: DialogOfAddress(),
      ),
    ).then((value) {
      setState(() {
        _searchValueCity.text = value?.cityName;
        _cityId = value?.cityId;
      });
    });
  }

  void _showDialogSearchNameObject(BuildContext context) {
    showModal(
      context: context,
      useRootNavigator: false,
      configuration: FadeScaleTransitionConfiguration(),
      builder: (context) => BlocProvider(
        create: (context) {
          return SearchBloc(repository: SearchCityRepository());
        },
        child: DialogSearchObjectFName(
          cityId: _cityId,
          indexPage: "1",
        ),
      ),
    ).then((value) {
      setState(() {
        _searchValueName.text = value?.fullName;
        _categoryId = value?.catId;
      });
    });
  }

  void _showDialogSearchCityValue(BuildContext context) {
    showModal(
      context: context,
      useRootNavigator: false,
      configuration: FadeScaleTransitionConfiguration(),
      builder: (context) => BlocProvider(
        create: (context) {
          return SearchBloc(repository: SearchCityRepository());
        },
        child: DialogSearchCityValue(
          indexPage: '1',
        ),
      ),
    ).then((value) {
      setState(() {
        _searchValueCity.text = value?.cityName;
        _cityId = value?.cityId;
      });
    });
  }

  bool isNotEmptyField() {
    return _searchValueCity.text.isEmpty || _searchValueName.text.isEmpty;
  }

  Color colorBrown = Color(0xFF222831);
  @override
  Widget build(BuildContext context) {
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
          tokenUser: _tokenuser,
          page: '6',
          email: _email,
          fullNme: _fullName, notification: false,
        ),
      ),
      appBar: AdaptativeAppBar(
        title: 'Recherche d\'un praticien',
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
          BlocListener<SearchBloc, SearchState>(listener: (context, state) {
            if (state is ListOfDoctorStateLoadingSuccess) {
              setState(() {
                _isLoading = true;
                _isSearchListOfPractitien = true;
                doctors.addAll(state.doctors.data.list);
                totalOfPage = int.parse(state.doctors.data.pagination.maxpage);
                currentPage += 1;
                isRefreshList = false;
              });
            } else if (state is SearchStateLoadingFailure) {
              _isLoading = true;
              _isSearchListOfPractitien = true;
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
                flushBarError(state.error, context);
              }
            }
          }),
          BlocListener<SharedPreferenceBloc, SharedPreferenceState>(
              listener: (context, state) {
            if (state is SharedPreferenceTokenAuthorizationWriteState) {
              print("is write");
            } else if (state is SharedPreferenceReadObjectState) {
              setState(() {
                _email = state.sharePreferenceObject!.email;
                _tokenuser = state.sharePreferenceObject!.token;
                _fullName = state.sharePreferenceObject!.firstName +
                    " " +
                    state.sharePreferenceObject!.lastName;
              });
            }
          }),
          BlocListener<NavigationBloc, NavigationState>(
              listener: (context, state) {
            if (state is NavigationWasAsked<SearchResultPageArguments>) {
              Navigator.of(context).pushNamed(
                RouteGenerator.searchResultScreen,
                arguments: state.arguments,
              );
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
        child: BlocBuilder<SearchBloc, SearchState>(builder: (context, state) {
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                children: [
                  Container(
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Container(
                        padding: EdgeInsets.all(16),
                        child: Wrap(
                          children: [
                            Container(
                              alignment: Alignment.center,
                              child: Image.asset(
                                'assets/images/splash_big.png',
                                height: 130,
                                width: 130,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 8),
                              child: Text(
                                'Recherche d\'un praticien, établissement à proximité de chez vous',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.black54,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Container(
                        padding: EdgeInsets.all(16),
                        child: Column(
                          children: [
                            Container(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Où ? Autour de ?',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black54,
                                ),
                              ),
                            ),
                            const SizedBox(height: 4),
                            Row(
                              children: [
                                Expanded(
                                  child: AdaptativeTextFormField(
                                    key: _keyTextField,
                                    hintText: 'Code postal, ville',
                                    controller: _searchValueCity,
                                    onTapeFocusChangeHandler: () {
                                      _showDialogSearchCityValue(context);
                                    },
                                    validator: (value) => verifyEmpty(value!),
                                    suffixIcon: Padding(
                                      padding: const EdgeInsets.only(
                                          right: 20, left: 10),
                                      child: _searchValueCity.text != ''
                                          ? InkWell(
                                              onTap: () {
                                                FocusScope.of(context)
                                                    .unfocus();
                                                setState(() {
                                                  _searchValueCity.clear();
                                                });
                                              },
                                              child: Icon(
                                                Icons.clear,
                                                color: Colors.red,
                                              ),
                                            )
                                          : Icon(
                                              Icons.clear,
                                              color: Colors.transparent,
                                            ),
                                    ), focusNode: null, textInputAction: null,
                                  ),
                                ),
                                IconButton(
                                  splashRadius: 20,
                                  icon: Icon(
                                    Icons.home,
                                    color: Color(0xFF4e8fda),
                                  ),
                                  onPressed: () {
                                    clientInfoSearchCity.clear();
                                    FocusScope.of(context).unfocus();
                                    _showDialogSearchCity(context);
                                  },
                                ),
                                IconButton(
                                  splashRadius: 20,
                                  icon: Icon(
                                    Icons.location_on,
                                    color: Color(0xFF4e8fda),
                                  ),
                                  onPressed: () {
                                    //   ContactSocialNetWork.displayLocation(
                                    // context);
                                    isCurrentPositionAsk =
                                        !isCurrentPositionAsk;
                                    clientInfoSearchCity.clear();
                                    _getCurrentLocation();
                                  },
                                )
                              ],
                            ),
                            const SizedBox(height: 14),
                            Container(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Qui ? Spécialité ? Téléphone ?',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black54,
                                ),
                              ),
                            ),
                            const SizedBox(height: 4),
                            AdaptativeTextFormField(
                              hintText: 'Nom, Spécialité, Téléphone',
                              controller: _searchValueName,
                              onTapeFocusChangeHandler: () {
                                _showDialogSearchNameObject(context);
                              },
                              suffixIcon: _searchValueName.text != ''
                                  ? InkWell(
                                      onTap: () {
                                        FocusScope.of(context).unfocus();
                                        setState(() {
                                          _searchValueName.clear();
                                        });
                                      },
                                      child:
                                          Icon(Icons.clear, color: Colors.red),
                                    )
                                  : Icon(Icons.clear,
                                      color: Colors.transparent),
                              validator: (value) => verifyEmpty(value!), focusNode: null, textInputAction: null,
                            ),
                            const SizedBox(height: 20),
                            Visibility(
                              visible: !isNotEmptyField(),
                              child: Container(
                                width: double.infinity,
                                child: SearchButton(
                                  textFieldHeight: _textFieldHeight,
                                  searchButtonFocus: _searchButtonFocus,
                                  onPressed: () {
                                    FocusScope.of(context).unfocus();
                                    _isSearchListOfPractitien =
                                        !_isSearchListOfPractitien;
                                    if (isNotEmptyField()) {
                                      flushBarError(
                                          'Veillez renseigner les champs vide',
                                          context);
                                    } else {
                                      setState(() {
                                        isCity = false;
                                        isSpecification = false;
                                        BlocProvider.of<NavigationBloc>(context)
                                          ..add(
                                            GoToListOfDoctor(
                                              arguments:
                                                  SearchResultPageArguments(
                                                city: _searchValueCity.text,
                                                nameOrSpeciality:
                                                    _searchValueName.text,
                                                categoryId: _categoryId,
                                                cityId: _cityId,
                                              ),
                                            ),
                                          );
                                      });
                                    }
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }

  void _openWhatsApp(
    String phone,
    String message,
  ) async {
    String url() {
      if (isAndroid || isWeb) {
        return "https://wa.me/$phone/?text=${Uri.parse(message)}";
      } else {
        return "https://api.whatsapp.com/send?phone=$phone=${Uri.parse(message)}";
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

  void _makeCall(
    String phone,
  ) async {
    await launch("tel://$phone");
  }
}
