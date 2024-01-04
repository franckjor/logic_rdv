import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/remove_doctor/bloc/remove_doctor.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/remove_doctor/repository/remove_doctor_repository.dart';

class RemoveDoctorBloc extends Bloc<RemoveDoctorEvent, RemoveDoctorState> {
  final RemoveDoctorRepository repository;

  RemoveDoctorBloc({required this.repository}) : super(RemoveDoctorLoading());

  @override
  RemoveDoctorState get initialState => RemoveDoctorLoading();

  @override
  Stream<RemoveDoctorState> mapEventToState(RemoveDoctorEvent event) async* {
    yield RemoveDoctorLoading();
    if (event is RemoveDoctorPressed) {
      yield* _mapRemoveDoctorToState(event);
    }
  }

  Stream<RemoveDoctorState> _mapRemoveDoctorToState(
      RemoveDoctorPressed event) async* {
    try {
      final userResponse =
          await repository.removeDoctor(request: event.removeDoctorRequest);
      yield RemoveDoctorLoadingSuccess(response: userResponse);
    } catch (error) {
      yield RemoveDoctorFailure(error: error.toString())!;
    }
  }
}
