import 'package:equatable/equatable.dart';
import 'package:logic_rdv_v0/src/core/models/doctor_list_model/add_doctor_request.dart';

abstract class AddDoctorEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class AddDoctorRequestEvent extends AddDoctorEvent {
  final AddDoctorRequest addDoctorRequest;

  AddDoctorRequestEvent({required this.addDoctorRequest});

  @override
  List<Object> get props => [addDoctorRequest];

  @override
  String toString() =>
      'AddDoctorRequestEvent {addDoctorRequest: $addDoctorRequest}';
}
