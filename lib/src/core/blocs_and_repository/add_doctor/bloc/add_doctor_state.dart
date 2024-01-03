import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:logic_rdv_v0/src/core/models/doctor_list_model/add_doctor_response.dart';

class AddDoctorState extends Equatable {
  @override
  List<Object> get props => [];
}

class AddDoctorEmpty extends AddDoctorState {}

class AddDoctorLoading extends AddDoctorState {}

class AddDoctorLoadingSuccess extends AddDoctorState {
  final AddDoctorResponse response;
  AddDoctorLoadingSuccess({required this.response});

  @override
  List<Object> get props => [response];

  @override
  String toString() => 'AddDoctorLoadingSuccess {response: $response}';
}

class AddDoctorFailure extends AddDoctorState {
  final String error;

  AddDoctorFailure({required this.error});

  @override
  List<Object> get props => [error];

  @override
  String toString() => 'AddDoctorFailure { error: $error }';
}
