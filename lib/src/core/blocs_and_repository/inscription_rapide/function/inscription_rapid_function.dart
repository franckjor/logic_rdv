import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/inscription_rapide/bloc/incription_rapid.dart';
import 'package:logic_rdv_v0/src/core/models/incription_model/create_patient_request.dart';
import 'package:logic_rdv_v0/src/core/models/incription_model/inscription_check_request.dart';

onPressedCheckDoctorButton({required BuildContext context,required String phoneNumberCabinet}) {
  InscriptionCheckRequest _checkDoctor =
      InscriptionCheckRequest((builder) => builder..phone = phoneNumberCabinet);
  BlocProvider.of<InscriptionRapidBloc>(context)
    ..add(VerifyDoctorEvent(checkRequest: _checkDoctor));
}

onPressedCreatePatientButton(
    {
    required BuildContext context,
    required String mobile,
    required String phone,
    required String nom,
    required String prenom,
    required String cgu,
    required String code,
    required String id,
    required String pass1,
    required String pass2,
    required String email}) {
  CreatePatientRequest _createPatientRequest =
      CreatePatientRequest((builder) => builder
        ..email = email
        ..phone = phone
        ..prenom = prenom
        ..nom = nom
        ..cgu = cgu
        ..code = code
        ..id = id
        ..mobile = mobile
        ..pass1 = pass1
        ..pass2 = pass2);
  BlocProvider.of<InscriptionRapidBloc>(context)
    ..add(CreatePatientEvent(createPatientRequest: _createPatientRequest));
}
