import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:logic_rdv_v0/src/core/models/login_model/login_process_response_end.dart';
import 'package:logic_rdv_v0/src/core/models/login_model/login_response.dart';
import 'package:logic_rdv_v0/src/core/models/login_model/login_started_response.dart';

class LoginState extends Equatable {
  @override
  List<Object> get props => [];
}

class LoginEmpty extends LoginState {}

class LoginLoading extends LoginState {}

class LoginLoadingSuccess extends LoginState {
  final LoginResponse response;
  LoginLoadingSuccess({this.response});

  @override
  List<Object> get props => [response];

  @override
  String toString() => 'LoginLoadingSuccess {response: $response}';
}

class LoginStartedLoadingSuccess extends LoginState {
  final LoginStartedResponse response;
  LoginStartedLoadingSuccess({this.response});

  @override
  List<Object> get props => [response];

  @override
  String toString() => 'LoginStartedLoadingSuccess {response: $response}';
}
class LoginSearchEmailLoadingSuccess extends LoginState {
  final LoginStartedResponse response;
  LoginSearchEmailLoadingSuccess({this.response});

  @override
  List<Object> get props => [response];

  @override
  String toString() => 'LoginSearchEmailLoadingSuccess {response: $response}';
}

class LoginSearchPassLoadingSuccess extends LoginState {
  final LoginProcessResponseEnd response;
  LoginSearchPassLoadingSuccess({this.response});

  @override
  List<Object> get props => [response];

  @override
  String toString() => 'LoginSearchPassLoadingSuccess {response: $response}';
}

class LoginForgotPassLoadingSuccess extends LoginState {
  final LoginStartedResponse response;
  LoginForgotPassLoadingSuccess({this.response});

  @override
  List<Object> get props => [response];

  @override
  String toString() => 'LoginForgotPassLoadingSuccess {response: $response}';
}

class LoginForSendCodeLoadingSuccess extends LoginState {
  final LoginStartedResponse response;
  LoginForSendCodeLoadingSuccess({this.response});

  @override
  List<Object> get props => [response];

  @override
  String toString() => 'LoginForSendCodeLoadingSuccess {response: $response}';
}

class LoginForNewPassLoadingSuccess extends LoginState {
  final LoginProcessResponseEnd response;
  LoginForNewPassLoadingSuccess({this.response});

  @override
  List<Object> get props => [response];

  @override
  String toString() => 'LoginForNewPassLoadingSuccess {response: $response}';
}

class LoginForAskNewCodeLoadingSuccess extends LoginState {
  final LoginStartedResponse response;
  LoginForAskNewCodeLoadingSuccess({this.response});

  @override
  List<Object> get props => [response];

  @override
  String toString() => 'LoginForAskNewCodeLoadingSuccess {response: $response}';
}

class PasswordChangeSuccessFully extends LoginState {
  final LoginResponse response;
  PasswordChangeSuccessFully({this.response});

  @override
  List<Object> get props => [response];

  @override
  String toString() => 'PasswordChangeSuccessFully {response: $response}';
}

class LoginFailure extends LoginState {
  final String error;

  LoginFailure({@required this.error});

  @override
  List<Object> get props => [error];

  @override
  String toString() => 'LoginFailure { error: $error }';
}
