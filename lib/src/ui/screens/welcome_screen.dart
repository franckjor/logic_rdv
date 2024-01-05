import 'dart:async';
import 'dart:io';

import 'package:animations/animations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:launch_review/launch_review.dart';
import 'package:logic_rdv_v0/src/common.dart';
import 'package:logic_rdv_v0/src/core/bloc/bloc_of_shapreference/shared_preference.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/generate_and_check_token/bloc/generate_and_check_token.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/generate_and_check_token/function/get_token.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/search_city/bloc/search.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/search_city/search_city_repository/search_city_repository.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/version/bloc/version.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/version/function/version_function.dart';
import 'package:logic_rdv_v0/src/core/constants/constants.dart';
import 'package:logic_rdv_v0/src/core/helper/app_version.dart';
import 'package:logic_rdv_v0/src/core/helper/validator_form.dart';
import 'package:logic_rdv_v0/src/core/models/search_city_model/search_city_response.dart';
import 'package:logic_rdv_v0/src/core/models/search_name_model/search_name_response.dart';
import 'package:logic_rdv_v0/src/core/preference_key.dart';
import 'package:logic_rdv_v0/src/ui/alert_widgets/dialog_search_city.dart';
import 'package:logic_rdv_v0/src/ui/alert_widgets/dialog_search_object_name.dart';
import 'package:logic_rdv_v0/src/ui/alert_widgets/get_address_dialog.dart';
import 'package:logic_rdv_v0/src/ui/alert_widgets/progress_dialog.dart';
import 'package:logic_rdv_v0/src/ui/dialog_alert/custom_alert.dart';
import 'package:logic_rdv_v0/src/ui/shared/adaptative_textform_field.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:wonderpush_flutter/wonderpush_flutter.dart';

import '../../core/bloc/navigation/navigation_bloc.dart';
import '../alert_widgets/custom_snackbar.dart';
import '../dialog_alert/custom_confirm_alert.dart';
import '../shared/started_drawer.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen();

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  double _textFieldHeight = 0;

  GlobalKey _keyTextField = new GlobalKey();

  // final _textFieldKey = GlobalKey();
  TextEditingController _searchValueCity = TextEditingController();
  TextEditingController _searchValueName = TextEditingController();
  late String _cityId;
  late String _categoryId;
  late Timer _timer;

  bool _showList = false;
  bool _showListForName = false;
  List<ClientInfosResponseSearchCity> clientInfoSearchCity = [];

  List<ObjectNameOfSearch> objectNameOfSearch = [];

  late Position _currentPosition;
  late String _currentAddress;

  late FocusNode _connectButtonFocus;
  late FocusNode _cityFocus;
  late FocusNode _nameFocus;
  late FocusNode _searchButtonFocus;

  bool isCity = false;
  bool isSpecification = false;
  bool isCurrentPositionAsk = false;
  static const String PLAY_STORE_APP_ID = "fr.logicrdv.logicrdv";

  // final Geolocator geolocator = Geolocator()..forceAndroidLocationManager;

  // Geolocator geolocator;

  late String _appVersion;

  void _getCurrentLocation() {
    if (kIsWeb) {
      customAlert(
          context: context,
          alertType: AlertType.info,
          content: Text('Fontionnalite disponible uniquement sur mobile'),
          title: '',
          buttonLabel: '',
          action: () {},
          willPop: null);
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
    // try {
    //   if (kIsWeb) {
    //     print('is web platform');
    //   } else {
    //     List<Placemark> p = await geolocator.placemarkFromCoordinates(
    //         _currentPosition.latitude, _currentPosition.longitude);
    //     Placemark place = p[0];
    //     setState(() {
    //       _searchValueCity.text = "Ma position";
    //       _cityId =
    //           'p${_currentPosition.latitude},${_currentPosition.longitude}';
    //       isCurrentPositionAsk = !isCurrentPositionAsk;
    //     });
    //   }
    // } catch (e) {
    //   print(e);
    // }

    try {
      List<Placemark> placemarks = await placemarkFromCoordinates(
        _currentPosition.latitude,
        _currentPosition.longitude,
      );

      if (placemarks.isNotEmpty) {
        Placemark place = placemarks[0];
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
    _connectButtonFocus = FocusNode();
    _cityFocus = FocusNode();
    _nameFocus = FocusNode();
    _searchButtonFocus = FocusNode();
    getVersionApp(context: context);
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        _textFieldHeight = _keyTextField.currentContext!.size!.height;
      });
    });
    asyncMethod();
  }

  void asyncMethod() async {
    final prefs = await SharedPreferences.getInstance();
    var installationId = await WonderPush.getInstallationId();
    print("InstallationId: $installationId");
    await prefs.setString(PreferenceKey.InstallationIdKey, installationId!);
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
      configuration: FadeScaleTransitionConfiguration(),
      builder: (context) => BlocProvider(
        create: (context) {
          return SearchBloc(repository: SearchCityRepository());
        },
        child: DialogSearchObjectFName(
          cityId: _cityId,
          indexPage: '0',
        ),
      ),
    ).then((value) {
      if (value != null) {
        setState(() {
          _searchValueName.text = value?.fullName;
          _categoryId = value?.catId;
        });
      }
    });
  }

  void _showDialogSearchCityValue(BuildContext context) {
    showModal(
      context: context,
      configuration: FadeScaleTransitionConfiguration(),
      builder: (context) => BlocProvider(
        create: (context) {
          return SearchBloc(repository: SearchCityRepository());
        },
        child: DialogSearchCityValue(
          indexPage: '0',
        ),
      ),
    ).then((value) {
      if (value != null) {
        setState(() {
          _searchValueCity.text = value?.cityName;
          _cityId = value?.cityId;
        });
      }
    });
  }

  Color colorBrown = Color(0xFF222831);

  final _scaffoldKey = GlobalKey<ScaffoldState>();

  var _cityList;

  @override
  Widget build(BuildContext context) {
    var _screenHeight = MediaQuery.of(context).size.height;

    ProgressDialog progressDialog =
        ProgressDialog(context, ProgressDialogType.Normal);
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
            icon: isAndroid || isWeb
                ? Icon(
                    MdiIcons.menu,
                    color: AppColors.primaryColor,
                  )
                : Icon(
                    MdiIcons.menu,
                    color: AppColors.primaryColor,
                  ),
            splashRadius: 20,
            onPressed: () => _scaffoldKey.currentState!.openEndDrawer(),
          ),
        ],
      ),
      endDrawer: StartedDrawer(),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: AdaptativeScaffold(
          body: MultiBlocListener(
            listeners: [
              BlocListener<GenerateAndCheckTokenBloc,
                  GenerateAndCheckTokenState>(listener: (context, state) {
                if (state is GenerateTokenStateLoadingSuccess) {
                  BlocProvider.of<SharedPreferenceBloc>(context)
                    ..add(SetSharedPreferenceTokenAuthorization(
                        tokenAuthorizationKey:
                            PreferenceKey.tokenAuthorizationKey,
                        tokenAuthorization: state.getToken.data.authorization!
                            .replaceAll("X-LOGICRDV-AUTH:", "")));
                } else if (state is GenerateAndCheckTokenStateLoadingFailure) {
                  flushBarError(state.error, context);
                }
              }),
              BlocListener<SharedPreferenceBloc, SharedPreferenceState>(
                  listener: (context, state) {
                if (state is SharedPreferenceTokenAuthorizationWriteState) {}
              }),
              BlocListener<SearchBloc, SearchState>(listener: (context, state) {
                if (state is SearchCityStateLoadingSuccess) {
                  setState(() {
                    clientInfoSearchCity.clear();
                    clientInfoSearchCity.addAll(state.city.data.list);
                    _showList = true;
                  });
                } else if (state is SearchNameStateLoadingSuccess) {
                  setState(() {
                    objectNameOfSearch.clear();
                    objectNameOfSearch.addAll(state.name.data.list);
                    _showListForName = true;
                  });
                } else if (state is SearchStateLoadingFailure) {
                  if (state.error == messageErrorTokenInvalid ||
                      state.error == messageErrorTokenExpired) {
                    customAlert(
                      alertType: AlertType.info,
                      context: context,
                      action: () {
                        Navigator.pop(context);
                        BlocProvider.of<GenerateAndCheckTokenBloc>(context)
                          ..add(GetTokenAuthorisationEvent(
                              getTokenRequest: getTokenRequest));
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
                      willPop: null,
                    );
                  } else {
                    flushBarError(state.error, context);
                  }
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
              BlocListener<VersionBloc, VersionState>(
                  listener: (context, state) {
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
                      alertType: null,
                      confirmButtonLabel: '',
                      cancelButtonLabel: '',
                      onNoAction: () {},
                      closeFunction: () {},
                    );
                  }
                }
              })
            ],
            child:
                BlocBuilder<SearchBloc, SearchState>(builder: (context, state) {
              return Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/background.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: CustomScrollView(
                  slivers: [
                    SliverFillRemaining(
                      hasScrollBody: false,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          _IntroText(),
                          Form(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 15,
                                    vertical: 10,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Container(
                                        alignment: Alignment.centerLeft,
                                        child: const Text(
                                          'Où ? Autour de ?',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black54,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 4),
                                      Material(
                                        color: Colors.transparent,
                                        child: Row(
                                          children: [
                                            Expanded(
                                              child: AdaptativeTextFormField(
                                                key: _keyTextField,
                                                readOnly: true,
                                                hintText: 'Code postal, ville',
                                                controller: _searchValueCity,
                                                onTapeFocusChangeHandler: () {
                                                  // BlocProvider.of<
                                                  //     GenerateAndCheckTokenBloc>(
                                                  //     context)
                                                  //   ..add(
                                                  //       GetTokenAuthorisationEvent(
                                                  //           getTokenRequest:
                                                  //           getTokenRequest));
                                                  _showDialogSearchCityValue(
                                                      context);
                                                },
                                                validator: (value) =>
                                                    verifyEmpty(value!,
                                                        errorMessage: ''),
                                                suffixIcon: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          right: 20, left: 10),
                                                  child: _searchValueCity
                                                              .text !=
                                                          ''
                                                      ? InkWell(
                                                          onTap: () {
                                                            FocusScope.of(
                                                                    context)
                                                                .unfocus();
                                                            setState(() {
                                                              _searchValueCity
                                                                  .clear();
                                                            });
                                                          },
                                                          child: Icon(
                                                            Icons.clear,
                                                            color: Colors.red,
                                                          ),
                                                        )
                                                      : Icon(
                                                          Icons.clear,
                                                          color: Colors
                                                              .transparent,
                                                        ),
                                                ),
                                                focusNode: null,
                                                onEditingComplete: () {},
                                                textInputAction: null,
                                                onTapeChangeHandler:
                                                    (String) {},
                                              ),
                                            ),
                                            IconButton(
                                              splashRadius: 20,
                                              padding: EdgeInsets.zero,
                                              icon: Icon(
                                                Platform.isAndroid
                                                    ? Icons.home
                                                    : CupertinoIcons
                                                        .house_alt_fill,
                                                color: Color(0xFF4e8fda),
                                              ),
                                              onPressed: () {
                                                clientInfoSearchCity.clear();
                                                FocusScope.of(context)
                                                    .unfocus();
                                                _showDialogSearchCity(context);
                                              },
                                            ),
                                            IconButton(
                                              splashRadius: 20,
                                              padding: EdgeInsets.zero,
                                              icon: Icon(
                                                Platform.isAndroid
                                                    ? Icons.location_on
                                                    : CupertinoIcons
                                                        .placemark_fill,
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
                                        readOnly: true,
                                        onTapeFocusChangeHandler: () {
                                          // BlocProvider.of<
                                          //     GenerateAndCheckTokenBloc>(context)
                                          //   ..add(GetTokenAuthorisationEvent(
                                          //       getTokenRequest:
                                          //       getTokenRequest));
                                          _showDialogSearchNameObject(context);
                                        },
                                        suffixIcon: _searchValueName.text != ''
                                            ? InkWell(
                                                onTap: () {
                                                  FocusScope.of(context)
                                                      .unfocus();
                                                  setState(() {
                                                    _searchValueName.clear();
                                                  });
                                                },
                                                child: const Icon(
                                                  Icons.clear,
                                                  color: Colors.red,
                                                ),
                                              )
                                            : const Icon(
                                                Icons.clear,
                                                color: Colors.transparent,
                                              ),
                                        validator: (value) => verifyEmpty(
                                            value!,
                                            errorMessage: ''),
                                        focusNode: null,
                                        onEditingComplete: () {},
                                        textInputAction: null,
                                        onTapeChangeHandler: (String) {},
                                      ),
                                      const SizedBox(height: 20),
                                      Visibility(
                                        visible: !isNotEmptyField(),
                                        child: Container(
                                          width: double.infinity,
                                          child: SearchButton(
                                            textFieldHeight: _textFieldHeight,
                                            searchButtonFocus:
                                                _searchButtonFocus,
                                            onPressed: () {
                                              FocusScope.of(context).unfocus();
                                              if (isNotEmptyField()) {
                                                flushBarError(
                                                    'Veillez renseigner les champs vide',
                                                    context);
                                              } else {
                                                setState(() {
                                                  isCity = false;
                                                  isSpecification = false;
                                                  BlocProvider.of<
                                                      NavigationBloc>(context)
                                                    ..add(
                                                      GoToListOfDoctor(
                                                        arguments:
                                                            SearchResultPageArguments(
                                                          city: _searchValueCity
                                                              .text,
                                                          nameOrSpeciality:
                                                              _searchValueName
                                                                  .text,
                                                          categoryId:
                                                              _categoryId,
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
                              ],
                            ),
                          ),
                          Flexible(
                            fit: FlexFit.loose,
                            child: Align(
                              alignment: FractionalOffset.bottomCenter,
                              child: _SubscriptionButtons(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            }),
          ),
          title: '',
          leading: null,
          actions: [],
          scaffoldBackgroundColor: null,
          appBar: null,
        ),
      ),
    );
  }

  bool isNotEmptyField() {
    return _searchValueCity.text.isEmpty || _searchValueName.text.isEmpty;
  }
}

class _SubscriptionButtons extends StatelessWidget {
  const _SubscriptionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.colorPrimary,
      ),
      width: double.infinity,
      child: Container(
          padding: const EdgeInsets.only(
            top: 8,
            bottom: 20,
            left: 16,
            right: 16,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  OutlinedButton(
                    onPressed: () {
                      FocusScope.of(context).unfocus();
                      Navigator.of(context)
                          .pushNamed(RouteGenerator.registerScreen);
                    },
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(
                        color: Colors.transparent,
                        style: BorderStyle.solid,
                      ),
                    ),
                    child: Text(
                      'Inscription Rapide',
                      style: TextStyle(
                        color: Color(0xFFfbe0c4),
                        fontWeight: FontWeight.bold,
                        fontSize: 15.5,
                      ),
                    ),
                  ),
                  OutlinedButton(
                    onPressed: () {
                      FocusScope.of(context).unfocus();
                      Navigator.of(context)
                          .pushNamed(RouteGenerator.loginScreen);
                    },
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(
                        width: 1.0,
                        color: Colors.white,
                        style: BorderStyle.solid,
                      ),
                    ),
                    child: Container(
                      child: Text(
                        'Se Connecter',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 5),
              Container(
                child: Column(
                  children: [
                    const Text(
                      "Logicrdv c'est aussi la téléconsultation avec votre médecin.",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17.5,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
                    const Text(
                      'Logicrdv c’est plus de 13 millions d’appels reçus, plus de 5 millions de rendez-vous internet.',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
                alignment: Alignment.topLeft,
              ),
            ],
          )),
    );
  }
}

class _IntroText extends StatelessWidget {
  const _IntroText({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 24),
      child: Column(
        children: [
          Image.asset(
            'assets/images/splash_big.png',
            width: 160,
            height: 90,
            fit: BoxFit.fill,
            filterQuality: FilterQuality.high,
          ),
          Container(
            child: Text(
              'Recherchez votre Praticien',
              style: TextStyle(
                color: Colors.black54,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.01),
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              'Trouvez des praticiens près de chez vous et contactez-les en un instant',
              style: TextStyle(
                color: Colors.black54,
                fontWeight: FontWeight.normal,
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.015),
        ],
      ),
    );
  }
}

class SearchButton extends StatelessWidget {
  const SearchButton({
    super.key,
    required double textFieldHeight,
    required FocusNode searchButtonFocus,
    this.width = double.infinity,
    this.onPressed,
  })  : _textFieldHeight = textFieldHeight,
        _searchButtonFocus = searchButtonFocus;

  final double _textFieldHeight;
  final FocusNode _searchButtonFocus;
  final Function()? onPressed;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: _textFieldHeight,
      width: width,
      child: ElevatedButton.icon(
        focusNode: _searchButtonFocus,
        onPressed: onPressed,
        icon: Icon(Icons.search),
        label: Text(
          'Rechercher',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        style: ElevatedButton.styleFrom(
          primary: AppColors.colorPrimary,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }
}

class DefaultElevatedButtonIcon extends StatelessWidget {
  const DefaultElevatedButtonIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () =>
          Navigator.of(context).pushNamed(RouteGenerator.searchResultScreen),
      icon: Icon(Icons.search),
      label: Text(
        'Rechercher',
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
      style: ElevatedButton.styleFrom(
        primary: AppColors.primaryColor,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
      ),
    );
  }
}
