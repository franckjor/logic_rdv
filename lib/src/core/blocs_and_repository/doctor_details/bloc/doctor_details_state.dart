import 'package:equatable/equatable.dart';
import 'package:logic_rdv_v0/src/core/models/doctor_details_model/search_doctor_details_response.dart';

class DoctorDetailsState extends Equatable {
  @override
  List<Object> get props => [];
}

class DoctorDetailsEmpty extends DoctorDetailsState {}

class DoctorDetailsLoading extends DoctorDetailsState {}

class DoctorDetailsLoadingSuccess extends DoctorDetailsState {
  final SearchDoctorDetailsResponse response;
  DoctorDetailsLoadingSuccess({required this.response});

  @override
  List<Object> get props => [response];

  @override
  String toString() => 'AddDoctorLoadingSuccess {response: $response}';
}

class DoctorDetailsFailure extends DoctorDetailsState {
  final String error;

  DoctorDetailsFailure({required this.error});

  @override
  List<Object> get props => [error];

  @override
  String toString() => 'DoctorDetailsFailure { error: $error }';
}
