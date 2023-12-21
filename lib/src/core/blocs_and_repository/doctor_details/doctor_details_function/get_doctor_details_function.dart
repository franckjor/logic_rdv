import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/add_doctor/bloc/add_doctor.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/doctor_details/bloc/doctor_details.dart';
import 'package:logic_rdv_v0/src/core/models/doctor_details_model/search_doctor_details_request.dart';
import 'package:logic_rdv_v0/src/core/models/doctor_list_model/add_doctor_request.dart';

getDoctorDetails({required BuildContext context,required  String id}) {
  SearchDoctorDetailsRequest _doctorDetailsRequest = SearchDoctorDetailsRequest((builder) => builder
    ..id = id);
  BlocProvider.of<DoctorDetailsBloc>(context)
    ..add(GetDoctorDetailsEvent(doctorDetailsResponse: _doctorDetailsRequest));
}
