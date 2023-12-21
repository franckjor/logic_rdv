import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logic_rdv_v0/src/common.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/login/bloc/login.dart';
import 'package:logic_rdv_v0/src/core/models/login_model/forgot_password_request.dart';
import 'package:logic_rdv_v0/src/core/models/login_model/login_request.dart';
import 'package:logic_rdv_v0/src/core/models/login_model/login_started_request.dart';

onPressedLoginButton({required BuildContext context,required String login,required String password}) {
  LoginRequest _login = LoginRequest((builder) => builder
    ..password = password
    ..email = login);
  BlocProvider.of<LoginBloc>(context)..add(Login(loginRequest: _login));
}

onPressedResetPasswordButton({required BuildContext context,required String email}) {
  ForgotPasswordRequest _resetPassword =
      ForgotPasswordRequest((builder) => builder..email = email);
  BlocProvider.of<LoginBloc>(context)
    ..add(ForgotPassword(email: _resetPassword));
}

onPressedLoginButtonForStarted({required BuildContext context}) {
  LoginStartedRequest _login = LoginStartedRequest((builder) => builder
    ..data = ""
    ..action = ""
    ..session = "");
  BlocProvider.of<LoginBloc>(context)
    ..add(LoginStarted(loginStartedRequest: _login));
}

onPressedLoginButtonForSearchEmail({required BuildContext context,required String data,required String action,required String session}) {
  LoginStartedRequest _login = LoginStartedRequest((builder) => builder
    ..data = data
    ..action = action
    ..session = session);
  BlocProvider.of<LoginBloc>(context)
    ..add(LoginSearchEmail(loginStartedRequest: _login));
}

onPressedLoginButtonForSearchPass({required BuildContext context,required String data,required String action,required String session}) {
  LoginStartedRequest _login = LoginStartedRequest((builder) =>
  builder
    ..data = data
    ..action = action
    ..session = session);
  BlocProvider.of<LoginBloc>(context)
    ..add(LoginSearchPass(loginStartedRequest: _login));
}
onPressedLoginButtonForForgotPassword({required BuildContext context,required String data,required String action,required String session}) {
  LoginStartedRequest _login = LoginStartedRequest((builder) => builder
    ..data = data
    ..action = action
    ..session = session);
  BlocProvider.of<LoginBloc>(context)
    ..add(LoginForForgotPassword(loginStartedRequest: _login));
}


onPressedLoginButtonForSendCode({required BuildContext context,required String data,required String action,required String session}) {
  LoginStartedRequest _login = LoginStartedRequest((builder) => builder
    ..data = data
    ..action = action
    ..session = session);
  BlocProvider.of<LoginBloc>(context)
    ..add(LoginForSendCode(loginStartedRequest: _login));
}

onPressedLoginButtonForNewPassword({required BuildContext context,required String data,required String action,required String session}) {
  LoginStartedRequest _login = LoginStartedRequest((builder) => builder
    ..data = data
    ..action = action
    ..session = session);
  BlocProvider.of<LoginBloc>(context)
    ..add(LoginForNewPassword(loginStartedRequest: _login));
}

onPressedLoginButtonAskCodeSms({required BuildContext context,required String data,required String action,required String session}) {
  LoginStartedRequest _login = LoginStartedRequest((builder) => builder
    ..data = data
    ..action = action
    ..session = session);
  BlocProvider.of<LoginBloc>(context)
    ..add(LoginForAsckcode(loginStartedRequest: _login));
}
