import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/appointment/bloc/create_appointment_bloc/create_appointement.dart';
import 'package:logic_rdv_v0/src/core/models/appointment_model/create_appointment_request.dart';

getAppointmentType(
    {BuildContext context, String tokenUser, String tokenAppointment}) {
  CreateAppointmentRequest _getAppointmentTypeRequest =
      CreateAppointmentRequest((builder) => builder
        ..tokenuser = tokenUser
        ..week = ''
        ..data = ''
        ..action = ''
        ..session = ''
        ..tokenappointment = tokenAppointment);
  BlocProvider.of<CreateAppointmentBloc>(context)
    ..add(GetAppointmentType(
        createAppointmentRequest: _getAppointmentTypeRequest));
}

getAppointmentTimeAndDay({
  BuildContext context,
  String tokenUser,
  String tokenAppointment,
  String week,
  String data,
  String action,
  String session,
}) {
  CreateAppointmentRequest _getAppointmentTypeRequest =
      CreateAppointmentRequest((builder) => builder
        ..tokenuser = tokenUser
        ..week = week ?? ''
        ..data = data ?? ''
        ..action = action ?? ''
        ..session = session ?? ''
        ..tokenappointment = tokenAppointment);
  BlocProvider.of<CreateAppointmentBloc>(context)
    ..add(GetAppointmentTypeTimeAndHour(
        createAppointmentRequest: _getAppointmentTypeRequest));
}

getNextAppointmentTimeAndDay({
  BuildContext context,
  String tokenUser,
  String tokenAppointment,
  String week,
  String data,
  String action,
  String session,
}) {
  CreateAppointmentRequest _getAppointmentTypeRequest =
      CreateAppointmentRequest((builder) => builder
        ..tokenuser = tokenUser
        ..week = week ?? ''
        ..data = data
        ..action = action
        ..session = session
        ..tokenappointment = tokenAppointment);
  BlocProvider.of<CreateAppointmentBloc>(context)
    ..add(GetNextPatientForAppointment(
        createAppointmentRequest: _getAppointmentTypeRequest));
}

getPrevAppointmentTimeAndDay({
  BuildContext context,
  String tokenUser,
  String tokenAppointment,
  String week,
  String data,
  String action,
  String session,
}) {
  CreateAppointmentRequest _getAppointmentTypeRequest =
      CreateAppointmentRequest((builder) => builder
        ..tokenuser = tokenUser
        ..week = week ?? ''
        ..data = data
        ..action = action
        ..session = session
        ..tokenappointment = tokenAppointment);
  BlocProvider.of<CreateAppointmentBloc>(context)
    ..add(GetPrevPatientForAppointment(
        createAppointmentRequest: _getAppointmentTypeRequest));
}

getPatientList({
  BuildContext context,
  String tokenUser,
  String tokenAppointment,
  String week,
  String data,
  String action,
  String session,
}) {
  CreateAppointmentRequest _getAppointmentTypeRequest =
      CreateAppointmentRequest((builder) => builder
        ..tokenuser = tokenUser
        ..week = week ?? ''
        ..data = data
        ..action = action
        ..session = session
        ..tokenappointment = tokenAppointment);
  BlocProvider.of<CreateAppointmentBloc>(context)
    ..add(GetPatientForAppointment(
        createAppointmentRequest: _getAppointmentTypeRequest));
}

patientSelectedForRdv({
  BuildContext context,
  String tokenUser,
  String tokenAppointment,
  String week,
  String data,
  String action,
  String session,
}) {
  CreateAppointmentRequest _getAppointmentTypeRequest =
      CreateAppointmentRequest((builder) => builder
        ..tokenuser = tokenUser
        ..week = week ?? ''
        ..data = data
        ..action = action
        ..session = session
        ..tokenappointment = tokenAppointment);
  BlocProvider.of<CreateAppointmentBloc>(context)
    ..add(GetSelectedPatientForAppointment(
        createAppointmentRequest: _getAppointmentTypeRequest));
}

validateAppointmentWithTc({
  BuildContext context,
  String tokenUser,
  String tokenAppointment,
  String week,
  String data,
  String action,
  String session,
}) {
  CreateAppointmentRequest _getAppointmentTypeRequest =
      CreateAppointmentRequest((builder) => builder
        ..tokenuser = tokenUser
        ..week = week ?? ''
        ..data = data
        ..action = action
        ..session = session
        ..tokenappointment = tokenAppointment);
  BlocProvider.of<CreateAppointmentBloc>(context)
    ..add(ValidateAppointmentWithTc(
        createAppointmentRequest: _getAppointmentTypeRequest));
}

validateAppointment({
  BuildContext context,
  String tokenUser,
  String tokenAppointment,
  String week,
  String data,
  String action,
  String session,
}) {
  CreateAppointmentRequest _getAppointmentTypeRequest =
      CreateAppointmentRequest((builder) => builder
        ..tokenuser = tokenUser
        ..week = week ?? ''
        ..data = data
        ..action = action
        ..session = session
        ..tokenappointment = tokenAppointment);
  BlocProvider.of<CreateAppointmentBloc>(context)
    ..add(ValidateAppointment(
        createAppointmentRequest: _getAppointmentTypeRequest));
}

rdvTypeState({
  BuildContext context,
  String tokenUser,
  String tokenAppointment,
  String week,
  String data,
  String action,
  String session,
}) {
  CreateAppointmentRequest _getAppointmentTypeRequest =
      CreateAppointmentRequest((builder) => builder
        ..tokenuser = tokenUser
        ..week = week ?? ''
        ..data = data
        ..action = action
        ..session = session
        ..tokenappointment = tokenAppointment);
  BlocProvider.of<CreateAppointmentBloc>(context)
    ..add(
        GetRdvTypeState(createAppointmentRequest: _getAppointmentTypeRequest));
}

confirmAppointmentWithTc({
  BuildContext context,
  String tokenUser,
  String tokenAppointment,
  String week,
  String data,
  String action,
  String session,
}) {
  CreateAppointmentRequest _getAppointmentTypeRequest =
      CreateAppointmentRequest((builder) => builder
        ..tokenuser = tokenUser
        ..week = week ?? ''
        ..data = data
        ..action = action
        ..session = session
        ..tokenappointment = tokenAppointment);
  BlocProvider.of<CreateAppointmentBloc>(context)
    ..add(ConfirmAppointmentWithTc(
        createAppointmentRequest: _getAppointmentTypeRequest));
}
