import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/add_doctor/bloc/add_doctor.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/add_doctor/repository/add_doctor_repository.dart';

class AddDoctorBloc extends Bloc<AddDoctorEvent, AddDoctorState> {
  final AddDoctorRepository repository;

  AddDoctorBloc({@required this.repository}) : super(AddDoctorLoading());

  @override
  Stream<AddDoctorState> mapEventToState(AddDoctorEvent event) async* {
    yield AddDoctorLoading();
    if (event is AddDoctorRequestEvent) {
      yield* _mapAddDoctorToState(event);
    }
  }

  Stream<AddDoctorState> _mapAddDoctorToState(
      AddDoctorRequestEvent event) async* {
    try {
      final doctorAdded =
          await repository.addDoctor(addDoctorRequest: event.addDoctorRequest);
      yield AddDoctorLoadingSuccess(response: doctorAdded);
    } catch (error) {
      yield AddDoctorFailure(error: error.toString());
    }
  }
}
