import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/notification/bloc/notification.dart';
import 'package:logic_rdv_v0/src/core/models/notification/notification_list_request.dart';

getAllNotificationList(
    {required BuildContext context,
   required  String installationKey,
    required String page,
   required  String tokenUser}) {
  NotificationListRequest notificationListRequest =
      NotificationListRequest((builder) => builder
        ..installationkey = installationKey
        ..tokeruser = tokenUser
        ..page = page);
  BlocProvider.of<NotificationBloc>(context)
    ..add(GetAllNotification(notificationListRequest: notificationListRequest));
}
