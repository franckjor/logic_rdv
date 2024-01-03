import 'dart:io';

import 'package:animations/animations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart' as foundation;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:logic_rdv_v0/src/core/bloc/bloc_of_shapreference/model/shared_preference_object.dart';
import 'package:logic_rdv_v0/src/core/bloc/bloc_of_shapreference/shared_preference.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/generate_and_check_token/bloc/generate_and_check_token.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/subcribe_notification/bloc/subcribe.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/subcribe_notification/repository/subscribe_repository.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/user/bloc/user.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/user/user_function/user_function.dart';
import 'package:logic_rdv_v0/src/core/constants/constants.dart';
import 'package:logic_rdv_v0/src/core/helper/validator_form.dart';
import 'package:logic_rdv_v0/src/core/preference_key.dart';
import 'package:logic_rdv_v0/src/ui/alert_widgets/custom_snackbar.dart';
import 'package:logic_rdv_v0/src/ui/alert_widgets/progress_dialog.dart';
import 'package:logic_rdv_v0/src/ui/dialog_alert/custom_alert.dart';
import 'package:logic_rdv_v0/src/ui/dialog_alert/custom_confirm_alert.dart';
import 'package:logic_rdv_v0/src/ui/shared/adaptative_appbar.dart';
import 'package:logic_rdv_v0/src/ui/shared/adaptative_textform_field.dart';
import 'package:logic_rdv_v0/src/ui/shared/my_drawer.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../common.dart';

bool get isAndroid =>
    foundation.defaultTargetPlatform == TargetPlatform.android;

bool get isWeb => foundation.kIsWeb;

class UserEditedProfile extends StatefulWidget {
  @override
  _UserEditedProfileState createState() => _UserEditedProfileState();
}

class _UserEditedProfileState extends State<UserEditedProfile> {
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
  }

  removeValues() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove(PreferenceKey.objectKey);
  }

  SharePreferenceObject _object;
  File _image;
  final picker = ImagePicker();

  Future<void> _takePicture() async {
    Navigator.of(context).pop();

    final pickedFile = await ImagePicker.pickImage(source: ImageSource.camera);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  Future<void> _selectFromGallerie() async {
    Navigator.of(context).pop();

    final pickedFile = await ImagePicker.pickImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  void _displayDialogToSelectImage(BuildContext context) {
    showModal(
      context: context,
      configuration: FadeScaleTransitionConfiguration(),
      builder: (context) => AlertDialog(
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            InkWell(
              onTap: () => _takePicture(),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
                child: Row(
                  children: [
                    Icon(
                      MdiIcons.camera,
                      color: Colors.grey.shade600,
                    ),
                    SizedBox(width: 16),
                    Text('Prendre une photo')
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () => _selectFromGallerie(),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
                child: Row(
                  children: [
                    Icon(
                      MdiIcons.image,
                      color: Colors.grey.shade600,
                    ),
                    SizedBox(width: 16),
                    Text('Choisir dans la Galerie')
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _focusNodeConnectButton.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ProgressDialog progressDialog =
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
          page: '0',
          email: _email,
          fullNme: _fullName,
        ),
      ),
      backgroundColor: AppColors.primaryColor,
      appBar: AdaptativeAppBar(
        title: 'Modification du Profil',
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
              progressDialog.hide();
              flushBarSuccess(state.userResponse.message, context);
              _object = SharePreferenceObject(
                  token: _tokenUser,
                  email: state.userResponse.params.compteEmail,
                  firstName: state.userResponse.params.comptePrenom,
                  lastName: state.userResponse.params.compteNom,
                  phoneNumber: state.userResponse.params.compteMobile);
              BlocProvider.of<SharedPreferenceBloc>(context)
                ..add(SetSharedPreferenceObject(
                  objectKey: PreferenceKey.objectKey,
                  object: _object,
                ));
            } else if (state is UserCheckoutStateLoadingSuccess) {
              progressDialog.hide();
              removeValues();
              Navigator.of(context).pushNamedAndRemoveUntil(
                  RouteGenerator.welcomeScreen, (route) => false);
            } else if (state is UserStateLoadingFailure) {
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
                progressDialog.hide();
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
                progressDialog.hide();
                customAlert(
                    alertType: AlertType.error,
                    context: context,
                    content: Container(
                      child: Text(state.error),
                    ));
              }
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
                _email = state.sharePreferenceObject.email;
                _fullName = state.sharePreferenceObject.firstName +
                    " " +
                    state.sharePreferenceObject.lastName;
                _tokenUser = state.sharePreferenceObject.token;
                _nameController.text = state.sharePreferenceObject.firstName;
                _surNameController.text = state.sharePreferenceObject.lastName;
                _emailController.text = state.sharePreferenceObject.email;
                _mobileController.text =
                    state.sharePreferenceObject.phoneNumber;
              });
            } else if (state is SharedPreferenceWriteObjectState) {
              Navigator.of(context)
                  .pushReplacementNamed(RouteGenerator.userProfileScreen);
            }
          })
        ],
        child: BlocBuilder<UserBloc, UserState>(builder: (context, state) {
          return GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Container(
                padding: EdgeInsets.fromLTRB(16, 24, 16, 0),
                decoration: BoxDecoration(
                  color: Color(0xFFeff4fb),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),
                child: SafeArea(
                  child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          const SizedBox(height: 16),
                          Column(
                            children: [
                              GestureDetector(
                                onTap: () =>
                                    _displayDialogToSelectImage(context),
                                child: Stack(
                                  children: [
                                    Material(
                                      color: Colors.white,
                                      elevation: 4,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(40),
                                      ),
                                      child: Container(
                                        child: CircleAvatar(
                                          radius: 40,
                                          backgroundImage: _image == null
                                              ? AssetImage(
                                                  'assets/images/medecin.png',
                                                )
                                              : FileImage(_image),
                                          backgroundColor: Colors.white,
                                        ),
                                        padding: EdgeInsets.all(2),
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 0,
                                      right: -2,
                                      child: InkWell(
                                        onTap: () =>
                                            _displayDialogToSelectImage(
                                                context),
                                        child: Container(
                                          height: 30,
                                          width: 30,
                                          decoration: BoxDecoration(
                                            color: Colors.black12,
                                            shape: BoxShape.circle,
                                          ),
                                          child: Icon(
                                              Platform.isAndroid
                                                  ? MdiIcons.camera
                                                  : CupertinoIcons.camera_fill,
                                              size: 18,
                                              color: Colors.black54),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
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
                          _LabelWidget(
                            label: 'Nom',
                          ),
                          const SizedBox(height: 4),
                          AdaptativeTextFormField(
                            hintText: 'Nom',
                            controller: _nameController,
                            validator: (value) {
                              return verifyEmpty(value);
                            },
                          ),
                          const SizedBox(height: 10),
                          _LabelWidget(
                            label: 'Prénom',
                          ),
                          const SizedBox(height: 4),
                          AdaptativeTextFormField(
                            hintText: 'Prénom',
                            controller: _surNameController,
                          ),
                          const SizedBox(height: 10),
                          _LabelWidget(
                            label: 'Numéro de téléphone',
                          ),
                          const SizedBox(height: 4),
                          AdaptativeTextFormField(
                            hintText: 'Numero de telephone',
                            controller: _mobileController,
                            validator: (value) {
                              return verifyEmpty(value);
                            },
                          ),
                          const SizedBox(height: 10),
                          _LabelWidget(
                            label: 'Email',
                          ),
                          const SizedBox(height: 4),
                          AdaptativeTextFormField(
                            hintText: 'Email',
                            controller: _emailController,
                            validator: (value) {
                              return verifyEmpty(value);
                            },
                          ),
                          SizedBox(height: 10),
                          _LabelWidget(
                            label: 'Adresse',
                          ),
                          const SizedBox(height: 4),
                          AdaptativeTextFormField(
                            hintText: 'Adresse',
                            controller: _adressController,
                          ),
                          SizedBox(height: 10),
                          _LabelWidget(
                            label: 'Ville',
                          ),
                          const SizedBox(height: 4),
                          AdaptativeTextFormField(
                            hintText: 'Ville',
                            controller: _villeController,
                          ),
                          SizedBox(height: 10),
                          _LabelWidget(
                            label: 'Code Postal',
                          ),
                          const SizedBox(height: 4),
                          AdaptativeTextFormField(
                            hintText: 'Code postal',
                            controller: _postalCodeController,
                          ),
                          SizedBox(height: 10),
                          _LabelWidget(
                            label: 'Mot de passe',
                          ),
                          const SizedBox(height: 4),
                          AdaptativeTextFormField(
                            obscureText: _obscureText,
                            controller: _passwordController,
                            hintText: 'Mot de passe',
                            suffixIcon: InkWell(
                              onTap: () {
                                setState(() {
                                  _obscureText = !_obscureText;
                                });
                              },
                              borderRadius: BorderRadius.circular(50),
                              child: Padding(
                                padding: const EdgeInsets.all(4),
                                child: Icon(_obscureText
                                    ? MdiIcons.eyeOutline
                                    : MdiIcons.eyeOffOutline),
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          _LabelWidget(
                            label: 'Confirmation mot de passe',
                          ),
                          const SizedBox(height: 4),
                          AdaptativeTextFormField(
                            obscureText: _obscureText,
                            controller: _passwordConfirmController,
                            hintText: 'Confirmation mot de passe',
                            suffixIcon: InkWell(
                              onTap: () {
                                setState(() {
                                  _obscureText = !_obscureText;
                                });
                              },
                              borderRadius: BorderRadius.circular(50),
                              child: Padding(
                                padding: const EdgeInsets.all(4),
                                child: Icon(_obscureText
                                    ? MdiIcons.eyeOutline
                                    : MdiIcons.eyeOffOutline),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            height: _textFieldHeight,
                            width: double.infinity,
                            child: ElevatedButton.icon(
                              focusNode: _focusNodeConnectButton,
                              onPressed: () {
                                final currentFocus = FocusScope.of(context);
                                if (currentFocus.hasPrimaryFocus) {
                                  currentFocus.unfocus();
                                }
                                final _form = _formKey.currentState;
                                if (_passwordController.text ==
                                    _passwordConfirmController.text) {
                                  if (_form.validate()) {
                                    progressDialog.setMessage('Chargment...');
                                    progressDialog.show();
                                    updateUserAccount(
                                        context: context,
                                        tokenUser: _tokenUser,
                                        compte_ville: _villeController.text,
                                        compte_prenom: _surNameController.text,
                                        compte_password_conf:
                                            _passwordConfirmController.text,
                                        compte_password:
                                            _passwordController.text,
                                        compte_nom: _nameController.text,
                                        compte_mobile: _mobileController.text,
                                        compte_email: _emailController.text,
                                        compte_codepostal:
                                            _postalCodeController.text,
                                        compte_adresse: _adressController.text);
                                  }
                                } else {
                                  flushBarError(
                                      "Mot de passe different", context);
                                }
                              },
                              icon: Icon(MdiIcons.accountEdit),
                              label: Text(
                                '     Modifier     ',
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
                          ),
                          SizedBox(height: 10),
                          Container(
                            height: _textFieldHeight,
                            width: double.infinity,
                            child: ElevatedButton.icon(
                              focusNode: _focusNodeConnectButton,
                              onPressed: () {
                                final currentFocus = FocusScope.of(context);
                                if (currentFocus.hasPrimaryFocus) {
                                  currentFocus.unfocus();
                                }
                                customConfirmAlert(
                                    context: context,
                                    title: '',
                                    alertType: AlertType.info,
                                    content: Container(
                                      child: Text(
                                        "Etes vous sure de vouloir vous désinscrire de l'application ?",
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    onYesAction: () {
                                      checkoutUserAccount(
                                          tokenUser: _tokenUser,
                                          context: context);
                                    });
                              },
                              icon: Icon(MdiIcons.delete),
                              label: Text(
                                'Se désinscrire',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                primary: AppColors.delete_button_colors,
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}

class _LabelWidget extends StatelessWidget {
  final String label;
  const _LabelWidget({
    super.key,
    this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8),
      child: Text(
        label,
        style: TextStyle(
          fontWeight: FontWeight.w500,
          color: Colors.blueGrey,
          fontSize: 16,
        ),
      ),
    );
  }
}
