import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logic_rdv_v0/src/common.dart';
import 'package:logic_rdv_v0/src/core/bloc/bloc_of_shapreference/shared_preference.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/generate_and_check_token/bloc/generate_and_check_token.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/generate_and_check_token/function/get_token.dart';
import 'package:logic_rdv_v0/src/core/preference_key.dart';
import 'package:logic_rdv_v0/src/ui/dialog_alert/custom_alert.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen();

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  String _tokenuser = '';
  int i = 0;

  @override
  void initState() {
  super.initState();
  // Ajouter les écouteurs d'événements pour les blocs ici
  BlocProvider.of<SharedPreferenceBloc>(context).add(
    GetSharedPreferenceTokenAuthorization(
      tokenAuthorizationKey: PreferenceKey.tokenAuthorizationKey,
    ),
  );
  // ...
}
  // void initState() {
  //   super.initState();
  //   BlocProvider.of<SharedPreferenceBloc>(context).add(
  //     GetSharedPreferenceTokenAuthorization(
  //       tokenAuthorizationKey: PreferenceKey.tokenAuthorizationKey,
  //     ),
  //   );
  // }

  void generateAnotherToken(BuildContext context) {
    BlocProvider.of<GenerateAndCheckTokenBloc>(context).add(
      GetTokenAuthorisationEvent(getTokenRequest: getTokenRequest),
    );
  }

  removeValues() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove(PreferenceKey.objectKey);
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<GenerateAndCheckTokenBloc, GenerateAndCheckTokenState>(
          listener: (context, state) {
            if (state is GenerateTokenStateLoadingSuccess) {
              BlocProvider.of<SharedPreferenceBloc>(context).add(
                SetSharedPreferenceTokenAuthorization(
                  tokenAuthorizationKey: PreferenceKey.tokenAuthorizationKey,
                  tokenAuthorization: state.getToken.data.authorization.replaceAll("X-LOGICRDV-AUTH:", ""),
                ),
              );
            } else if (state is VerifyTokenStateLoadingSuccess) {
              BlocProvider.of<SharedPreferenceBloc>(context).add(
                GetSharedPreferenceObject(objectKey: PreferenceKey.objectKey),
              );
            } else if (state is GenerateAndCheckTokenStateLoadingFailure) {
              if (i == 3) {
                customAlert(
                  alertType: AlertType.info,
                  context: context,
                  content: Text(
                    state.error,
                    textAlign: TextAlign.center,
                  ),
                  title: '',
                  buttonLabel: '',
                  action: () {},
                  willPop: false,
                );
              } else {
                setState(() {
                  i++;
                  removeValues();
                  generateAnotherToken(context);
                });
              }
            }
          },
        ),
        BlocListener<SharedPreferenceBloc, SharedPreferenceState>(
          listener: (_, state) {
            if (state is SharedPreferenceTokenAuthorizationWriteState) {
              navigateTo(context);
            } else if (state is SharedTokenAuthorizationLoadingSuccess) {
              BlocProvider.of<GenerateAndCheckTokenBloc>(context).add(
                CheckTokenAuthorisationEvent(),
              );
            } else if (state is SharedPreferenceReadObjectState) {
              setState(() {
                _tokenuser = state.sharePreferenceObject!.token;
                if (_tokenuser != null) {
                  navigateToHomePage(context);
                } else {
                  generateAnotherToken(context);
                }
              });
            } else if (state is SharedPreferenceLoadingFailure) {
              generateAnotherToken(context);
            }
          },
        ),
      ],
      child: BlocBuilder<GenerateAndCheckTokenBloc, GenerateAndCheckTokenState>(
        builder: (context, state) {
          return Scaffold(
            backgroundColor: Colors.white,
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/gif/logicrdv.gif',
                  ),
                  //Center(
                  // child: AdaptativeIndicator(),
                  //)
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  void navigateTo(BuildContext context) {
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.of(context).pushNamedAndRemoveUntil(
        RouteGenerator.welcomeScreen,
        (route) => false,
      );
    });
  }

  void navigateToHomePage(BuildContext context) {
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.of(context).pushNamedAndRemoveUntil(
        RouteGenerator.appointmentScreen,
        (route) => false,
      );
    });
  }
}