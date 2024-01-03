import 'package:equatable/equatable.dart';
import 'package:logic_rdv_v0/src/core/models/appointment_model/create_appointment_request.dart';

abstract class CheckStateEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class GetStateRdv extends CheckStateEvent {
  final CreateAppointmentRequest createAppointmentRequest;

  GetStateRdv({this.createAppointmentRequest});

  @override
  List<Object> get props => [createAppointmentRequest];

  @override
  String toString() =>
      'GetStateRdv {createAppointmentRequest: $createAppointmentRequest}';
}
