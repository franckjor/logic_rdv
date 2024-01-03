import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logic_rdv_v0/src/common.dart';
import 'package:logic_rdv_v0/src/core/bloc/bloc_of_shapreference/model/shared_preference_object.dart';
import 'package:logic_rdv_v0/src/core/bloc/bloc_of_shapreference/shared_preference.dart';
import 'package:logic_rdv_v0/src/core/bloc/navigation/navigation_bloc.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/login/bloc/login.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/login/bloc_provider_login_function/bloc_provider_function.dart';
import 'package:logic_rdv_v0/src/core/constants/constants.dart';
import 'package:logic_rdv_v0/src/core/helper/validator_form.dart';
import 'package:logic_rdv_v0/src/core/models/login_model/login_started_response.dart';
import 'package:logic_rdv_v0/src/core/preference_key.dart';
import 'package:logic_rdv_v0/src/ui/alert_widgets/progress_dialog.dart';
import 'package:logic_rdv_v0/src/ui/dialog_alert/custom_alert.dart';
import 'package:logic_rdv_v0/src/ui/shared/adaptative_appbar.dart';
import 'package:logic_rdv_v0/src/ui/shared/adaptative_textform_field.dart';
import 'package:logic_rdv_v0/src/ui/shared/adaptatvive_scaffold.dart';
import 'package:logic_rdv_v0/src/ui/shared/buttons/default_elevated_button.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class ForgotPasswordRdvPageArguments implements PagesArgumentType {
  final LoginStartedResponse loginStartedResponse;

  ForgotPasswordRdvPageArguments({
    this.loginStartedResponse,
  });

  @override
  getArguments() {
    return this;
  }
}

class ForgotPasswordScreen extends StatefulWidget {
  final ForgotPasswordRdvPageArguments arguments;

  ForgotPasswordScreen({this.arguments});

  @override
  _ForgotPasswordScreenState createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  double _textFieldHeight = 0;
  final _key = GlobalKey();
  TextEditingController _emailController = new TextEditingController();
  TextEditingController _newPasswordController = new TextEditingController();
  final _formKey = GlobalKey<FormState>();

  LoginStartedResponse _loginStartedResponse;
  SharePreferenceObject _object;
  bool _codeController = true;

  _setEmail() {
    // if (widget.arguments.email.isNotEmpty) {
    //   _emailController.text = widget.arguments.email;
    // }
  }

  @override
  void initState() {
    super.initState();
    _loginStartedResponse = widget.arguments.loginStartedResponse;
    _setEmail();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        _textFieldHeight = _key.currentContext.size.height;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    ProgressDialog progressDialog =
        ProgressDialog(context, ProgressDialogType.Normal);
    return AdaptativeScaffold(
      appBar: AdaptativeAppBar(
        title: 'Mot de passe oublié',
        leading: DefaultBackButton(),
      ),
      body: MultiBlocListener(
        listeners: [
          BlocListener<LoginBloc, LoginState>(listener: (context, state) {
            if (state is PasswordChangeSuccessFully) {
              progressDialog.hide();
              customAlert(
                  context: context,
                  alertType: AlertType.success,
                  content: Text(
                    state.response.message,
                    textAlign: TextAlign.center,
                  ),
                  action: () {
                    Navigator.pushReplacementNamed(
                        context, RouteGenerator.loginScreen);
                  });
            } else if (state is LoginForSendCodeLoadingSuccess) {
              progressDialog.hide();
              setState(() {
                if (state.response.data.headererror != "") {
                  customAlert(
                    alertType: AlertType.info,
                    context: context,
                    content: Container(
                      child: Text(
                        state.response.data.headererror,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  );
                } else {
                  _codeController = !_codeController;
                  _loginStartedResponse = state.response;
                }
              });
            } else if (state is LoginForNewPassLoadingSuccess) {
              progressDialog.hide();
              setState(() {
                if (state.response.data.headererror != "") {
                  customAlert(
                    alertType: AlertType.info,
                    context: context,
                    content: Container(
                      child: Text(
                        state.response.data.headererror,
                        textAlign: TextAlign.center,
                      ),
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
            } else if (state is LoginForAskNewCodeLoadingSuccess) {
              progressDialog.hide();
              setState(() {
                _loginStartedResponse = state.response;
                // customAlert(
                //   alertType: AlertType.info,
                //   context: context,
                //   content: Container(
                //     child: Text(
                //       state.response.data.headermessage,
                //       textAlign: TextAlign.center,
                //     ),
                //   ),
                // );
              });
            } else if (state is LoginFailure) {
              progressDialog.hide();
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
          BlocListener<SharedPreferenceBloc, SharedPreferenceState>(
              listener: (context, state) {
            if (state is SharedPreferenceWriteObjectState) {
              progressDialog.hide();
              Navigator.of(context).pushNamedAndRemoveUntil(
                  RouteGenerator.appointmentScreen, (route) => false);
            }
          }),
        ],
        child: BlocBuilder<LoginBloc, LoginState>(builder: (context, state) {
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 36, 16, 0),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Text(
                      'Mot de passe oublié.',
                      style: TextStyle(
                        fontSize: 22,
                        color: AppColors.primaryColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(right: 16),
                      child: Text(
                        _loginStartedResponse.data?.headermessage,
                        style: TextStyle(
                          color: AppColors.primaryColor.withOpacity(.5),
                          fontSize: 16,
                        ),
                      ),
                    ),
                    const SizedBox(height: 50),
                    Visibility(
                      visible: _codeController,
                      child: Container(
                        child: AdaptativeTextFormField(
                          key: _key,
                          hintText: 'Entrez le code a 6 Chiffres',
                          controller: _emailController,
                          validator: (value) => verifyEmpty(value),
                        ),
                      ),
                    ),
                    Visibility(
                      visible: !_codeController,
                      child: Container(
                        child: AdaptativeTextFormField(
                          key: _key,
                          hintText: 'Nouveau mot de passe',
                          controller: _newPasswordController,
                          validator: (value) => verifyEmpty(value),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Column(
                      children: List.generate(
                        _loginStartedResponse.data.buttonvalidation.length,
                        (index) => Padding(
                          padding: const EdgeInsets.only(bottom: 10.0),
                          child: Container(
                            width: double.infinity,
                            child: DefaultElevatedButton(
                              onPressed: () {
                                if (_loginStartedResponse.data.type ==
                                    "logincode") {
                                  if (_loginStartedResponse
                                          .data.buttonvalidation[index].label ==
                                      "Retour") {
                                    Navigator.pop(context);
                                  } else if (_loginStartedResponse
                                      .data.buttonvalidation[index].label
                                      .contains("Code SMS sur ")) {
                                    onPressedLoginButtonAskCodeSms(
                                        context: context,
                                        action: _loginStartedResponse
                                            .data
                                            .buttonvalidation[index]
                                            .onclickAction,
                                        data: _loginStartedResponse
                                            .data
                                            .buttonvalidation[index]
                                            .onclickData,
                                        session:
                                            _loginStartedResponse.data.session);
                                  } else {
                                    onPressedLoginButtonForSendCode(
                                        context: context,
                                        action: _loginStartedResponse
                                            .data
                                            .buttonvalidation[index]
                                            .onclickAction,
                                        data: _emailController.text,
                                        session:
                                            _loginStartedResponse.data.session);
                                  }
                                } else if (_loginStartedResponse.data.type ==
                                    "logincodesms") {
                                  if (_loginStartedResponse
                                          .data.buttonvalidation[index].label ==
                                      "Retour") {
                                    Navigator.pushReplacementNamed(
                                        context, RouteGenerator.loginScreen);
                                  } else {
                                    onPressedLoginButtonForSendCode(
                                        context: context,
                                        action: _loginStartedResponse
                                            .data
                                            .buttonvalidation[index]
                                            .onclickAction,
                                        data: _emailController.text,
                                        session:
                                            _loginStartedResponse.data.session);
                                  }
                                } else if (_loginStartedResponse.data.type ==
                                    "loginnewpass") {
                                  if (_loginStartedResponse
                                          .data.buttonvalidation[index].label ==
                                      "Retour") {
                                    Navigator.pushReplacementNamed(
                                        context, RouteGenerator.loginScreen);
                                  } else {
                                    onPressedLoginButtonForNewPassword(
                                        context: context,
                                        action: _loginStartedResponse
                                            .data
                                            .buttonvalidation[index]
                                            .onclickAction,
                                        data: _newPasswordController.text,
                                        session:
                                            _loginStartedResponse.data.session);
                                  }
                                }
                              },
                              text: _loginStartedResponse
                                  .data.buttonvalidation[index].label,
                              textFieldHeight: _textFieldHeight,
                            ),
                          ),
                        ),
                      ),
                    )
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
