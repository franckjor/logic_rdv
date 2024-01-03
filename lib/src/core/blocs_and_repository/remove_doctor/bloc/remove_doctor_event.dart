import 'package:equatable/equatable.dart';
import 'package:logic_rdv_v0/src/core/models/remove_doctor_model/remove_doctor_request.dart';

abstract class RemoveDoctorEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class RemoveDoctorPressed extends RemoveDoctorEvent {
  final RemoveDoctorRequest removeDoctorRequest;

  RemoveDoctorPressed({this.removeDoctorRequest});

  @override
  List<Object> get props => [removeDoctorRequest];

  @override
  String toString() =>
      'RemoveDoctorPressed {removeDoctorRequest: $removeDoctorRequest}';
}
