import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:logic_rdv_v0/src/core/models/remove_doctor_model/remove_doctor_response.dart';

class RemoveDoctorState extends Equatable {
  @override
  List<Object> get props => [];
}

class RemoveDoctorEmpty extends RemoveDoctorState {}

class RemoveDoctorLoading extends RemoveDoctorState {}

class RemoveDoctorLoadingSuccess extends RemoveDoctorState {
  final RemoveDoctorResponse response;
  RemoveDoctorLoadingSuccess({required this.response});

  @override
  List<Object> get props => [response];

  @override
  String toString() => 'RemoveDoctorLoadingSuccess {response: $response}';
}

class RemoveDoctorFailure extends RemoveDoctorState {
  final String error;

  RemoveDoctorFailure({required this.error});

  @override
  List<Object> get props => [error];

  @override
  String toString() => 'RemoveDoctorFailure { error: $error }';
}
