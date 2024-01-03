import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:logic_rdv_v0/src/core/models/telecons_model/teleconsultationresponse.dart';

class TeleconsState extends Equatable {
  @override
  List<Object> get props => [];
}

class TeleconsEmpty extends TeleconsState {}

class TeleconsLoading extends TeleconsState {}

class TeleconsLoadingSuccess extends TeleconsState {
  final TeleconsResponse response;

  TeleconsLoadingSuccess({this.response});

  @override
  List<Object> get props => [response];

  @override
  String toString() => 'TeleconsLoadingSuccess {response: $response}';
}

class TeleconsFailure extends TeleconsState {
  final String error;

  TeleconsFailure({@required this.error});

  @override
  List<Object> get props => [error];

  @override
  String toString() => 'TeleconsFailure { error: $error }';
}
