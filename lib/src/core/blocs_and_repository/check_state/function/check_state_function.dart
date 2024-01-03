import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/check_state/bloc/check_state.dart';
import 'package:logic_rdv_v0/src/core/models/appointment_model/create_appointment_request.dart';

rdvTypeCheckState({
  required BuildContext context,
  required String tokenUser,
  required String tokenAppointment,
  String? week,
  required String data,
  required String action,
  required String session,
}) {
  CreateAppointmentRequest _getAppointmentTypeRequest =
      CreateAppointmentRequest((builder) => builder
        ..tokenuser = tokenUser
        ..week = week ?? ''
        ..data = data
        ..action = action
        ..session = session
        ..tokenappointment = tokenAppointment);
  BlocProvider.of<CheckStateBloc>(context)
    ..add(GetStateRdv(createAppointmentRequest: _getAppointmentTypeRequest));
}
