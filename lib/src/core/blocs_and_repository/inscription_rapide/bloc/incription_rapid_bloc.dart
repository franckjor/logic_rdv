import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/inscription_rapide/bloc/incription_rapid.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/inscription_rapide/repositories/inscription_repository.dart';

class InscriptionRapidBloc
    extends Bloc<InscriptionRapidEvent, InscriptionRapidState> {
  final InscriptionRapidRepository repository;

  InscriptionRapidBloc({required this.repository})
      : super(InscriptionRapidStateEmpty());

  @override
  InscriptionRapidState get initialState => InscriptionRapidStateLoading();

  @override
  Stream<InscriptionRapidState> mapEventToState(
      InscriptionRapidEvent event) async* {
    yield InscriptionRapidStateLoading();
    if (event is VerifyDoctorEvent) {
      yield* _mapVerifyDoctorToState(event);
    } else if (event is CreatePatientEvent) {
      yield* _mapCreatePatientToState(event);
    }
  }

  Stream<InscriptionRapidState> _mapVerifyDoctorToState(
      VerifyDoctorEvent event) async* {
    try {
      final result = await repository.verifyDoctor(
          inscriptionCheckRequest: event.checkRequest);
      yield CheckDoctorLoadingSuccess(checkResponse: result);
    } catch (error) {
      yield InscriptionRapidStateLoadingFailure(error: error.toString());
    }
  }

  Stream<InscriptionRapidState> _mapCreatePatientToState(
      CreatePatientEvent event) async* {
    try {
      final result = await repository.createPatientAccount(
          createPatientRequest: event.createPatientRequest);
      yield CreatePatientLoadingSuccess(createPatientResponse: result);
    } catch (error) {
      yield InscriptionRapidStateLoadingFailure(error: error.toString());
    }
  }
}
