import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/notification/bloc/notification.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/notification/repository/notification_repository.dart';

class NotificationBloc extends Bloc<NotificationEvent, NotificationState> {
  final NotificationRepository repository;

  NotificationBloc({required this.repository}) : super(NotificationLoading());

  
  NotificationState get initialState => NotificationLoading();


  Stream<NotificationState> mapEventToState(NotificationEvent event) async* {
    yield NotificationLoading();
    if (event is GetAllNotification) {
      yield* _mapGetAllNotificationListToState(event);
    }
  }

  Stream<NotificationState> _mapGetAllNotificationListToState(
      GetAllNotification event) async* {
    try {
      final notificationList = await repository.getAllNotification(
          notificationListRequest: event.notificationListRequest);
      yield NotificationListLoadingSuccess(response: notificationList);
    } catch (error) {
      yield NotificationFailure(error: error.toString());
    }
  }
}
