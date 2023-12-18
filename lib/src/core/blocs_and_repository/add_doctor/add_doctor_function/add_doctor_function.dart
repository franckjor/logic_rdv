import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/add_doctor/bloc/add_doctor.dart';
import 'package:logic_rdv_v0/src/core/models/doctor_list_model/add_doctor_request.dart';

addDoctor({BuildContext context, String tokenUser, String phone, String id}) {
  AddDoctorRequest _addDoctor = AddDoctorRequest((builder) => builder
    ..tokenuser = tokenUser
    ..phone = phone
    ..id = id);
  BlocProvider.of<AddDoctorBloc>(context)
    ..add(AddDoctorRequestEvent(addDoctorRequest: _addDoctor));
}
