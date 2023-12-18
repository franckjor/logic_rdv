import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:logic_rdv_v0/src/core/models/fixer_rdv_doctor_response/fixer_rdv_doctor_response.dart';

class FixerRdvDoctorState extends Equatable {
  @override
  List<Object> get props => [];
}

class FixerRdvDoctorEmpty extends FixerRdvDoctorState {}

class FixerRdvDoctorLoading extends FixerRdvDoctorState {}

class FixerRdvDoctorLoadingSuccess extends FixerRdvDoctorState {
  final FixerRdvDoctorResponse response;
  FixerRdvDoctorLoadingSuccess({this.response});

  @override
  List<Object> get props => [response];

  @override
  String toString() => 'FixerRdvDoctorLoadingSuccess {response: $response}';
}

class FixerRdvDoctorFailure extends FixerRdvDoctorState {
  final String error;

  FixerRdvDoctorFailure({@required this.error});

  @override
  List<Object> get props => [error];

  @override
  String toString() => 'FixerRdvDoctorFailure { error: $error }';
}
