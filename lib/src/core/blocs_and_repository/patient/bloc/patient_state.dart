import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:logic_rdv_v0/src/core/models/patient/patient_response_afert_create.dart';
import 'package:logic_rdv_v0/src/core/models/patient/remove_patient_response.dart';
import 'package:logic_rdv_v0/src/core/models/remove_doctor_model/remove_doctor_response.dart';

class PatientState extends Equatable {
  @override
  List<Object> get props => [];
}

class PatientEmpty extends PatientState {}

class PatientLoading extends PatientState {}

class AddPatientLoadingSuccess extends PatientState {
  final PatientResponseAfertCreate response;

  AddPatientLoadingSuccess({required this.response});

  @override
  List<Object> get props => [response];

  @override
  String toString() => 'AddPatientLoadingSuccess {response: $response}';
}

class ListOfPatientLoadingSuccess extends PatientState {
  final PatientResponseAfertCreate response;

  ListOfPatientLoadingSuccess({required this.response});

  @override
  List<Object> get props => [response];

  @override
  String toString() => 'ListOfPatientLoadingSuccess {response: $response}';
}

class UpdatePatientLoadingSuccess extends PatientState {
  final RemovePatientResponse updateSuccess;

  UpdatePatientLoadingSuccess({required this.updateSuccess});

  @override
  List<Object> get props => [updateSuccess];

  @override
  String toString() =>
      'UpdatePatientLoadingSuccess {updateSuccess: $updateSuccess}';
}

class RemovePatientLoadingSuccess extends PatientState {
  final RemovePatientResponse removeSuccess;

  RemovePatientLoadingSuccess({required this.removeSuccess});

  @override
  List<Object> get props => [removeSuccess];

  @override
  String toString() =>
      'RemovePatientLoadingSuccess {removeSuccess: $removeSuccess}';
}

class PatientFailure extends PatientState {
  final String error;

  PatientFailure({required this.error});

  @override
  List<Object> get props => [error];

  @override
  String toString() => 'PatientFailure { error: $error }';
}
