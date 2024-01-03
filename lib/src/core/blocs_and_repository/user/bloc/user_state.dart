import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:logic_rdv_v0/src/core/models/remove_user/remove_user_response.dart';
import 'package:logic_rdv_v0/src/core/models/user_model/user_response.dart';

class UserState extends Equatable {
  @override
  List<Object> get props => [];
}

class UserStateEmpty extends UserState {}

class UserStateLoading extends UserState {}

class UserStateLoadingSuccess extends UserState {
  final UserResponse userResponse;

  UserStateLoadingSuccess({required this.userResponse});

  @override
  List<Object> get props => [userResponse];

  @override
  String toString() => 'UserStateLoadingSuccess {userResponse : $userResponse}';
}

class UserCheckoutStateLoadingSuccess extends UserState {
  final RemoveUserResponse userResponse;

  UserCheckoutStateLoadingSuccess({required this.userResponse});

  @override
  List<Object> get props => [userResponse];

  @override
  String toString() =>
      'UserCheckoutStateLoadingSuccess {userResponse : $userResponse}';
}

class UserStateLoadingFailure extends UserState {
  final String error;

  UserStateLoadingFailure({required this.error});

  @override
  List<Object> get props => [error];

  @override
  String toString() => 'UserStateLoadingFailure { error: $error }';
}
