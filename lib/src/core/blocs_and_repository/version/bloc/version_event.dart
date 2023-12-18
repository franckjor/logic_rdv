import 'package:equatable/equatable.dart';
import 'package:logic_rdv_v0/src/core/models/doctor_list_model/add_doctor_request.dart';

abstract class VersionEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class VersionRequestEvent extends VersionEvent {

  VersionRequestEvent();

  @override
  List<Object> get props => [];

  @override
  String toString() =>
      'VersionRequestEvent {addDoctorRequest:}';
}
