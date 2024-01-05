import 'package:flutter/gestures.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logic_rdv_v0/src/core/bloc/bloc_of_shapreference/model/shared_preference_object.dart';
import 'package:logic_rdv_v0/src/core/bloc/bloc_of_shapreference/shared_preference.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/inscription_rapide/bloc/incription_rapid.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/inscription_rapide/function/inscription_rapid_function.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/login/bloc/login.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/login/bloc_provider_login_function/bloc_provider_function.dart';
import 'package:logic_rdv_v0/src/core/helper/validator_form.dart';
import 'package:logic_rdv_v0/src/core/models/incription_model/inscription_check_response.dart';
import 'package:logic_rdv_v0/src/core/models/login_model/login_started_response.dart';
import 'package:logic_rdv_v0/src/core/preference_key.dart';
import 'package:logic_rdv_v0/src/ui/alert_widgets/progress_dialog.dart';
import 'package:logic_rdv_v0/src/ui/dialog_alert/custom_alert.dart';
import 'package:logic_rdv_v0/src/ui/shared/adaptative_textform_field.dart';
import 'package:logic_rdv_v0/src/ui/shared/buttons/default_elevated_button.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import '../../common.dart';
import 'custom_snackbar.dart';

class LoginfDialog extends StatefulWidget {
  @override
  _LoginfDialogState createState() => _LoginfDialogState();
}

class _LoginfDialogState extends State<LoginfDialog> {
  final _formKey = GlobalKey<FormState>();

  bool _obscureText = true;
  late SharePreferenceObject _object;
  TextEditingController _loginController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  bool _isLoginViewVisible = true;
  bool _isSignInViewVisible = false;
  late String _tokenUser;

  late FocusNode _focusNodeConnectButton;

  double _textFieldHeight = 0;
  final _key = GlobalKey();
  final _formKey1 = GlobalKey<FormState>();

  bool _password1 = false;
  bool _password2 = false;
  TextEditingController _cabinetPhoneController = TextEditingController();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _prenomController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _codeController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();

  List<Etabs> _etabsList = [];
  bool _isChecked = false;
  bool _isdoctorChecked = false;
  String _dropDownSelected = "";
  bool _ispasswordvisible = false;
  String _headerText = "";
  String _session = "";
  String _action = "";
  String type = "";
  List<ButtonvalidationloginStartedResponse>
      _buttonvalidationloginStartedResponse = [];

  late Etabs _etabs;
  late String code;
  late String _idDoctor;
  String _checkedCondition = '0';

  Widget loginView(BuildContext context, {Function()? onTapToSignUp}) {
    return Container(
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: IconButton(
              onPressed: () {
                Navigator.pop(context, 0);
              },
              padding: EdgeInsets.zero,
              splashRadius: 20,
              icon: Icon(
                Icons.close,
                size: 20,
              ),
            ),
          ),
          Container(
            child: Text(
              _headerText,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 20),
                AdaptativeTextFormField(
                  hintText: 'Adresse email ou numéro de téléphone',
                  controller: _loginController,
                  validator: (value) => verifyEmpty(value!, errorMessage: ''), 
                  suffixIcon: null, 
                  focusNode: null, 
                  onEditingComplete: () {  }, 
                  textInputAction: null, 
                  onTapeChangeHandler: (String ) {  }, 
                  onTapeFocusChangeHandler: () {  },
                ),
                const SizedBox(height: 8),
                Visibility(
                  visible: _ispasswordvisible,
                  child: TextFormField(
                    validator: (value) => verifyEmpty(value!, errorMessage: ''),
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
                              child:  Icon(
                                MdiIcons.eyeOffOutline,
                                color: AppColors.colorHintText,
                              ),
                            ),
                      contentPadding: const EdgeInsets.symmetric(
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
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0xFFd3e0ea),
                          width: 0,
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
                    _buttonvalidationloginStartedResponse.length,
                    (index) => Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Container(
                        width: double.infinity,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {
                            final _form = _formKey.currentState;
                            if (type == "loginemail") {
                              onPressedLoginButtonForSearchEmail(
                                  context: context,
                                  action: _buttonvalidationloginStartedResponse[
                                          index]
                                      .onclickAction,
                                  data: _loginController.text,
                                  session: _session);
                            } else if (type == "loginpass") {
                              if (_buttonvalidationloginStartedResponse[index]
                                  .label
                                  .contains("Retour")) {
                                onPressedLoginButtonForStarted(
                                    context: context);
                              } else if (_buttonvalidationloginStartedResponse[
                                      index]
                                  .label
                                  .contains("Mot de passe Oublié")) {
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
                                    data: _passwordController.text,
                                    session: _session);
                              }
                            }

                            final currentFocus = FocusScope.of(context);

                            if (currentFocus.hasPrimaryFocus) {
                              currentFocus.unfocus();
                            }
                          },
                          child: Text(
                            _buttonvalidationloginStartedResponse[index].label,
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            primary: AppColors.primaryColor,
                            onPrimary: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.only(
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
                  onPressed: onTapToSignUp,

                  //     () {
                  //   FocusScope.of(context).unfocus();
                  //   Navigator.of(context)
                  //       .pushNamed(RouteGenerator.registerScreen);
                  // },
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
        ],
      ),
    );
  }

  Widget signInViewVisible(BuildContext context, {Function()? onTapToSignIn}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Align(
          alignment: Alignment.centerRight,
          child: IconButton(
            onPressed: () {
              Navigator.pop(context, 0);
            },
            padding: EdgeInsets.zero,
            splashRadius: 20,
            icon: Icon(
              Icons.close,
              size: 20,
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            children: [
              const Text(
                'J\'ai déjà un compte LogicRdv',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: Color(0xFF1c2b2d),
                ),
              ),
              TextButton(
                onPressed: onTapToSignIn,
                child: Text(
                  'Se connecter'.toUpperCase(),
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              )
            ],
          ),
        ),
        SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  'Inscription',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Color(0xFF1c2b2d),
                  ),
                ),
                const SizedBox(height: 8),
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      const SizedBox(height: 16),
                      AdaptativeTextFormField(
                        hintText: 'Nom',
                        validator: (value) => verifyEmpty(value!, errorMessage: ''),
                        controller: _nameController, 
                        suffixIcon: null, 
                        focusNode: null, 
                        onEditingComplete: () {  }, 
                        textInputAction: null, 
                        onTapeChangeHandler: (String ) {  }, 
                        onTapeFocusChangeHandler: () {  },
                      ),
                      const SizedBox(height: 8),
                      AdaptativeTextFormField(
                        hintText: 'Prénom',
                        validator: (value) => verifyEmpty(value!, errorMessage: ''),
                        controller: _prenomController, 
                        suffixIcon: null, 
                        focusNode: null, 
                        onEditingComplete: () {  }, 
                        textInputAction: null, 
                        onTapeChangeHandler: (String ) {  }, 
                        onTapeFocusChangeHandler: () {  },
                      ),
                      const SizedBox(height: 8),
                      AdaptativeTextFormField(
                        hintText: 'Numèro de téléphone',
                        textInputType: TextInputType.phone,
                        validator: (value) => verifyEmpty(value!, errorMessage: ''),
                        controller: _phoneController, suffixIcon: null, focusNode: null, onEditingComplete: () {  }, textInputAction: null, onTapeChangeHandler: (String ) {  }, onTapeFocusChangeHandler: () {  },
                      ),
                      const SizedBox(height: 8),
                      AdaptativeTextFormField(
                        hintText: 'Email',
                        textInputType: TextInputType.emailAddress,
                        validator: (val) => verifyEmpty(val!, errorMessage: ''),
                        controller: _emailController, suffixIcon: null, focusNode: null, 
                        onEditingComplete: () {  }, 
                        textInputAction: null, 
                        onTapeChangeHandler: (String ) {  }, 
                        onTapeFocusChangeHandler: () {  },
                      ),
                      const SizedBox(height: 8),
                      TextFormField(
                        controller: _passwordController,
                        obscureText: _password1,
                        validator: (value) => verifyEmpty(value!, errorMessage: ''),
                        decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.lock,
                            color: Color(0xFFd3e0ea),
                          ),
                          suffixIcon: InkWell(
                            onTap: () {
                              setState(() {
                                _password1 = !_password1;
                              });
                            },
                            child: Icon(
                              _password1
                                  ? Icons.remove_red_eye_outlined
                                  : Icons.remove_red_eye,
                              color: Color(0xFFd3e0ea),
                            ),
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 0),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(
                              color: AppColors.colorHintText,
                              width: 0,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color(0xFFd3e0ea),
                              width: 0,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.red,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color(0xFFd3e0ea),
                              width: 0,
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
                            color: Color(0xFFd3e0ea),
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      TextFormField(
                        controller: _confirmPasswordController,
                        obscureText: _password2,
                        validator: (value) => verifyEmpty(value!, errorMessage: ''),
                        decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.lock,
                            color: Color(0xFFd3e0ea),
                          ),
                          suffixIcon: InkWell(
                            onTap: () {
                              setState(() {
                                _password2 = !_password2;
                              });
                            },
                            child: Icon(
                              _password2
                                  ? Icons.remove_red_eye_outlined
                                  : Icons.remove_red_eye,
                              color: Color(0xFFd3e0ea),
                            ),
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 0),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(
                              color: AppColors.colorHintText,
                              width: 0,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color(0xFFd3e0ea),
                              width: 0,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.red,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color(0xFFd3e0ea),
                              width: 0,
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
                          hintText: 'Confirmer le mot de passe',
                          hintStyle: const TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 14,
                            color: Color(0xFFd3e0ea),
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      Row(
                        children: [
                          CheckBoxRemenberMe(
                            isChecked: _isChecked,
                            onCheckedBoxChanged: (checked) {
                              setState(() {
                                _isChecked = checked;
                                if (_isChecked) {
                                  _checkedCondition = '1';
                                } else {
                                  _checkedCondition = '0';
                                }
                              });
                            }, inactiveColor: null,
                          ),
                          const SizedBox(width: 8),
                          Expanded(
                            child: RichText(
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              softWrap: true,
                              text: TextSpan(
                                children: <TextSpan>[
                                  TextSpan(
                                    text: 'J\'ai lu et accepté ',
                                    style: TextStyle(
                                      color: AppColors.blackColor,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                  TextSpan(
                                      text: 'les conditions d\'utilisation',
                                      style: TextStyle(
                                        color: AppColors.secondaryColor,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () {
                                          Navigator.of(context).pushNamed(
                                              RouteGenerator
                                                  .conditionDutilisation);
                                        }),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                DefaultElevatedButton(
                  textFieldHeight: 50,
                  onPressed: () {
                    final _form = _formKey.currentState;
                    if (_form!.validate()) {
                      if (_passwordController.text ==
                          _confirmPasswordController.text) {
                        if (_checkedCondition == '1') {
                          onPressedCreatePatientButton(
                              context: context,
                              id: _idDoctor ?? '0',
                              cgu: _checkedCondition,
                              code: _codeController.text,
                              email: _emailController.text,
                              mobile: _phoneController.text,
                              nom: _nameController.text,
                              pass1: _passwordController.text,
                              phone: _cabinetPhoneController.text,
                              pass2: _confirmPasswordController.text,
                              prenom: _prenomController.text);
                        } else {
                          flushBarInfo(
                              "accepter les conditions d'utilisation", context);
                        }
                      } else {
                        flushBarInfo("mot de passe pas identique.", context);
                      }
                    }
                  },
                  text: 'M\'inscrire',
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  @override
  void initState() {
    onPressedLoginButtonForStarted(context: context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ProgressDialog _progressDialog =
        ProgressDialog(context, ProgressDialogType.Normal);
    return WillPopScope(
      onWillPop: () async {
        Navigator.pop(context, 0);
        return Future.value(false);
      },
      child: MultiBlocListener(
        listeners: [
          BlocListener<LoginBloc, LoginState>(listener: (context, state) {
            if (state is LoginLoading) {
              _progressDialog.setMessage("Connexion...");
              _progressDialog.show();
              _progressDialog.hide();
            } else if (state is LoginStartedLoadingSuccess) {
              setState(() {
                _ispasswordvisible = false;
                type = state.response.data.type;
                _headerText = state.response.data.headermessage;
                _session = state.response.data.session;
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
                    ), buttonLabel: '', 
                    action: () {  }, 
                    willPop: null,
                  );
                } else {
                  _ispasswordvisible = !_ispasswordvisible;
                  type = state.response.data.type;
                  _headerText = state.response.data.headermessage;
                  _session = state.response.data.session;
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
                    ), buttonLabel: '', action: () {  }, willPop: null,
                  );
                } else {
                  _tokenUser = state.response.data.user!.tokenuser;
                  _object = SharePreferenceObject(
                      token: state.response.data.user!.tokenuser,
                      email: state.response.data.user!.email,
                      firstName: state.response.data.user!.nom,
                      lastName: state.response.data.user!.prenom,
                      phoneNumber: state.response.data.user!.mobile);
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
                Navigator.of(context).pushNamed(
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
              customAlert(
                  context: context,
                  alertType: AlertType.error,
                  title: 'Echec de connexion',
                  content: Text(
                    state.error,
                    textAlign: TextAlign.center,
                  ), buttonLabel: '', action: () {  }, willPop: null);
            }
          }),
          BlocListener<InscriptionRapidBloc, InscriptionRapidState>(
              listener: (context, state) {
            if (state is InscriptionRapidStateLoading) {
            } else if (state is CheckDoctorLoadingSuccess) {
              setState(() {
                code = state.checkResponse.data.code;
                // _codeController.text = code;
                _etabsList.clear();
                _etabsList.addAll(state.checkResponse.data.etabs);
                _etabs = _etabsList[0];
                _isdoctorChecked = true;
                if (_etabsList.length == 1) {
                  _etabsList.forEach((element) {
                    _idDoctor = element.id;
                  });
                }
              });
            } else if (state is CreatePatientLoadingSuccess) {
              setState(() {
                onPressedLoginButton(
                    context: context,
                    login: state.createPatientResponse.params.email,
                    password: state.createPatientResponse.params.pass1);
              });
            } else if (state is InscriptionRapidStateLoadingFailure) {
              _etabsList.clear();
              _isdoctorChecked = true;
              customAlert(
                  context: context,
                  title: '',
                  content: Text(
                    state.error,
                    textAlign: TextAlign.center,
                  ),
                  alertType: AlertType.error, buttonLabel: '', action: () {  }, willPop: null);
            }
          }),
          BlocListener<SharedPreferenceBloc, SharedPreferenceState>(
              listener: (context, state) {
            if (state is SharedPreferenceWriteObjectState) {
              _progressDialog.hide();
              Navigator.pop(context, _tokenUser);
            }
          }),
        ],
        child: BlocBuilder<LoginBloc, LoginState>(builder: (context, state) {
          return AlertDialog(
            content: SingleChildScrollView(
              child: Wrap(
                children: [
                  Visibility(
                    visible: _isLoginViewVisible,
                    child: loginView(context, onTapToSignUp: () {
                      setState(() {
                        _isSignInViewVisible = !_isSignInViewVisible;
                        _isLoginViewVisible = !_isLoginViewVisible;
                      });
                    }),
                  ),
                  Visibility(
                    visible: _isSignInViewVisible,
                    child: signInViewVisible(context, onTapToSignIn: () {
                      setState(() {
                        _isSignInViewVisible = !_isSignInViewVisible;
                        _isLoginViewVisible = !_isLoginViewVisible;
                      });
                    }),
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
