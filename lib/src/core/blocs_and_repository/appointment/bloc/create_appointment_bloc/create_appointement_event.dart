import 'package:equatable/equatable.dart';
import 'package:logic_rdv_v0/src/core/models/appointment_model/create_appointment_request.dart';

abstract class CreateAppointmentEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class GetAppointmentType extends CreateAppointmentEvent {
  final CreateAppointmentRequest createAppointmentRequest;

  GetAppointmentType({required this.createAppointmentRequest});

  @override
  List<Object> get props => [createAppointmentRequest];

  @override
  String toString() =>
      'GetAppointmentType {createAppointmentRequest: $createAppointmentRequest}';
}

class GetAppointmentTypeTimeAndHour extends CreateAppointmentEvent {
  final CreateAppointmentRequest createAppointmentRequest;

  GetAppointmentTypeTimeAndHour({required this.createAppointmentRequest});

  @override
  List<Object> get props => [createAppointmentRequest];

  @override
  String toString() =>
      'GetAppointmentTypeTimeAndHour {createAppointmentRequest: $createAppointmentRequest}';
}

class GetPatientForAppointment extends CreateAppointmentEvent {
  final CreateAppointmentRequest createAppointmentRequest;

  GetPatientForAppointment({required this.createAppointmentRequest});

  @override
  List<Object> get props => [createAppointmentRequest];

  @override
  String toString() =>
      'GetPatientForAppointment {createAppointmentRequest: $createAppointmentRequest}';
}

class GetNextPatientForAppointment extends CreateAppointmentEvent {
  final CreateAppointmentRequest createAppointmentRequest;

  GetNextPatientForAppointment({required this.createAppointmentRequest});

  @override
  List<Object> get props => [createAppointmentRequest];

  @override
  String toString() =>
      'GetNextPatientForAppointment {createAppointmentRequest: $createAppointmentRequest}';
}

class GetPrevPatientForAppointment extends CreateAppointmentEvent {
  final CreateAppointmentRequest createAppointmentRequest;

  GetPrevPatientForAppointment({required this.createAppointmentRequest});

  @override
  List<Object> get props => [createAppointmentRequest];

  @override
  String toString() =>
      'GetPrevPatientForAppointment {createAppointmentRequest: $createAppointmentRequest}';
}

class GetSelectedPatientForAppointment extends CreateAppointmentEvent {
  final CreateAppointmentRequest createAppointmentRequest;

  GetSelectedPatientForAppointment({required this.createAppointmentRequest});

  @override
  List<Object> get props => [createAppointmentRequest];

  @override
  String toString() =>
      'GetSelectedPatientForAppointment {createAppointmentRequest: $createAppointmentRequest}';
}

class ValidateAppointmentWithTc extends CreateAppointmentEvent {
  final CreateAppointmentRequest createAppointmentRequest;

  ValidateAppointmentWithTc({required this.createAppointmentRequest});

  @override
  List<Object> get props => [createAppointmentRequest];

  @override
  String toString() =>
      'ValidateAppointmentWithTc {createAppointmentRequest: $createAppointmentRequest}';
}

class ValidateAppointment extends CreateAppointmentEvent {
  final CreateAppointmentRequest createAppointmentRequest;

  ValidateAppointment({required this.createAppointmentRequest});

  @override
  List<Object> get props => [createAppointmentRequest];

  @override
  String toString() =>
      'ValidateAppointment {createAppointmentRequest: $createAppointmentRequest}';
}

class GetRdvTypeState extends CreateAppointmentEvent {
  final CreateAppointmentRequest createAppointmentRequest;

  GetRdvTypeState({required this.createAppointmentRequest});

  @override
  List<Object> get props => [createAppointmentRequest];

  @override
  String toString() =>
      'GetRdvTypeState {createAppointmentRequest: $createAppointmentRequest}';
}

class ConfirmAppointmentWithTc extends CreateAppointmentEvent {
  final CreateAppointmentRequest createAppointmentRequest;

  ConfirmAppointmentWithTc({required this.createAppointmentRequest});

  @override
  List<Object> get props => [createAppointmentRequest];

  @override
  String toString() =>
      'ConfirmAppointmentWithTc {createAppointmentRequest: $createAppointmentRequest}';
}
