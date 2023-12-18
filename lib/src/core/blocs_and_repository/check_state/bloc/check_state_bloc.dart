import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/appointment/bloc/create_appointment_bloc/create_appointement.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/appointment/repository/create_appointment_repository.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/check_state/bloc/check_state.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/check_state/repositories/check_state_repositorie.dart';

class CheckStateBloc extends Bloc<CheckStateEvent, CheckStateSate> {
  final CheckStateRepository repository;

  CheckStateBloc({@required this.repository}) : super(CheckStateLoading());

  @override
  Stream<CheckStateSate> mapEventToState(CheckStateEvent event) async* {
    yield CheckStateLoading();
    if (event is GetStateRdv) {
      yield* _mapRdvTypeStateToState(event);
    }
  }

  Stream<CheckStateSate> _mapRdvTypeStateToState(GetStateRdv event) async* {
    try {
      final appointmentList = await repository.getRdvTypeState(
          createAppointmentRequest: event.createAppointmentRequest);
      yield CheckStateLoadingSuccess(response: appointmentList);
    } catch (error) {
      yield CheckStateFailure(error: error.toString());
    }
  }
}
