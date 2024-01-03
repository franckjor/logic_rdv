import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/foundation.dart' as foundation;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logic_rdv_v0/src/common.dart';
import 'package:logic_rdv_v0/src/core/bloc/bloc_of_shapreference/shared_preference.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/generate_and_check_token/bloc/generate_and_check_token.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/subcribe_notification/bloc/subcribe.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/subcribe_notification/function/subscribe_function.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/subcribe_notification/repository/subscribe_repository.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/user/bloc/user.dart';
import 'package:logic_rdv_v0/src/core/constants/constants.dart';
import 'package:logic_rdv_v0/src/core/preference_key.dart';
import 'package:logic_rdv_v0/src/ui/alert_widgets/custom_snackbar.dart';
import 'package:logic_rdv_v0/src/ui/dialog_alert/custom_alert.dart';
import 'package:logic_rdv_v0/src/ui/shared/adaptative_appbar.dart';
import 'package:logic_rdv_v0/src/ui/shared/my_drawer.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:wonderpush_flutter/wonderpush_flutter.dart';

bool get isAndroid =>
    foundation.defaultTargetPlatform == TargetPlatform.android;

bool get isWeb => foundation.kIsWeb;

class UserProfileScreen extends StatefulWidget {
  const UserProfileScreen();

  @override
  _UserProfileScreenState createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  String _email;
  String _fullName;
  String _tokenUser;
  final _key = GlobalKey();
  bool _obscureText = true;
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  final _formKey = GlobalKey<FormState>();
  double _textFieldHeight = 50;
  FocusNode _focusNodeConnectButton;

  TextEditingController _nameController;
  TextEditingController _surNameController;
  TextEditingController _mobileController;
  TextEditingController _emailController;
  TextEditingController _adressController;
  TextEditingController _villeController;
  TextEditingController _postalCodeController;
  TextEditingController _passwordController;
  TextEditingController _passwordConfirmController;

  @override
  void initState() {
    super.initState();
    BlocProvider.of<SharedPreferenceBloc>(context)
      ..add(GetSharedPreferenceObject(objectKey: PreferenceKey.objectKey));
    _focusNodeConnectButton = FocusNode();
    _nameController = TextEditingController();
    _adressController = TextEditingController();
    _postalCodeController = TextEditingController();
    _villeController = TextEditingController();
    _surNameController = TextEditingController();
    _mobileController = TextEditingController();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _passwordConfirmController = TextEditingController();
    BlocProvider.of<SharedPreferenceBloc>(context)
      ..add(GetSharedPreferenceObject(objectKey: PreferenceKey.objectKey));

    getVerifyIfIsSubscribe();
    getInstalationIdKey();
  }

  removeValues() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove(PreferenceKey.objectKey);
  }

  String _installationIdKey;
  String _isSubscribe;
  bool _notification;

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

  Future<String> getVerifyIfIsSubscribe() async {
    final prefs = await SharedPreferences.getInstance();
    _isSubscribe = prefs.getString(PreferenceKey.isSubscribe);
    print("_isSubscribe: $_isSubscribe");
    setState(() {
      if (_isSubscribe == "0") {
        _notification = false;
      } else {
        _notification = true;
      }
    });
    return _isSubscribe;
  }

  @override
  void dispose() {
    super.dispose();
    _focusNodeConnectButton.dispose();
  }

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
          tokenUser: _tokenUser,
          page: '5',
          email: _email,
          fullNme: _fullName,
        ),
      ),
      backgroundColor: AppColors.primaryColor,
      appBar: AdaptativeAppBar(
        title: 'Profil',
        leading: DefaultBackButton(),
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
          BlocListener<UserBloc, UserState>(listener: (context, state) {
            if (state is UserStateLoadingSuccess) {
              flushBarSuccess(state.userResponse.message, context);
            } else if (state is UserCheckoutStateLoadingSuccess) {
              removeValues();
              Navigator.of(context).pushNamedAndRemoveUntil(
                  RouteGenerator.welcomeScreen, (route) => false);
            } else if (state is UserStateLoadingFailure) {
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
                  alertType: AlertType.error,
                  context: context,
                  content: Container(
                    child: Text(state.error),
                  ),
                );
              }
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
                getVerifyIfIsSubscribe();
              });
            } else if (state is IsSubscribeStateLoadingSuccess) {
              setState(() {
                if (state.verifyNotifSubscribtion.data.issubscribed == "0") {
                  _notification = false;
                } else {
                  _notification = true;
                }
              });
            } else if (state is UnSubscribeStateLoadingSuccess) {
              setState(() {
                _notification = false;
                writeIsSubscribeInMemory("0");
                flushBarSuccess(state.subscribeResponse.message, context);
                getVerifyIfIsSubscribe();
                if (state.subscribeResponse.data.total == "0") {
                  WonderPush.unsubscribeFromNotifications();
                }
              });
            } else if (state is SubscribeStateLoadingFailure) {
              flushBarError(state.error, context);
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
          BlocListener<SharedPreferenceBloc, SharedPreferenceState>(
              listener: (context, state) {
            if (state is SharedPreferenceReadObjectState) {
              setState(() {
                _tokenUser = state.sharePreferenceObject.token;
                _email = state.sharePreferenceObject.email;
                _fullName = state.sharePreferenceObject.firstName +
                    " " +
                    state.sharePreferenceObject.lastName;
                _nameController.text = state.sharePreferenceObject.firstName;
                _surNameController.text = state.sharePreferenceObject.lastName;
                _emailController.text = state.sharePreferenceObject.email;
                _mobileController.text =
                    state.sharePreferenceObject.phoneNumber;
              });
            }
          })
        ],
        child: BlocBuilder<UserBloc, UserState>(builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Container(
              height: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 24, horizontal: 16),
              decoration: BoxDecoration(
                color: Color(0xFFeff4fb),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const SizedBox(height: 16),
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage(
                            'assets/images/medecin.png',
                          ),
                          backgroundColor: Colors.white,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          _nameController.text,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF304170),
                            fontSize: 22,
                          ),
                        ),
                        const SizedBox(height: 3),
                        Text(
                          _emailController.text,
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.blueGrey,
                            fontSize: 13.5,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 30),
                    _ProfilMenuOption(
                      title: 'Paramètres du compte',
                      icon: Platform.isAndroid
                          ? Icons.settings
                          : CupertinoIcons.gear_alt_fill,
                      onTap: () {
                        Navigator.pushNamed(
                            context, RouteGenerator.userEditedProfile);
                      },
                    ),
                    _ProfilMenuOption(
                      title: 'Notifications',
                      icon: Icons.notifications,
                      onTap: () => Navigator.of(context)
                          .pushNamed(RouteGenerator.notificationScreen),
                    ),
                    _ProfilMenuOption(
                      title: 'Polices de confidencialité',
                      icon: Platform.isAndroid
                          ? Icons.security
                          : CupertinoIcons.shield_lefthalf_fill,
                      onTap: () {
                        Navigator.of(context)
                            .pushNamed(RouteGenerator.conditionDutilisation);
                      },
                    ),
                    _ProfilMenuOption(
                      title: 'Notification',
                      icon: Icons.notifications_active,
                      onTap: () {
                        Navigator.of(context)
                            .pushNamed(RouteGenerator.conditionDutilisation);
                      },
                      trailing: Switch(
                        value: _notification,
                        onChanged: (value) {
                          _notification
                              ? unSubscribe(
                                  context: context,
                                  installationkey: _installationIdKey,
                                  tokenuser: _tokenUser)
                              : subscribe(
                                  context: context,
                                  installationkey: _installationIdKey,
                                  tokenuser: _tokenUser);
                        },
                        activeTrackColor: AppColors.primaryColor,
                        activeColor: AppColors.primaryColor,
                      ),
                    ),
                    // _ProfilMenuOption(
                    //   title: 'Méthode de paiement',
                    //   icon: Platform.isAndroid
                    //       ? Icons.credit_card
                    //       : CupertinoIcons.creditcard,
                    //   onTap: () => Navigator.of(context)
                    //       .pushNamed(RouteGenerator.paymentMethodScreen),
                    // ),
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

class _ProfilMenuOption extends StatelessWidget {
  final Function onTap;
  final IconData icon;
  final String title;
  final Widget trailing;
  const _ProfilMenuOption({
    Key key,
    this.onTap,
    required this.icon,
    required this.title,
    this.trailing,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 12),
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        onTap: onTap,
        leading: Icon(icon),
        title: Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0xFF304170),
            fontSize: 18,
          ),
        ),
        trailing: trailing,
      ),
    );
  }
}
