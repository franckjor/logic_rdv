import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logic_rdv_v0/src/common.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/login/bloc/login.dart';
import 'package:logic_rdv_v0/src/core/models/login_model/forgot_password_request.dart';
import 'package:logic_rdv_v0/src/core/models/login_model/login_request.dart';
import 'package:logic_rdv_v0/src/core/models/login_model/login_started_request.dart';

onPressedLoginButton({BuildContext context, String login, String password}) {
  LoginRequest _login = LoginRequest((builder) => builder
    ..password = password
    ..email = login);
  BlocProvider.of<LoginBloc>(context)..add(Login(loginRequest: _login));
}

onPressedResetPasswordButton({BuildContext context, String email}) {
  ForgotPasswordRequest _resetPassword =
      ForgotPasswordRequest((builder) => builder..email = email);
  BlocProvider.of<LoginBloc>(context)
    ..add(ForgotPassword(email: _resetPassword));
}

onPressedLoginButtonForStarted({BuildContext context}) {
  LoginStartedRequest _login = LoginStartedRequest((builder) => builder
    ..data = ""
    ..action = ""
    ..session = "");
  BlocProvider.of<LoginBloc>(context)
    ..add(LoginStarted(loginStartedRequest: _login));
}

onPressedLoginButtonForSearchEmail({BuildContext context,String data,String action,String session}) {
  LoginStartedRequest _login = LoginStartedRequest((builder) => builder
    ..data = data
    ..action = action
    ..session = session);
  BlocProvider.of<LoginBloc>(context)
    ..add(LoginSearchEmail(loginStartedRequest: _login));
}

onPressedLoginButtonForSearchPass({BuildContext context,String data,String action,String session}) {
  LoginStartedRequest _login = LoginStartedRequest((builder) =>
  builder
    ..data = data
    ..action = action
    ..session = session);
  BlocProvider.of<LoginBloc>(context)
    ..add(LoginSearchPass(loginStartedRequest: _login));
}
onPressedLoginButtonForForgotPassword({BuildContext context,String data,String action,String session}) {
  LoginStartedRequest _login = LoginStartedRequest((builder) => builder
    ..data = data
    ..action = action
    ..session = session);
  BlocProvider.of<LoginBloc>(context)
    ..add(LoginForForgotPassword(loginStartedRequest: _login));
}


onPressedLoginButtonForSendCode({BuildContext context,String data,String action,String session}) {
  LoginStartedRequest _login = LoginStartedRequest((builder) => builder
    ..data = data
    ..action = action
    ..session = session);
  BlocProvider.of<LoginBloc>(context)
    ..add(LoginForSendCode(loginStartedRequest: _login));
}

onPressedLoginButtonForNewPassword({BuildContext context,String data,String action,String session}) {
  LoginStartedRequest _login = LoginStartedRequest((builder) => builder
    ..data = data
    ..action = action
    ..session = session);
  BlocProvider.of<LoginBloc>(context)
    ..add(LoginForNewPassword(loginStartedRequest: _login));
}

onPressedLoginButtonAskCodeSms({BuildContext context,String data,String action,String session}) {
  LoginStartedRequest _login = LoginStartedRequest((builder) => builder
    ..data = data
    ..action = action
    ..session = session);
  BlocProvider.of<LoginBloc>(context)
    ..add(LoginForAsckcode(loginStartedRequest: _login));
}
