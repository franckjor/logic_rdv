import 'package:equatable/equatable.dart';
import 'package:logic_rdv_v0/src/core/models/doctor_details_model/search_doctor_details_request.dart';

abstract class DoctorDetailsEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class GetDoctorDetailsEvent extends DoctorDetailsEvent {
  final SearchDoctorDetailsRequest doctorDetailsResponse;

  GetDoctorDetailsEvent({required this.doctorDetailsResponse});

  @override
  List<Object> get props => [doctorDetailsResponse];

  @override
  String toString() =>
      'AddDoctorRequestEvent {doctorDetailsResponse: $doctorDetailsResponse}';
}
