import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/appointment/bloc/appointment.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/appointment/repository/appointment_repository.dart';

class AppointmentBloc extends Bloc<AppointmentEvent, AppointmentState> {
  final AppointmentRepository repository;

  AppointmentBloc({required this.repository}) : super(AppointmentLoading());

  @override
  AppointmentState get initialState => AppointmentLoading();

  @override
  Stream<AppointmentState> mapEventToState(AppointmentEvent event) async* {
    yield AppointmentLoading();
    if (event is GetAppointment) {
      yield* _mapGetAppointmentToState(event);
    } else if (event is CancelAppointment) {
      yield* _mapCancelAppointmentToState(event);
    }
  }

  Stream<AppointmentState> _mapGetAppointmentToState(
      GetAppointment event) async* {
    try {
      final appointmentList = await repository.getAppointment(
          appointmentRequest: event.getAppointmentRequest);
      yield AppointmentLoadingSuccess(response: appointmentList);
    } catch (error) {
      yield AppointmentFailure(error: error.toString());
    }
  }

  Stream<AppointmentState> _mapCancelAppointmentToState(
      CancelAppointment event) async* {
    try {
      final appointmentList = await repository.appointmentCancel(
          cancelAppointmentRequest: event.cancelAppointmentRequest);
      yield CancelAppointmentLoadingSuccess(response: appointmentList);
    } catch (error) {
      yield AppointmentFailure(error: error.toString());
    }
  }
}
