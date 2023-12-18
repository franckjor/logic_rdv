import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/patient/bloc/patient.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/patient/patient_repository/patient_repository.dart';

class PatientBloc extends Bloc<PatientEvent, PatientState> {
  final PatientRepository repository;

  PatientBloc({@required this.repository}) : super(PatientLoading());

  @override
  PatientState get initialState => PatientLoading();

  @override
  Stream<PatientState> mapEventToState(PatientEvent event) async* {
    yield PatientLoading();
    if (event is AddPatientPressed) {
      yield* _mapAddPatientToState(event);
    } else if (event is GetListOfPatient) {
      yield* _mapGetPatientToState(event);
    } else if (event is ModifyPatient) {
      yield* _mapUpdatePatientToState(event);
    } else if (event is RemovePatient) {
      yield* _mapRemovePatientToState(event);
    }
  }

  Stream<PatientState> _mapAddPatientToState(AddPatientPressed event) async* {
    try {
      final patientResult =
          await repository.addPatient(patientRequest: event.patientRequest);
      yield AddPatientLoadingSuccess(response: patientResult);
    } catch (error) {
      yield PatientFailure(error: error.toString());
    }
  }

  Stream<PatientState> _mapGetPatientToState(GetListOfPatient event) async* {
    try {
      final patientResult = await repository.getListOfPatient(
          getListOfPatientRequest: event.listOfPatientRequest);
      yield ListOfPatientLoadingSuccess(response: patientResult);
    } catch (error) {
      yield PatientFailure(error: error.toString());
    }
  }

  Stream<PatientState> _mapUpdatePatientToState(ModifyPatient event) async* {
    try {
      final patientResult =
          await repository.modifyPatient(patientRequest: event.patientRequest);
      yield UpdatePatientLoadingSuccess(updateSuccess: patientResult);
    } catch (error) {
      yield PatientFailure(error: error.toString());
    }
  }

  Stream<PatientState> _mapRemovePatientToState(RemovePatient event) async* {
    try {
      final patientResult = await repository.removePatient(
          removePatientRequest: event.patientRequest);
      yield RemovePatientLoadingSuccess(removeSuccess: patientResult);
    } catch (error) {
      yield PatientFailure(error: error.toString());
    }
  }
}
