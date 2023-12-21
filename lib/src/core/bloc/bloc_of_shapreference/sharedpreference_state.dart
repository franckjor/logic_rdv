import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import 'model/shared_preference_object.dart';

class SharedPreferenceState extends Equatable {
  @override
  List<Object> get props => [];
}

class SharedPreferenceLoading extends SharedPreferenceState {}

class SharedPreferenceWriteObjectState extends SharedPreferenceState {
  final bool isWriteSuccessfully;

  SharedPreferenceWriteObjectState({required this.isWriteSuccessfully});

  @override
  List<Object> get props => [isWriteSuccessfully];

  @override
  String toString() =>
      'SharedPreferenceWriteObjectState { isWriteSuccessfully: $isWriteSuccessfully }';
}

class SharedPreferenceReadObjectState extends SharedPreferenceState {
  final SharePreferenceObject? sharePreferenceObject;

  SharedPreferenceReadObjectState({this.sharePreferenceObject});

  @override
  List<Object> get props => [sharePreferenceObject!];

  @override
  String toString() =>
      'SharedPreferenceReadObjectState {sharePreferenceObject: $sharePreferenceObject }';
}

class SharedPreferenceTokenAuthorizationWriteState
    extends SharedPreferenceState {
  final bool isWriteSuccessfully;

  SharedPreferenceTokenAuthorizationWriteState({required this.isWriteSuccessfully});

  @override
  List<Object> get props => [isWriteSuccessfully];

  @override
  String toString() =>
      'SharedPreferenceTokenAuthorizationWriteState { isWriteSuccessfully: $isWriteSuccessfully }';
}

class SharedTokenAuthorizationLoadingSuccess extends SharedPreferenceState {
  final String tokenAuthorizationValue;

  SharedTokenAuthorizationLoadingSuccess({required this.tokenAuthorizationValue});

  @override
  List<Object> get props => [tokenAuthorizationValue];

  @override
  String toString() =>
      'SharedTokenAuthorizationLoadingSuccess { tokenAuthorizationValue: $tokenAuthorizationValue }';
}

class SharedSessionLoadingSuccess extends SharedPreferenceState {
  final String? sessionValue;

  SharedSessionLoadingSuccess({this.sessionValue});

  @override
  List<Object> get props => [sessionValue!];

  @override
  String toString() =>
      'SharedSessionLoadingSuccess { sessionValue: $sessionValue }';
}

class SharedSessionWriteLoadingSuccess extends SharedPreferenceState {
  final bool sessionWrite;

  SharedSessionWriteLoadingSuccess({required this.sessionWrite});

  @override
  List<Object> get props => [sessionWrite];

  @override
  String toString() =>
      'SharedSessionWriteLoadingSuccess { sessionWrite: $sessionWrite }';
}

class SharedEmailLoadingSuccess extends SharedPreferenceState {
  final String? email;

  SharedEmailLoadingSuccess({this.email});

  @override
  List<Object> get props => [email!];

  @override
  String toString() => 'SharedEmailLoadingSuccess { email: $email }';
}

class SharedPreferenceLoadingFailure extends SharedPreferenceState {
  final String error;

  SharedPreferenceLoadingFailure({required this.error});

  @override
  List<Object> get props => [error];

  @override
  String toString() => 'SharedPreferenceLoadingFailure { error: $error }';
}
