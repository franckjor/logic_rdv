import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:logic_rdv_v0/src/core/models/appointment_model/appointment_response.dart';
import 'package:logic_rdv_v0/src/core/models/appointment_model/cancel_appointment_response.dart';
import 'package:logic_rdv_v0/src/core/models/rdv_type/rdvType.dart';

class CheckStateSate extends Equatable {
  @override
  List<Object> get props => [];
}

class CheckStateEmpty extends CheckStateSate {}

class CheckStateLoading extends CheckStateSate {}

class CheckStateLoadingSuccess extends CheckStateSate {
  final RdvType response;
  CheckStateLoadingSuccess({ required this.response});

  @override
  List<Object> get props => [response];

  @override
  String toString() => 'CheckStateLoadingSuccess {response: $response}';
}

class CheckStateFailure extends CheckStateSate {
  final String error;

  CheckStateFailure({required this.error});

  @override
  List<Object> get props => [error];

  @override
  String toString() => 'CheckStateFailure { error: $error }';
}
