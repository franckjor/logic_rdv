import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/appointment/bloc/appointment.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/message/bloc/message.dart';
import 'package:logic_rdv_v0/src/core/models/appointment_model/cancel_appointment_request.dart';
import 'package:logic_rdv_v0/src/core/models/appointment_model/get_appointment_request.dart';
import 'package:logic_rdv_v0/src/core/models/message_rdv/message_request.dart';

getMessageList({required BuildContext context,required String tokenUser,required String page}) {
  MessageRequest _getMessageList =
  MessageRequest((builder) => builder
    ..tokenuser = tokenUser
    ..page = page);
  BlocProvider.of<MessageBloc>(context)
    ..add(GetMessage(messageRequest: _getMessageList));
}