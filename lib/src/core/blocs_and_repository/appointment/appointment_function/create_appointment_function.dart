import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/appointment/bloc/create_appointment_bloc/create_appointement.dart';
import 'package:logic_rdv_v0/src/core/models/appointment_model/create_appointment_request.dart';

getAppointmentType(
    {required BuildContext context,required String tokenUser,required String tokenAppointment}) {
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
  required BuildContext context,
  required String tokenUser,
  required String tokenAppointment,
  required String week,
  required String data,
  required String action,
  required String session,
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
  required BuildContext context,
  required String tokenUser,
  required String tokenAppointment,
  required String week,
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
  BlocProvider.of<CreateAppointmentBloc>(context)
    ..add(GetNextPatientForAppointment(
        createAppointmentRequest: _getAppointmentTypeRequest));
}

getPrevAppointmentTimeAndDay({
  required BuildContext context,
  required String tokenUser,
  required String tokenAppointment,
  required String week,
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
  BlocProvider.of<CreateAppointmentBloc>(context)
    ..add(GetPrevPatientForAppointment(
        createAppointmentRequest: _getAppointmentTypeRequest));
}

getPatientList({
  required BuildContext context,
  required String tokenUser,
  required String tokenAppointment,
  required String week,
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
  BlocProvider.of<CreateAppointmentBloc>(context)
    ..add(GetPatientForAppointment(
        createAppointmentRequest: _getAppointmentTypeRequest));
}

patientSelectedForRdv({
  required BuildContext context,
  required String tokenUser,
  required String tokenAppointment,
  required String week,
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
  BlocProvider.of<CreateAppointmentBloc>(context)
    ..add(GetSelectedPatientForAppointment(
        createAppointmentRequest: _getAppointmentTypeRequest));
}

validateAppointmentWithTc({
  required BuildContext context,
  required String tokenUser,
  required String tokenAppointment,
  required String week,
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
  BlocProvider.of<CreateAppointmentBloc>(context)
    ..add(ValidateAppointmentWithTc(
        createAppointmentRequest: _getAppointmentTypeRequest));
}

validateAppointment({
  required BuildContext context,
  required String tokenUser,
  required String tokenAppointment,
  required String week,
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
  BlocProvider.of<CreateAppointmentBloc>(context)
    ..add(ValidateAppointment(
        createAppointmentRequest: _getAppointmentTypeRequest));
}

rdvTypeState({
  required BuildContext context,
  required String tokenUser,
  required String tokenAppointment,
  required String week,
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
  BlocProvider.of<CreateAppointmentBloc>(context)
    ..add(
        GetRdvTypeState(createAppointmentRequest: _getAppointmentTypeRequest));
}

confirmAppointmentWithTc({
  required BuildContext context,
  required String tokenUser,
  required String tokenAppointment,
  required String week,
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
  BlocProvider.of<CreateAppointmentBloc>(context)
    ..add(ConfirmAppointmentWithTc(
        createAppointmentRequest: _getAppointmentTypeRequest));
}
