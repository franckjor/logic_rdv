import 'package:equatable/equatable.dart';
import 'package:logic_rdv_v0/src/core/models/generate_token_model/get_token_request.dart';
import 'package:logic_rdv_v0/src/core/models/incription_model/create_patient_request.dart';
import 'package:logic_rdv_v0/src/core/models/incription_model/inscription_check_request.dart';

abstract class InscriptionRapidEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class VerifyDoctorEvent extends InscriptionRapidEvent {
  final InscriptionCheckRequest checkRequest;

  VerifyDoctorEvent({required this.checkRequest});

  @override
  List<Object> get props => [checkRequest];

  @override
  String toString() => 'VerifyDoctorEvent {checkRequest: $checkRequest}';
}

class CreatePatientEvent extends InscriptionRapidEvent {
  final CreatePatientRequest createPatientRequest;

  CreatePatientEvent({required this.createPatientRequest});

  @override
  List<Object> get props => [createPatientRequest];

  @override
  String toString() =>
      'CreatePatientEvent {createPatientRequest: $createPatientRequest}';
}
