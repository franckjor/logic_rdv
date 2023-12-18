import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:logic_rdv_v0/src/core/models/appointment_model/create_appointment_response.dart';
import 'package:logic_rdv_v0/src/core/models/appointment_model/get_apointment_time_response.dart';
import 'package:logic_rdv_v0/src/core/models/appointment_model/get_paient_for_rdv_response.dart';
import 'package:logic_rdv_v0/src/core/models/appointment_model/selected_patient_response_for_rdv.dart';
import 'package:logic_rdv_v0/src/core/models/appointment_model/validate_rdv_summary_dto.dart';
import 'package:logic_rdv_v0/src/core/models/rdv_type/rdvType.dart';

class CreateAppointmentState extends Equatable {
  @override
  List<Object> get props => [];
}

class CreateAppointmentEmpty extends CreateAppointmentState {}

class CreateAppointmentLoading extends CreateAppointmentState {}

class TypeOfAppointmentLoadingSuccess extends CreateAppointmentState {
  final CreateAppointmentResponse response;
  TypeOfAppointmentLoadingSuccess({this.response});

  @override
  List<Object> get props => [response];

  @override
  String toString() => 'TypeOfAppointmentLoadingSuccess {response: $response}';
}

class DayAndTimeOfAppointmentLoadingSuccess extends CreateAppointmentState {
  final GetApointmentTimeResponse response;
  DayAndTimeOfAppointmentLoadingSuccess({this.response});

  @override
  List<Object> get props => [response];

  @override
  String toString() =>
      'DayAndTimeOfAppointmentLoadingSuccess {response: $response}';
}

class NextDayAndTimeOfAppointmentLoadingSuccess extends CreateAppointmentState {
  final GetApointmentTimeResponse response;
  NextDayAndTimeOfAppointmentLoadingSuccess({this.response});

  @override
  List<Object> get props => [response];

  @override
  String toString() =>
      'NextDayAndTimeOfAppointmentLoadingSuccess {response: $response}';
}

class PrevDayAndTimeOfAppointmentLoadingSuccess extends CreateAppointmentState {
  final GetApointmentTimeResponse response;
  PrevDayAndTimeOfAppointmentLoadingSuccess({this.response});

  @override
  List<Object> get props => [response];

  @override
  String toString() =>
      'PrevDayAndTimeOfAppointmentLoadingSuccess {response: $response}';
}

class PatientForAppointmentLoadingSuccess extends CreateAppointmentState {
  final GetPaientForRdvResponse response;
  PatientForAppointmentLoadingSuccess({this.response});

  @override
  List<Object> get props => [response];

  @override
  String toString() =>
      'PatientForAppointmentLoadingSuccess {response: $response}';
}

class PatientSelectedForAppointmentLoadingSuccess
    extends CreateAppointmentState {
  final SelectedPatientResponseForRdv response;
  PatientSelectedForAppointmentLoadingSuccess({this.response});

  @override
  List<Object> get props => [response];

  @override
  String toString() =>
      'PatientSelectedForAppointmentLoadingSuccess {response: $response}';
}

class ValidateAppointmentWithTCLoadingSuccess extends CreateAppointmentState {
  final ValidateRdvSummaryDto response;
  ValidateAppointmentWithTCLoadingSuccess({this.response});

  @override
  List<Object> get props => [response];

  @override
  String toString() =>
      'ValidateAppointmentWithTCLoadingSuccess {response: $response}';
}

class ValidateAppointmentLoadingSuccess extends CreateAppointmentState {
  final GetApointmentTimeResponse response;
  ValidateAppointmentLoadingSuccess({this.response});

  @override
  List<Object> get props => [response];

  @override
  String toString() =>
      'ValidateAppointmentLoadingSuccess {response: $response}';
}

class RdvTypeStateLoadingSuccess extends CreateAppointmentState {
  final RdvType response;
  RdvTypeStateLoadingSuccess({this.response});

  @override
  List<Object> get props => [response];

  @override
  String toString() => 'RdvTypeStateLoadingSuccess {response: $response}';
}

class ConfirmAppointmentLoadingSuccess extends CreateAppointmentState {
  final GetApointmentTimeResponse response;
  ConfirmAppointmentLoadingSuccess({this.response});

  @override
  List<Object> get props => [response];

  @override
  String toString() => 'ConfirmAppointmentLoadingSuccess {response: $response}';
}

class CreateAppointmentFailure extends CreateAppointmentState {
  final String error;

  CreateAppointmentFailure({@required this.error});

  @override
  List<Object> get props => [error];

  @override
  String toString() => 'CreateAppointmentFailure { error: $error }';
}
