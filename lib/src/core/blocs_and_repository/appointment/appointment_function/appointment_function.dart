import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/appointment/bloc/appointment.dart';
import 'package:logic_rdv_v0/src/core/models/appointment_model/cancel_appointment_request.dart';
import 'package:logic_rdv_v0/src/core/models/appointment_model/get_appointment_request.dart';

getAppointmentList({BuildContext context, String tokenUser, String page}) {
  GetAppointmentRequest _getAppointmentRequest =
      GetAppointmentRequest((builder) => builder
        ..tokenuser = tokenUser
        ..page = page);
  BlocProvider.of<AppointmentBloc>(context)
    ..add(GetAppointment(getAppointmentRequest: _getAppointmentRequest));
}

cancelAppointment(
    {BuildContext context, String tokenUser, String tokenAppointment}) {
  CancelAppointmentRequest _cancelAppointmentRequest =
      CancelAppointmentRequest((builder) => builder
        ..tokenuser = tokenUser
        ..token = tokenAppointment);
  Navigator.pop(context);
  BlocProvider.of<AppointmentBloc>(context)
    ..add(
        CancelAppointment(cancelAppointmentRequest: _cancelAppointmentRequest));
}
