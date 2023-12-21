import 'package:equatable/equatable.dart';
import 'package:logic_rdv_v0/src/core/models/appointment_model/cancel_appointment_request.dart';
import 'package:logic_rdv_v0/src/core/models/appointment_model/get_appointment_request.dart';

abstract class AppointmentEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class GetAppointment extends AppointmentEvent {
  final GetAppointmentRequest getAppointmentRequest;

  GetAppointment({required this.getAppointmentRequest});

  @override
  List<Object> get props => [getAppointmentRequest];

  @override
  String toString() =>
      'GetAppointment {getAppointmentRequest: $getAppointmentRequest}';
}

class CancelAppointment extends AppointmentEvent {
  final CancelAppointmentRequest cancelAppointmentRequest;

  CancelAppointment({required this.cancelAppointmentRequest});

  @override
  List<Object> get props => [cancelAppointmentRequest];

  @override
  String toString() =>
      'CancelAppointment {cancelAppointmentRequest: $cancelAppointmentRequest}';
}
