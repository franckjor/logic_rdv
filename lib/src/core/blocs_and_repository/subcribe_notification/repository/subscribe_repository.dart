import 'dart:async';

import 'package:logic_rdv_v0/src/core/api_services/service/abstract_repository.dart';
import 'package:logic_rdv_v0/src/core/api_services/service/abstract_summary.dart';
import 'package:logic_rdv_v0/src/core/models/subscribe_notification/subscribe_request.dart';
import 'package:logic_rdv_v0/src/core/models/subscribe_notification/verify_notif_subscribtion.dart';

class SubscribeRepository extends AbstractRepository {
  Future getSubscribe({required SubscribeRequest subscribeRequest}) async {
    final String path = '/${getControllerName()}subscribe/';
    final String token = (await getTokenAuthorization()) ?? '';
    final response = await apiManager.postDynamicWithVerifyToken(token, path,
        data: subscribeRequest.toJson());
    SubscribeResponse subscribeResponse =
        SubscribeResponse.fromJson(response.toString())!;
    return subscribeResponse;
  }

  Future getUnSubscribe({required SubscribeRequest subscribeRequest}) async {
    final String path = '/${getControllerName()}unsubscribe/';
    final String token = (await getTokenAuthorization()) ?? '';

    final response = await apiManager.postDynamicWithVerifyToken(token, path,
        data: subscribeRequest.toJson());
    SubscribeResponse unsubscribeResponse =
        SubscribeResponse.fromJson(response.toString())!;
    return unsubscribeResponse;
  }

  Future getIsSubscribe({required SubscribeRequest subscribeRequest}) async {
    final String path = '/${getControllerName()}issubscribed/';
    final String token = (await getTokenAuthorization()) ?? '';

    final response = await apiManager.postDynamicWithVerifyToken(token, path,
        data: subscribeRequest.toJson());
    VerifyNotifSubscribtion issubscribeResponse =
        VerifyNotifSubscribtion.fromJson(response.toString())!;
    return issubscribeResponse;
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
