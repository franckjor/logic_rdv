import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/patient/bloc/patient.dart';
import 'package:logic_rdv_v0/src/core/models/patient/get_list_of_patient_request.dart';
import 'package:logic_rdv_v0/src/core/models/patient/patient_request.dart';
import 'package:logic_rdv_v0/src/core/models/patient/remove_patient_request.dart';

getListOfPatient({required BuildContext context,required String tokenUser,required String tokenDoctor}) {
  GetListOfPatientRequest _getListOfPatient =
      GetListOfPatientRequest((builder) => builder
        ..tokenuser = tokenUser
        ..tokenappt = tokenDoctor);

  BlocProvider.of<PatientBloc>(context)
    ..add(GetListOfPatient(listOfPatientRequest: _getListOfPatient));
}

removePatient(
    {
    required BuildContext context,
    required String tokenUser,
    required String tokenDoctor,
    required String tokenPatient}) {
  RemovePatientRequest _removePatient =
      RemovePatientRequest((builder) => builder
        ..tokenuser = tokenUser
        ..tokenpatient = tokenPatient
        ..tokenappt = tokenDoctor);

  Navigator.pop(context);
  BlocProvider.of<PatientBloc>(context)
    ..add(RemovePatient(patientRequest: _removePatient));
}

editPatient({required BuildContext context,required PatientRequest patientRequest}) {
  PatientRequest _updatePatient = PatientRequest((builder) => builder
    ..tokenuser = patientRequest.tokenuser
    ..tokenappt = patientRequest.tokenappt
    ..tokenpatient = patientRequest.tokenpatient
    ..email = patientRequest.email
    ..prenom = patientRequest.prenom
    ..phone = patientRequest.phone
    ..nom = patientRequest.nom);
  BlocProvider.of<PatientBloc>(context)
    ..add(ModifyPatient(patientRequest: _updatePatient));
}

addPatient({required BuildContext context,required PatientRequest patientRequest}) {
  PatientRequest _updatePatient = PatientRequest((builder) => builder
    ..tokenuser = patientRequest.tokenuser
    ..tokenappt = patientRequest.tokenappt
    ..email = patientRequest.email
    ..prenom = patientRequest.prenom
    ..phone = patientRequest.phone
    ..nom = patientRequest.nom);
  BlocProvider.of<PatientBloc>(context)
    ..add(AddPatientPressed(patientRequest: _updatePatient));
}
