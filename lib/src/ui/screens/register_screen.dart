import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logic_rdv_v0/src/common.dart';
import 'package:logic_rdv_v0/src/core/bloc/bloc_of_shapreference/shared_preference.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/generate_and_check_token/bloc/generate_and_check_token.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/generate_and_check_token/function/get_token.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/inscription_rapide/bloc/incription_rapid.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/inscription_rapide/function/inscription_rapid_function.dart';
import 'package:logic_rdv_v0/src/core/constants/constants.dart';
import 'package:logic_rdv_v0/src/core/helper/validator_form.dart';
import 'package:logic_rdv_v0/src/core/models/incription_model/inscription_check_response.dart';
import 'package:logic_rdv_v0/src/core/preference_key.dart';
import 'package:logic_rdv_v0/src/ui/alert_widgets/custom_snackbar.dart';
import 'package:logic_rdv_v0/src/ui/alert_widgets/progress_dialog.dart';
import 'package:logic_rdv_v0/src/ui/dialog_alert/custom_alert.dart';
import 'package:logic_rdv_v0/src/ui/screens/login_screen.dart';
import 'package:logic_rdv_v0/src/ui/shared/adaptative_appbar.dart';
import 'package:logic_rdv_v0/src/ui/shared/adaptative_textform_field.dart';
import 'package:logic_rdv_v0/src/ui/shared/buttons/default_elevated_button.dart';
import 'package:logic_rdv_v0/src/ui/shared/default_back_button.dart';
import 'package:logic_rdv_v0/src/ui/themes/colors.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import '../../common.dart';
import '../shared/started_drawer.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'dart:io' show Platform;

class RegisterScreen extends StatefulWidget {
  const RegisterScreen();

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  FocusNode _focusNodeConnectButton = FocusNode();

  double _textFieldHeight = 0;
  final _key = GlobalKey();
  bool _obscureText = true;
  final _formKey = GlobalKey<FormState>();
  final _formKey1 = GlobalKey<FormState>();

  bool _password1 = false;
  bool _password2 = false;
  TextEditingController _cabinetPhoneController = TextEditingController();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _prenomController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _codeController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();

  List<Etabs> _etabsList = [];
  bool _isChecked = false;
  bool _isdoctorChecked = false;
  String _dropDownSelected = "";

  late Etabs _etabs;
  late String code;
  late String _idDoctor;
  late String _checkedCondition = '0';

  @override
  void initState() {
    super.initState();
    _focusNodeConnectButton = FocusNode();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        _textFieldHeight = _key.currentContext!.size!.height;
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
    ProgressDialog progressDialog =
        ProgressDialog(context, ProgressDialogType.Normal);

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: _scaffoldKey,
        backgroundColor: Color(0xFFd3e0ea),
        appBar: AdaptativeAppBar(
          title: 'Inscription rapide',
          leading: DefaultBackButton(),
            actions: [
          IconButton(
            icon: Platform.isAndroid 
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
          ),
        ],
        ),
        endDrawer:StartedDrawer() ,
        body: MultiBlocListener(
          listeners: [
            BlocListener<GenerateAndCheckTokenBloc, GenerateAndCheckTokenState>(
                listener: (context, state) {
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
            BlocListener<InscriptionRapidBloc, InscriptionRapidState>(
                listener: (context, state) {
              if (state is InscriptionRapidStateLoading) {
                progressDialog.setMessage('Chargement....');
                progressDialog.show();
              } else if (state is CheckDoctorLoadingSuccess) {
                progressDialog.hide();
                FocusScope.of(context).requestFocus(new FocusNode());
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
                progressDialog.hide();
                Navigator.of(context)
                    .pushReplacementNamed(RouteGenerator.loginScreen);
              } else if (state is InscriptionRapidStateLoadingFailure) {
                progressDialog.hide();
                _etabsList.clear();
                _isdoctorChecked = false;
                if (state.error == messageErrorTokenInvalid ||
                    state.error == messageErrorTokenExpired) {
                  customAlert(
                    willPop: true,
                    alertType: AlertType.info,
                    context: context,
                    action: () {
                      Navigator.pushNamedAndRemoveUntil(context,
                          RouteGenerator.loginScreen, (route) => false);
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
                      Navigator.pushNamedAndRemoveUntil(context,
                          RouteGenerator.loginScreen, (route) => false);
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
                    ), title: '', buttonLabel: '',
                  );
                } else {
                  customAlert(
                      context: context,
                      alertType: AlertType.error,
                      title: '',
                      content: Text(
                        state.error,
                        textAlign: TextAlign.center,
                      ), buttonLabel: '', action: () {  }, willPop: false);
                }
              }
            })
          ],
          child: BlocBuilder<InscriptionRapidBloc, InscriptionRapidState>(
            builder: (context, state) {
              return SafeArea(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Container(
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
                                'J\'ai déjà un compte LogicRdv',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  color: Color(0xFF1c2b2d),
                                ),
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.pushReplacementNamed(
                                      context, RouteGenerator.loginScreen);
                                },
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
                        const SizedBox(height: 20),
                        Container(
                          padding: const EdgeInsets.all(16),
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
                              const SizedBox(height: 16),
                              const Text(
                                'Saisissez les informations demandées',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Color(0xFF1c2b2d),
                                ),
                              ),
                              const SizedBox(height: 20),
                              Form(
                                key: _formKey1,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: AdaptativeTextFormField(
                                        key: _key,
                                        textInputType: TextInputType.phone,
                                        hintText:
                                            'Téléphone du cabinet médical',
                                        controller: _cabinetPhoneController,
                                        validator: (value) =>
                                            verifyEmpty(value!),
                                        onEditingComplete: () {
                                          final _form = _formKey1.currentState;
                                          if (_form!.validate()) {
                                            onPressedCheckDoctorButton(
                                                context: context,
                                                phoneNumberCabinet:
                                                    _cabinetPhoneController
                                                        .text);
                                          }
                                        }, suffixIcon: null, textInputAction: null, focusNode: null,
                                      ),
                                    ),
                                    const SizedBox(width: 10),
                                    Visibility(
                                      visible: _isdoctorChecked,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: AppColors.pc,
                                        ),
                                        child: IconButton(
                                          icon: Icon(
                                            Icons.search,
                                            color: Colors.white,
                                          ),
                                          onPressed: () {
                                            final _form =
                                                _formKey1.currentState;
                                            if (_form!.validate()) {
                                              onPressedCheckDoctorButton(
                                                  context: context,
                                                  phoneNumberCabinet:
                                                      _cabinetPhoneController
                                                          .text);
                                            }
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Visibility(
                                child: const SizedBox(height: 20),
                                visible:
                                    _isdoctorChecked && _etabsList.length > 0,
                              ),
                              Visibility(
                                visible:
                                    _isdoctorChecked && _etabsList.length > 0,
                                child: Container(
                                  width: double.infinity,
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 10.0),
                                  height: _textFieldHeight,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15.0),
                                    border: Border.all(
                                        //color: Colors.grey[200],
                                        style: BorderStyle.solid,
                                        width: 0.80),
                                  ),
                                  child: DropdownButton<Etabs>(
                                    value: _etabs,
                                    underline: Divider(
                                      color: Colors.transparent,
                                    ),
                                    hint: Text('selectionner une valeur'),
                                    onChanged: (value) {
                                      setState(() {
                                        _etabs = value!;
                                        _etabsList.forEach((element) {
                                          if (element.name == value.name) {
                                            _idDoctor = element.id;
                                          }
                                        });
                                      });
                                    },
                                    items: _etabsList
                                        .map((value) => DropdownMenuItem(
                                              child: Text(
                                                value.name,
                                                style: TextStyle(
                                                    color: Colors.black),
                                              ),
                                              value: value,
                                            ))
                                        .toList(),
                                    isExpanded: true,
                                  ),
                                ),
                              ),
                              Visibility(
                                visible: _isdoctorChecked,
                                child: Form(
                                  key: _formKey,
                                  child: Column(
                                    children: [
                                      const SizedBox(height: 20),
                                      AdaptativeTextFormField(
                                        hintText: 'Nom',
                                        validator: (value) =>
                                            verifyEmpty(value!),
                                        controller: _nameController, suffixIcon: null, focusNode: null, textInputAction: null,
                                      ),
                                      Visibility(
                                          visible: _isdoctorChecked &&
                                              _etabsList.length > 0 &&
                                              code != '0',
                                          child: const SizedBox(height: 20)),
                                      Visibility(
                                        visible: _isdoctorChecked &&
                                            _etabsList.length > 0 &&
                                            code != '0',
                                        child: AdaptativeTextFormField(
                                          hintText: 'Code fourni par le Dr',
                                          controller: _codeController,
                                          suffixIcon: null, focusNode: null, textInputAction: null,
                                        ),
                                      ),
                                      const SizedBox(height: 8),
                                      AdaptativeTextFormField(
                                        hintText: 'Prénom',
                                        validator: (value) =>
                                            verifyEmpty(value!),
                                        controller: _prenomController,
                                        suffixIcon: null, focusNode: null, textInputAction: null,
                                      ),
                                      const SizedBox(height: 8),
                                      AdaptativeTextFormField(
                                        hintText: 'Numèro de téléphone',
                                        textInputType: TextInputType.phone,
                                        validator: (value) =>
                                            verifyEmpty(value!),
                                        controller: _phoneController,
                                        suffixIcon: null, focusNode: null, textInputAction: null,
                                      ),
                                      const SizedBox(height: 8),
                                      AdaptativeTextFormField(
                                        hintText: 'Email',
                                        textInputType:
                                            TextInputType.emailAddress,
                                        validator: (val) => verifyEmpty(val!),
                                        controller: _emailController,
                                        suffixIcon: null, focusNode: null, textInputAction: null,
                                      ),
                                      const SizedBox(height: 8),
                                      TextFormField(
                                        controller: _passwordController,
                                        obscureText: _password1,
                                        validator: (value) =>
                                            verifyEmpty(value!),
                                        decoration: InputDecoration(
                                          prefixIcon:  Icon(
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
                                                  ? Icons
                                                      .remove_red_eye_outlined
                                                  : Icons.remove_red_eye,
                                              color: Color(0xFFd3e0ea),
                                            ),
                                          ),
                                          contentPadding:
                                              const EdgeInsets.symmetric(
                                                  horizontal: 16, vertical: 0),
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(12),
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
                                            borderRadius:
                                                BorderRadius.circular(12),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: Colors.red,
                                              width: 1,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: Color(0xFFd3e0ea),
                                              width: 0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12),
                                          ),
                                          disabledBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: Color(0xFFd3e0ea),
                                              width: 0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12),
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
                                        validator: (value) =>
                                            verifyEmpty(value!),
                                        decoration: InputDecoration(
                                          prefixIcon:  Icon(
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
                                                  ? Icons
                                                      .remove_red_eye_outlined
                                                  : Icons.remove_red_eye,
                                              color: Color(0xFFd3e0ea),
                                            ),
                                          ),
                                          contentPadding:
                                              const EdgeInsets.symmetric(
                                                  horizontal: 16, vertical: 0),
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(12),
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
                                            borderRadius:
                                                BorderRadius.circular(12),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: Colors.red,
                                              width: 1,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: Color(0xFFd3e0ea),
                                              width: 0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12),
                                          ),
                                          disabledBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: Color(0xFFd3e0ea),
                                              width: 0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12),
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
                                          const SizedBox(width: 16),
                                          Expanded(
                                            child: RichText(
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                              softWrap: true,
                                              text: TextSpan(
                                                children: <TextSpan>[
                                                  TextSpan(
                                                    text:
                                                        'J\'ai lu et accepté ',
                                                    style: TextStyle(
                                                      color:
                                                          AppColors.blackColor,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                    ),
                                                  ),
                                                  TextSpan(
                                                      text:
                                                          'les conditions d\'utilisation',
                                                      style: TextStyle(
                                                        color: AppColors
                                                            .secondaryColor,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                      recognizer:
                                                          TapGestureRecognizer()
                                                            ..onTap = () {
                                                              Navigator.of(
                                                                      context)
                                                                  .pushNamed(
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
                              ),
                              const SizedBox(height: 16),
                              DefaultElevatedButton(
                                textFieldHeight: _textFieldHeight,
                                onPressed: () {
                                  if (!_isdoctorChecked) {
                                    final _form = _formKey1.currentState;
                                    if (_form!.validate()) {
                                      onPressedCheckDoctorButton(
                                          context: context,
                                          phoneNumberCabinet:
                                              _cabinetPhoneController.text);
                                    }
                                  } else {
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
                                              phone:
                                                  _cabinetPhoneController.text,
                                              pass2: _confirmPasswordController
                                                  .text,
                                              prenom: _prenomController.text);
                                        } else {
                                          flushBarInfo(
                                              "accepter les conditions d'utilisation",
                                              context);
                                        }
                                      } else {
                                        flushBarInfo(
                                            "mot de passe pas identique.",
                                            context);
                                      }
                                    }
                                  }
                                },
                                text: _isdoctorChecked
                                    ? 'M\'inscrire'
                                    : 'Trouvez votre cabinet',
                              ),
                              const Divider(),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
