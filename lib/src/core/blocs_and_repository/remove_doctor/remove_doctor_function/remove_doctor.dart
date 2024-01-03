import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/remove_doctor/bloc/remove_doctor.dart';
import 'package:logic_rdv_v0/src/core/models/remove_doctor_model/remove_doctor_request.dart';

removeDoctorToList(
    {required BuildContext context, required String tokenUser, required String idDoctor}) {
  RemoveDoctorRequest _removeDoctorRequest =
      RemoveDoctorRequest((builder) => builder
        ..tokenUser = tokenUser
        ..id = idDoctor);
  Navigator.pop(context);
  BlocProvider.of<RemoveDoctorBloc>(context)
    ..add(RemoveDoctorPressed(removeDoctorRequest: _removeDoctorRequest));
}
