import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:logic_rdv_v0/src/core/models/generate_token_model/get_token_response.dart';
import 'package:logic_rdv_v0/src/core/models/incription_model/create_patient_request.dart';
import 'package:logic_rdv_v0/src/core/models/incription_model/create_patient_response.dart';
import 'package:logic_rdv_v0/src/core/models/incription_model/inscription_check_response.dart';

class InscriptionRapidState extends Equatable {
  @override
  List<Object> get props => [];
}

class InscriptionRapidStateEmpty extends InscriptionRapidState {}

class InscriptionRapidStateLoading extends InscriptionRapidState {}

class CheckDoctorLoadingSuccess extends InscriptionRapidState {
  final InscriptionCheckResponse checkResponse;

  CheckDoctorLoadingSuccess({this.checkResponse});

  @override
  List<Object> get props => [checkResponse];

  @override
  String toString() =>
      'CheckDoctorLoadingSuccess {checkResponse : $checkResponse}';
}

class CreatePatientLoadingSuccess extends InscriptionRapidState {
  final CreatePatientResponse createPatientResponse;

  CreatePatientLoadingSuccess({this.createPatientResponse});

  @override
  List<Object> get props => [createPatientResponse];

  @override
  String toString() =>
      'CreatePatientLoadingSuccess {createPatientResponse : $createPatientResponse}';
}

class InscriptionRapidStateLoadingFailure extends InscriptionRapidState {
  final String error;

  InscriptionRapidStateLoadingFailure({@required this.error});

  @override
  List<Object> get props => [error];

  @override
  String toString() => 'InscriptionRapidStateLoadingFailure { error: $error }';
}
