import 'package:equatable/equatable.dart';
import 'package:logic_rdv_v0/src/core/models/login_model/forgot_password_request.dart';
import 'package:logic_rdv_v0/src/core/models/login_model/login_request.dart';
import 'package:logic_rdv_v0/src/core/models/login_model/login_started_request.dart';

abstract class LoginEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class Login extends LoginEvent {
  final LoginRequest loginRequest;

  Login({required this.loginRequest});

  @override
  List<Object> get props => [loginRequest];

  @override
  String toString() => 'Login {loginRequest: $loginRequest}';
}

class LoginStarted extends LoginEvent {
  final LoginStartedRequest loginStartedRequest;

  LoginStarted({required this.loginStartedRequest});

  @override
  List<Object> get props => [loginStartedRequest];

  @override
  String toString() => 'LoginStarted {loginStartedRequest: $loginStartedRequest}';
}

class LoginSearchEmail extends LoginEvent {
  final LoginStartedRequest loginStartedRequest;

  LoginSearchEmail({required this.loginStartedRequest});

  @override
  List<Object> get props => [loginStartedRequest];

  @override
  String toString() => 'LoginSearchEmail {loginStartedRequest: $loginStartedRequest}';
}

class LoginSearchPass extends LoginEvent {
  final LoginStartedRequest loginStartedRequest;

  LoginSearchPass({required this.loginStartedRequest});

  @override
  List<Object> get props => [loginStartedRequest];

  @override
  String toString() => 'LoginSearchPass {loginStartedRequest: $loginStartedRequest}';
}

class LoginForForgotPassword extends LoginEvent {
  final LoginStartedRequest loginStartedRequest;

  LoginForForgotPassword({required this.loginStartedRequest});

  @override
  List<Object> get props => [loginStartedRequest];

  @override
  String toString() => 'LoginForForgotPassword {loginStartedRequest: $loginStartedRequest}';
}

class LoginForSendCode extends LoginEvent {
  final LoginStartedRequest loginStartedRequest;

  LoginForSendCode({required this.loginStartedRequest});

  @override
  List<Object> get props => [loginStartedRequest];

  @override
  String toString() => 'LoginForSendCode {loginStartedRequest: $loginStartedRequest}';
}
class LoginForNewPassword extends LoginEvent {
  final LoginStartedRequest loginStartedRequest;

  LoginForNewPassword({required this.loginStartedRequest});

  @override
  List<Object> get props => [loginStartedRequest];

  @override
  String toString() => 'LoginForSendCode {loginStartedRequest: $loginStartedRequest}';
}
class LoginForAsckcode extends LoginEvent {
  final LoginStartedRequest loginStartedRequest;

  LoginForAsckcode({required this.loginStartedRequest});

  @override
  List<Object> get props => [loginStartedRequest];

  @override
  String toString() => 'LoginForAsckcode {loginStartedRequest: $loginStartedRequest}';
}

class ForgotPassword extends LoginEvent {
  final ForgotPasswordRequest email;

  ForgotPassword({required this.email});

  @override
  List<Object> get props => [email];

  @override
  String toString() => 'ForgotPassword {email: $email}';
}
