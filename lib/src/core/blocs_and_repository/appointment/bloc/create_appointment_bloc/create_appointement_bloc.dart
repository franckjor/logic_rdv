import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/appointment/bloc/create_appointment_bloc/create_appointement.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/appointment/repository/create_appointment_repository.dart';

class CreateAppointmentBloc
    extends Bloc<CreateAppointmentEvent, CreateAppointmentState> {
  final CreateAppointmentRepository repository;

  CreateAppointmentBloc({required this.repository})
      : super(CreateAppointmentLoading());

  
  Stream<CreateAppointmentState> mapEventToState(
      CreateAppointmentEvent event) async* {
    yield CreateAppointmentLoading();
    if (event is GetAppointmentType) {
      yield* _mapGetAppointmentTypeToState(event);
    } else if (event is GetAppointmentTypeTimeAndHour) {
      yield* _mapGetAppointmentTimeAndDayToState(event);
    } else if (event is GetPatientForAppointment) {
      yield* _mapGetAppointmentPatientToState(event);
    } else if (event is GetNextPatientForAppointment) {
      yield* _mapGetNextAppointmentTimeAndDayToState(event);
    } else if (event is GetPrevPatientForAppointment) {
      yield* _mapGetPrevAppointmentTimeAndDayToState(event);
    } else if (event is GetSelectedPatientForAppointment) {
      yield* _mapSelectedAppointmentPatientToState(event);
    } else if (event is ValidateAppointmentWithTc) {
      yield* _mapValidateAppointmentPatientToState(event);
    } else if (event is ValidateAppointment) {
      yield* _mapValidateAppointmentPatientWithOutTCToState(event);
    } else if (event is GetRdvTypeState) {
      yield* _mapRdvTypeStateToState(event);
    } else if (event is ConfirmAppointmentWithTc) {
      yield* _mapConfirmRdvWithTCStateToState(event);
    }
  }

  Stream<CreateAppointmentState> _mapGetAppointmentTypeToState(
      GetAppointmentType event) async* {
    try {
      final appointmentList = await repository.getAppointmentType(
          createAppointmentRequest: event.createAppointmentRequest);
      yield TypeOfAppointmentLoadingSuccess(response: appointmentList);
    } catch (error) {
      yield CreateAppointmentFailure(error: error.toString());
    }
  }

  Stream<CreateAppointmentState> _mapGetAppointmentTimeAndDayToState(
      GetAppointmentTypeTimeAndHour event) async* {
    try {
      final appointmentList = await repository.getAppointmentTimeAndDay(
          createAppointmentRequest: event.createAppointmentRequest);
      yield DayAndTimeOfAppointmentLoadingSuccess(response: appointmentList);
    } catch (error) {
      yield CreateAppointmentFailure(error: error.toString());
    }
  }

  Stream<CreateAppointmentState> _mapGetNextAppointmentTimeAndDayToState(
      GetNextPatientForAppointment event) async* {
    try {
      final appointmentList = await repository.getAppointmentTimeAndDay(
          createAppointmentRequest: event.createAppointmentRequest);
      yield NextDayAndTimeOfAppointmentLoadingSuccess(
          response: appointmentList);
    } catch (error) {
      yield CreateAppointmentFailure(error: error.toString());
    }
  }

  Stream<CreateAppointmentState> _mapGetPrevAppointmentTimeAndDayToState(
      GetPrevPatientForAppointment event) async* {
    try {
      final appointmentList = await repository.getAppointmentTimeAndDay(
          createAppointmentRequest: event.createAppointmentRequest);
      yield PrevDayAndTimeOfAppointmentLoadingSuccess(
          response: appointmentList);
    } catch (error) {
      yield CreateAppointmentFailure(error: error.toString());
    }
  }

  Stream<CreateAppointmentState> _mapGetAppointmentPatientToState(
      GetPatientForAppointment event) async* {
    try {
      final appointmentList = await repository.getAppointmentPatient(
          createAppointmentRequest: event.createAppointmentRequest);
      yield PatientForAppointmentLoadingSuccess(response: appointmentList);
    } catch (error) {
      yield CreateAppointmentFailure(error: error.toString());
    }
  }

  Stream<CreateAppointmentState> _mapSelectedAppointmentPatientToState(
      GetSelectedPatientForAppointment event) async* {
    try {
      final appointmentList = await repository.selectPatientForAppointment(
          createAppointmentRequest: event.createAppointmentRequest);
      yield PatientSelectedForAppointmentLoadingSuccess(
          response: appointmentList);
    } catch (error) {
      yield CreateAppointmentFailure(error: error.toString());
    }
  }

  Stream<CreateAppointmentState> _mapValidateAppointmentPatientToState(
      ValidateAppointmentWithTc event) async* {
    try {
      final appointmentList = await repository.validateAppointment(
          createAppointmentRequest: event.createAppointmentRequest);
      yield ValidateAppointmentWithTCLoadingSuccess(response: appointmentList);
    } catch (error) {
      yield CreateAppointmentFailure(error: error.toString());
    }
  }

  Stream<CreateAppointmentState> _mapValidateAppointmentPatientWithOutTCToState(
      ValidateAppointment event) async* {
    try {
      final appointmentList = await repository.validateAppointmentWithOutTc(
          createAppointmentRequest: event.createAppointmentRequest);
      yield ValidateAppointmentLoadingSuccess(response: appointmentList);
    } catch (error) {
      yield CreateAppointmentFailure(error: error.toString());
    }
  }

  Stream<CreateAppointmentState> _mapRdvTypeStateToState(
      GetRdvTypeState event) async* {
    try {
      final appointmentList = await repository.getRdvTypeState(
          createAppointmentRequest: event.createAppointmentRequest);
      yield RdvTypeStateLoadingSuccess(response: appointmentList);
    } catch (error) {
      yield CreateAppointmentFailure(error: error.toString());
    }
  }

  Stream<CreateAppointmentState> _mapConfirmRdvWithTCStateToState(
      ConfirmAppointmentWithTc event) async* {
    try {
      final result = await repository.confirmAppointmentWithOutTc(
          createAppointmentRequest: event.createAppointmentRequest);
      yield ConfirmAppointmentLoadingSuccess(response: result);
    } catch (error) {
      yield CreateAppointmentFailure(error: error.toString());
    }
  }
}
