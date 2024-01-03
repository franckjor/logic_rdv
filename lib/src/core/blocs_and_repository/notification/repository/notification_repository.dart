import 'package:logic_rdv_v0/src/core/api_services/service/abstract_repository.dart';
import 'package:logic_rdv_v0/src/core/api_services/service/abstract_summary.dart';
import 'package:logic_rdv_v0/src/core/models/notification/notification_list_request.dart';
import 'package:logic_rdv_v0/src/core/models/notification/notification_list_response.dart';

class NotificationRepository extends AbstractRepository {
  Future getAllNotification(
      {NotificationListRequest notificationListRequest}) async {
    final String path = '/${getControllerName()}list/';
    final response = await apiManager.postDynamicWithVerifyToken(
        await getTokenAuthorization(), path,
        data: notificationListRequest.toJson());
    NotificationListResponse notificationListResponse =
        NotificationListResponse.fromJson(response.toString());
    return notificationListResponse;
  }

  @override
  String getControllerName() {
    return 'notification/';
  }

  @override
  AbstractSummaryDto toSummaryDto(String json) {
    throw UnimplementedError();
  }
}
