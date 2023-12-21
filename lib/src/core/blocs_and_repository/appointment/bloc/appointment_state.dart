import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:logic_rdv_v0/src/core/models/appointment_model/appointment_response.dart';
import 'package:logic_rdv_v0/src/core/models/appointment_model/cancel_appointment_response.dart';

class AppointmentState extends Equatable {
  @override
  List<Object> get props => [];
}

class AppointmentEmpty extends AppointmentState {}

class AppointmentLoading extends AppointmentState {}

class AppointmentLoadingSuccess extends AppointmentState {
  final AppointmentResponse response;
  AppointmentLoadingSuccess({required this.response});

  @override
  List<Object> get props => [response];

  @override
  String toString() => 'AppointmentLoadingSuccess {response: $response}';
}

class CancelAppointmentLoadingSuccess extends AppointmentState {
  final CancelAppointmentResponse response;
  CancelAppointmentLoadingSuccess({required this.response});

  @override
  List<Object> get props => [response];

  @override
  String toString() => 'CancelAppointmentLoadingSuccess {response: $response}';
}

class AppointmentFailure extends AppointmentState {
  final String error;

  AppointmentFailure({required this.error});

  @override
  List<Object> get props => [error];

  @override
  String toString() => 'AppointmentFailure { error: $error }';
}
