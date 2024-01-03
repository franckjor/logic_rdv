import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/add_doctor/bloc/add_doctor.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/version/bloc/version.dart';
import 'package:logic_rdv_v0/src/core/models/doctor_list_model/add_doctor_request.dart';

getVersionApp({BuildContext context}) {
  BlocProvider.of<VersionBloc>(context)
    ..add(VersionRequestEvent());
}
