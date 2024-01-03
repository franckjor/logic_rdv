import 'package:equatable/equatable.dart';
import 'package:logic_rdv_v0/src/core/models/notification/notification_list_request.dart';

abstract class NotificationEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class GetAllNotification extends NotificationEvent {
  final NotificationListRequest notificationListRequest;

  GetAllNotification({this.notificationListRequest});

  @override
  List<Object> get props => [notificationListRequest];

  @override
  String toString() =>
      'GetAllNotification {notificationListRequest: $notificationListRequest}';
}
