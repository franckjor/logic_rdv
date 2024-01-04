import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logic_rdv_v0/src/core/bloc/bloc_of_shapreference/model/shared_preference_object.dart';
import 'package:logic_rdv_v0/src/core/bloc/bloc_of_shapreference/shared_preference.dart';
import 'package:logic_rdv_v0/src/core/bloc/navigation/navigation_bloc.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/generate_and_check_token/bloc/generate_and_check_token.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/generate_and_check_token/function/get_token.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/login/bloc/login.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/login/bloc_provider_login_function/bloc_provider_function.dart';
import 'package:logic_rdv_v0/src/core/constants/constants.dart';
import 'package:logic_rdv_v0/src/core/helper/validator_form.dart';
import 'package:logic_rdv_v0/src/core/models/login_model/login_started_response.dart';
import 'package:logic_rdv_v0/src/core/preference_key.dart';
import 'package:logic_rdv_v0/src/ui/alert_widgets/custom_snackbar.dart';
import 'package:logic_rdv_v0/src/ui/alert_widgets/progress_dialog.dart';
import 'package:logic_rdv_v0/src/ui/dialog_alert/custom_alert.dart';
import 'package:logic_rdv_v0/src/ui/shared/adaptative_appbar.dart';
import 'package:logic_rdv_v0/src/ui/shared/adaptative_textform_field.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'dart:io' show Platform;
import '../../common.dart';
import '../shared/started_drawer.dart';

class LoginPageArguments implements PagesArgumentType {
  @override
  getArguments() {
    return this;
  }
}

class LoginScreen extends StatefulWidget {
  const LoginScreen();

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  FocusNode _focusNodeConnectButton;

  double _textFieldHeight = 0;
  final _key = GlobalKey();
  bool _obscureText = true;
  final _formKey = GlobalKey<FormState>();
  bool _isChecked = false;
  bool _ispasswordvisible = false;

  String _headerText = "";
  String _session = "";
  String _action = "";
  String type = "";
  List<ButtonvalidationloginStartedResponse>
      _buttonvalidationloginStartedResponse = [];

  SharePreferenceObject _object;
  TextEditingController _loginController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    onPressedLoginButtonForStarted(context: context);
    _focusNodeConnectButton = FocusNode();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        _textFieldHeight = _key.currentContext.size.height;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();

    _focusNodeConnectButton.dispose();
  }

  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    // var _pageSize = MediaQuery.of(context).size.height;
    // var _notifySize = MediaQuery.of(context).padding.top;
    // var _appBarSize = AppBar().preferredSize.height;
    ProgressDialog _progressDialog =
        ProgressDialog(context, ProgressDialogType.Normal);
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: _scaffoldKey,
        backgroundColor: Color(0xFFd3e0ea),
        appBar: AdaptativeAppBar(
          title: 'Se connecter',
          leading: DefaultBackButton(
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(
                  context, RouteGenerator.welcomeScreen, (route) => false);
            },
          ),
          actions: [
            IconButton(
              icon: Platform.isAndroid
                  ? const Icon(
                      MdiIcons.menu,
                      color: Color.fromARGB(255, 255, 255, 255),
                    )
                  : const Icon(
                      MdiIcons.menu,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
              splashRadius: 20,
              onPressed: () => _scaffoldKey.currentState.openEndDrawer(),
            ),
          ],
        ),
        endDrawer: StartedDrawer(),
        body: WillPopScope(
          onWillPop: () async {
            Navigator.pushNamed(context, RouteGenerator.welcomeScreen);
            return null;
          },
          child: MultiBlocListener(
            listeners: [
              BlocListener<LoginBloc, LoginState>(listener: (context, state) {
                if (state is LoginLoading) {
                  _progressDialog.setMessage("Connexion...");
                  _progressDialog.show();
                } else if (state is LoginStartedLoadingSuccess) {
                  _progressDialog.hide();
                  setState(() {
                    _ispasswordvisible = false;
                    type = state.response.data.type;
                    _headerText = state.response?.data?.headermessage;
                    _session = state.response?.data?.session;
                    _buttonvalidationloginStartedResponse =
                        state.response.data.buttonvalidation.toList();
                  });
                } else if (state is LoginSearchEmailLoadingSuccess) {
                  _progressDialog.hide();
                  setState(() {
                    if (state.response.data.headererror != "") {
                      customAlert(
                        context: context,
                        alertType: AlertType.error,
                        title: '',
                        content: Text(
                          state.response.data.headererror,
                          textAlign: TextAlign.center,
                        ),
                      );
                    } else {
                      _ispasswordvisible = !_ispasswordvisible;
                      type = state.response.data.type;
                      _headerText = state.response?.data?.headermessage;
                      _session = state.response?.data?.session;
                      _buttonvalidationloginStartedResponse =
                          state.response.data.buttonvalidation.toList();
                    }
                  });
                } else if (state is LoginSearchPassLoadingSuccess) {
                  _progressDialog.hide();
                  setState(() {
                    if (state.response.data.headererror != "") {
                      customAlert(
                        context: context,
                        alertType: AlertType.error,
                        title: '',
                        content: Text(
                          state.response.data.headererror,
                          textAlign: TextAlign.center,
                        ),
                      );
                    } else {
                      _object = SharePreferenceObject(
                          token: state.response.data.user.tokenuser,
                          email: state.response.data.user.email,
                          firstName: state.response.data.user.nom,
                          lastName: state.response.data.user.prenom,
                          phoneNumber: state.response.data.user.mobile);
                      BlocProvider.of<SharedPreferenceBloc>(context)
                        ..add(SetSharedPreferenceObject(
                          objectKey: PreferenceKey.objectKey,
                          object: _object,
                        ));
                    }
                  });
                } else if (state is LoginForgotPassLoadingSuccess) {
                  _progressDialog.hide();
                  setState(() {
                    Navigator.of(context).popAndPushNamed(
                        RouteGenerator.forgotPasswordScreen,
                        arguments: ForgotPasswordRdvPageArguments(
                            loginStartedResponse: state.response));
                    // customAlert(
                    //   context: context,
                    //   alertType: AlertType.info,
                    //   title: state.response.message,
                    //   content: Text(
                    //     state.response.data.headermessage,
                    //     textAlign: TextAlign.center,
                    //   ),
                    //   action: (){
                    //
                    //   }
                    // );
                  });
                } else if (state is LoginFailure) {
                  _progressDialog.hide();
                  if (state.error == messageErrorTokenInvalid ||
                      state.error == messageErrorTokenExpired) {
                    var getTokenRequest2 = getTokenRequest;
                    BlocProvider.of<GenerateAndCheckTokenBloc>(context)
                      ..add(GetTokenAuthorisationEvent(
                          getTokenRequest: getTokenRequest2));
                  } else {
                    customAlert(
                        context: context,
                        alertType: AlertType.error,
                        title: 'Echec de connexion',
                        action: () {
                          Navigator.pop(context);
                        },
                        content: Text(
                          state.error,
                          textAlign: TextAlign.center,
                        ));
                  }
                }
              }),
              BlocListener<SharedPreferenceBloc, SharedPreferenceState>(
                  listener: (context, state) {
                if (state is SharedPreferenceWriteObjectState) {
                  _progressDialog.hide();
                  Navigator.of(context).pushNamedAndRemoveUntil(
                      RouteGenerator.appointmentScreen, (route) => false);
                } else if (state
                    is SharedPreferenceTokenAuthorizationWriteState) {
                  onPressedLoginButton(
                      context: context,
                      login: _loginController.text,
                      password: _passwordController.text);
                }
              }),
              BlocListener<GenerateAndCheckTokenBloc,
                  GenerateAndCheckTokenState>(listener: (context, state) {
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
            ],
            child:
                BlocBuilder<LoginBloc, LoginState>(builder: (context, state) {
              return SafeArea(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Form(
                            key: _formKey,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Text(
                                  _headerText,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                    color: Color(0xFF1c2b2d),
                                  ),
                                ),
                                const SizedBox(height: 20),
                                AdaptativeTextFormField(
                                  textInputType: TextInputType.emailAddress,
                                  readOnly: _ispasswordvisible,
                                  hintText:
                                      'Adresse email ou numéro de téléphone',
                                  controller: _loginController,
                                  validator: (value) => verifyEmpty(value, errorMessage: ''),
                                ),
                                const SizedBox(height: 10),
                                Visibility(
                                  visible: _ispasswordvisible,
                                  child: TextFormField(
                                    key: _key,
                                    validator: (value) => verifyEmpty(value, errorMessage: ''),
                                    obscureText: _obscureText,
                                    controller: _passwordController,
                                    decoration: InputDecoration(
                                      prefixIcon: const Icon(
                                        Icons.lock,
                                        color: Color(0xFFd3e0ea),
                                      ),
                                      suffixIcon: _obscureText
                                          ? InkWell(
                                              onTap: () {
                                                setState(() {
                                                  _obscureText = !_obscureText;
                                                });
                                              },
                                              child: const Icon(
                                                Icons.remove_red_eye_outlined,
                                                color: AppColors.colorHintText,
                                              ),
                                            )
                                          : InkWell(
                                              onTap: () {
                                                setState(() {
                                                  _obscureText = !_obscureText;
                                                });
                                              },
                                              child: const Icon(
                                                MdiIcons.eyeOffOutline,
                                                color: AppColors.colorHintText,
                                              ),
                                            ),
                                      contentPadding:
                                          const EdgeInsets.symmetric(
                                              horizontal: 16, vertical: 0),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: Colors.red,
                                          width: 1,
                                        ),
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: AppColors.colorHintText,
                                          width: 0,
                                        ),
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(12),
                                        borderSide: const BorderSide(
                                          color: AppColors.colorHintText,
                                          width: 0,
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: AppColors.colorHintText,
                                          width: 2,
                                        ),
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      disabledBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: Color(0xFFd3e0ea),
                                          width: 0,
                                        ),
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      hintText: 'Mot de passe',
                                      hintStyle: const TextStyle(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 14,
                                        color: AppColors.colorHintText,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 16),
                                Column(
                                  children: List.generate(
                                    _buttonvalidationloginStartedResponse
                                        .length,
                                    (index) => Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 10),
                                      child: Container(
                                        width: double.infinity,
                                        height: 50,
                                        child: ElevatedButton(
                                          onPressed: () {
                                            final _form = _formKey.currentState;
                                            if (type == "loginemail") {
                                              onPressedLoginButtonForSearchEmail(
                                                  context: context,
                                                  action:
                                                      _buttonvalidationloginStartedResponse[
                                                              index]
                                                          .onclickAction,
                                                  data: _loginController.text,
                                                  session: _session);
                                            } else if (type == "loginpass") {
                                              if (_buttonvalidationloginStartedResponse[
                                                      index]
                                                  .label
                                                  .contains("Retour")) {
                                                onPressedLoginButtonForStarted(
                                                    context: context);
                                              } else if (_buttonvalidationloginStartedResponse[
                                                      index]
                                                  .label
                                                  .contains(
                                                      "Mot de passe Oublié")) {
                                                onPressedLoginButtonForForgotPassword(
                                                    context: context,
                                                    action:
                                                        _buttonvalidationloginStartedResponse[
                                                                index]
                                                            .onclickAction,
                                                    data: "",
                                                    session: _session);
                                              } else {
                                                onPressedLoginButtonForSearchPass(
                                                    context: context,
                                                    action:
                                                        _buttonvalidationloginStartedResponse[
                                                                index]
                                                            .onclickAction,
                                                    data: _passwordController
                                                        .text,
                                                    session: _session);
                                              }
                                            }

                                            final currentFocus =
                                                FocusScope.of(context);

                                            if (currentFocus.hasPrimaryFocus) {
                                              currentFocus.unfocus();
                                            }
                                          },
                                          child: Text(
                                            _buttonvalidationloginStartedResponse[
                                                    index]
                                                .label,
                                            style: TextStyle(
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                          style: ElevatedButton.styleFrom(
                                            elevation: 0,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                            ),
                                            primary: AppColors.primaryColor,
                                            onPrimary: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                // const SizedBox(height: 8),
                                // TextButton(
                                //   onPressed: () => Navigator.of(context)
                                //       .pushNamed(
                                //           RouteGenerator.forgotPasswordScreen,
                                //           arguments:
                                //               ForgotPasswordRdvPageArguments(
                                //                   email:
                                //                       _loginController.text)),
                                //   child: Text(
                                //     'Mot de passe oublié'.toUpperCase(),
                                //     style: const TextStyle(
                                //       color: AppColors.colorPrimary,
                                //       fontSize: 12,
                                //       fontWeight: FontWeight.w600,
                                //     ),
                                //   ),
                                // ),
                                const Divider(),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        Visibility(
                          visible: !_ispasswordvisible,
                          child: Container(
                            padding: const EdgeInsets.only(
                              top: 16,
                              left: 16,
                              right: 16,
                              bottom: 0,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Column(
                              children: [
                                const Text(
                                  'Nouveau sur LogicRdv ?',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                    color: Color(0xFF1c2b2d),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {
                                    FocusScope.of(context).unfocus();
                                    Navigator.of(context).pushReplacementNamed(
                                        RouteGenerator.registerScreen);
                                  },
                                  child: Text(
                                    'Inscription Rapide'.toUpperCase(),
                                    style: const TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}

class CheckBoxRemenberMe extends StatefulWidget {
  final bool isChecked;
  final Duration transitionDuration;
  final Function(bool isChecked) onCheckedBoxChanged;
  final Color inactiveColor;
  final Color activeColor;

  const CheckBoxRemenberMe({
    super.key,
    this.isChecked,
    this.onCheckedBoxChanged,
    this.transitionDuration = const Duration(milliseconds: 300),
    this.inactiveColor,
    this.activeColor = const Color(0xFF4e8fda),
  });

  @override
  _CheckBoxRemenberMeState createState() => _CheckBoxRemenberMeState();
}

class _CheckBoxRemenberMeState extends State<CheckBoxRemenberMe>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: widget.transitionDuration, lowerBound: 0.5);
  }

  @override
  void didUpdateWidget(covariant CheckBoxRemenberMe oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (widget.isChecked && !oldWidget.isChecked) {
      _controller.forward();
    } else if (!widget.isChecked && oldWidget.isChecked) {
      _controller.reverse();
    }
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onCheckedBoxChanged(!widget.isChecked);
      },
      child: AnimatedContainer(
        duration: widget.transitionDuration,
        decoration: BoxDecoration(
          color:
              widget.isChecked ? const Color(0xFF4e8fda) : Colors.transparent,
          border: Border.all(
            color: widget.isChecked
                ? const Color(0xFF4e8fda)
                : const Color(0xFFd3e0ea),
          ),
          borderRadius: BorderRadius.circular(4),
        ),
        child: widget.isChecked
            ? ScaleTransition(
                scale: _controller,
                child: const Icon(
                  Icons.check,
                  color: Color(0xFFd3e0ea),
                ),
              )
            : const SizedBox(width: 24, height: 24),
      ),
    );
  }
}
