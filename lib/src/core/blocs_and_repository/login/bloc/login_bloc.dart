import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/login/bloc/login.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/login/login_repository/login_repository.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginRepository repository;

  LoginBloc({required this.repository}) : super(LoginLoading());

 
  Stream<LoginState> mapEventToState(LoginEvent event) async* {
    yield LoginLoading();
    if (event is Login) {
      yield* _mapGetUserLoginToState(event);
    } else if (event is ForgotPassword) {
      yield* _mapGetNewPasswordToState(event);
    } else if (event is LoginStarted) {
      yield* _mapGetUserLoginStartedToState(event);
    } else if (event is LoginSearchEmail) {
      yield* _mapGetUserByEmailLoginToState(event);
    } else if (event is LoginSearchPass) {
      yield* _mapGetUserByPassLoginToState(event);
    } else if (event is LoginForForgotPassword) {
      yield* _mapGetUserForgotPassLoginToState(event);
    } else if (event is LoginForSendCode) {
      yield* _mapGetUserForSendCodeLoginToState(event);
    } else if (event is LoginForNewPassword) {
      yield* _mapGetUserForNewPasswordLoginToState(event);
    } else if (event is LoginForAsckcode) {
      yield* _mapGetUserForNewCodeLoginToState(event);
    }
  }

  Stream<LoginState> _mapGetUserLoginStartedToState(LoginStarted event) async* {
    try {
      final userResponse =
          await repository.loginStarted(login: event.loginStartedRequest);
      yield LoginStartedLoadingSuccess(response: userResponse);
    } catch (error) {
      yield LoginFailure(error: error.toString());
    }
  }

  Stream<LoginState> _mapGetUserByEmailLoginToState(
      LoginSearchEmail event) async* {
    try {
      final userResponse =
          await repository.loginSearchEmail(login: event.loginStartedRequest);
      yield LoginSearchEmailLoadingSuccess(response: userResponse);
    } catch (error) {
      yield LoginFailure(error: error.toString());
    }
  }

  Stream<LoginState> _mapGetUserByPassLoginToState(
      LoginSearchPass event) async* {
    try {
      final userResponse =
          await repository.loginSearchPass(login: event.loginStartedRequest);
      yield LoginSearchPassLoadingSuccess(response: userResponse);
    } catch (error) {
      yield LoginFailure(error: error.toString());
    }
  }

  Stream<LoginState> _mapGetUserForgotPassLoginToState(
      LoginForForgotPassword event) async* {
    try {
      final userResponse =
          await repository.loginForgotPass(login: event.loginStartedRequest);
      yield LoginForgotPassLoadingSuccess(response: userResponse);
    } catch (error) {
      yield LoginFailure(error: error.toString());
    }
  }

  Stream<LoginState> _mapGetUserForSendCodeLoginToState(
      LoginForSendCode event) async* {
    try {
      final userResponse =
          await repository.loginForgotForSend(login: event.loginStartedRequest);
      yield LoginForSendCodeLoadingSuccess(response: userResponse);
    } catch (error) {
      yield LoginFailure(error: error.toString());
    }
  }

  Stream<LoginState> _mapGetUserForNewPasswordLoginToState(
      LoginForNewPassword event) async* {
    try {
      final userResponse = await repository.loginForNewPassword(
          login: event.loginStartedRequest);
      yield LoginForNewPassLoadingSuccess(response: userResponse);
    } catch (error) {
      yield LoginFailure(error: error.toString());
    }
  }

  Stream<LoginState> _mapGetUserForNewCodeLoginToState(
      LoginForAsckcode event) async* {
    try {
      final userResponse =
          await repository.loginForNewCode(login: event.loginStartedRequest);
      yield LoginForAskNewCodeLoadingSuccess(response: userResponse);
    } catch (error) {
      yield LoginFailure(error: error.toString());
    }
  }

  Stream<LoginState> _mapGetUserLoginToState(Login event) async* {
    try {
      final userResponse =
          await repository.userLogin(login: event.loginRequest);
      yield LoginLoadingSuccess(response: userResponse);
    } catch (error) {
      yield LoginFailure(error: error.toString());
    }
  }

  Stream<LoginState> _mapGetNewPasswordToState(ForgotPassword event) async* {
    try {
      final userResponse =
          await repository.forgotPassword(forgotPasswordRequest: event.email);
      yield PasswordChangeSuccessFully(response: userResponse);
    } catch (error) {
      yield LoginFailure(error: error.toString());
    }
  }
}
