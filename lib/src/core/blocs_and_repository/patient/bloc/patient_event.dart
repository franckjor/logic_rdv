import 'package:equatable/equatable.dart';
import 'package:logic_rdv_v0/src/core/models/patient/get_list_of_patient_request.dart';
import 'package:logic_rdv_v0/src/core/models/patient/patient_request.dart';
import 'package:logic_rdv_v0/src/core/models/patient/remove_patient_request.dart';
import 'package:logic_rdv_v0/src/core/models/remove_doctor_model/remove_doctor_request.dart';

abstract class PatientEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class AddPatientPressed extends PatientEvent {
  final PatientRequest patientRequest;

  AddPatientPressed({required this.patientRequest});

  @override
  List<Object> get props => [patientRequest];

  @override
  String toString() => 'AddPatientPressed {patientRequest: $patientRequest}';
}

class GetListOfPatient extends PatientEvent {
  final GetListOfPatientRequest listOfPatientRequest;

  GetListOfPatient({required this.listOfPatientRequest});

  @override
  List<Object> get props => [listOfPatientRequest];

  @override
  String toString() =>
      'GetListOfPatient {listOfPatientRequest: $listOfPatientRequest}';
}

class ModifyPatient extends PatientEvent {
  final PatientRequest patientRequest;

  ModifyPatient({required this.patientRequest});

  @override
  List<Object> get props => [patientRequest];

  @override
  String toString() => 'ModifyPatient {patientRequest: $patientRequest}';
}

class RemovePatient extends PatientEvent {
  final RemovePatientRequest patientRequest;

  RemovePatient({required this.patientRequest});

  @override
  List<Object> get props => [patientRequest];

  @override
  String toString() => 'RemovePatient {patientRequest: $patientRequest}';
}
