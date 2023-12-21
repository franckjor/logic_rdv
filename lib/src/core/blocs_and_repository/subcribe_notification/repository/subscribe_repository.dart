import 'dart:async';

import 'package:logic_rdv_v0/src/core/api_services/service/abstract_repository.dart';
import 'package:logic_rdv_v0/src/core/api_services/service/abstract_summary.dart';
import 'package:logic_rdv_v0/src/core/models/doctor_list_model/list_of_doctor_reponse.dart';
import 'package:logic_rdv_v0/src/core/models/doctor_list_model/list_of_doctor_request.dart';
import 'package:logic_rdv_v0/src/core/models/search_city_model/search_city_request.dart';
import 'package:logic_rdv_v0/src/core/models/search_city_model/search_city_response.dart';
import 'package:logic_rdv_v0/src/core/models/search_city_model/search_dialog_request.dart';
import 'package:logic_rdv_v0/src/core/models/search_city_model/search_dialog_response.dart';
import 'package:logic_rdv_v0/src/core/models/search_name_model/search_name_request.dart';
import 'package:logic_rdv_v0/src/core/models/search_name_model/search_name_response.dart';
import 'package:logic_rdv_v0/src/core/models/subscribe_notification/subscribe_request.dart';
import 'package:logic_rdv_v0/src/core/models/subscribe_notification/verify_notif_subscribtion.dart';

class SubscribeRepository extends AbstractRepository {
  Future getSubscribe({required SubscribeRequest subscribeRequest}) async {
    final String path = '/${getControllerName()}subscribe/';
    final response = await apiManager.postDynamicWithVerifyToken(
        await getTokenAuthorization(), path,
        data: subscribeRequest.toJson());
    SubscribeResponse subscribeResponse =
    SubscribeResponse.fromJson(response.toString());
    return subscribeResponse;
  }

  Future getUnSubscribe({required SubscribeRequest subscribeRequest}) async {
    final String path = '/${getControllerName()}unsubscribe/';
    final response = await apiManager.postDynamicWithVerifyToken(
        await getTokenAuthorization(), path,
        data: subscribeRequest.toJson());
    SubscribeResponse unsubscribeResponse =
    SubscribeResponse.fromJson(response.toString());
    return unsubscribeResponse;
  }


  Future getIsSubscribe({required SubscribeRequest subscribeRequest}) async {
    final String path = '/${getControllerName()}issubscribed/';
    final response = await apiManager.postDynamicWithVerifyToken(
        await getTokenAuthorization(), path,
        data: subscribeRequest.toJson());
    VerifyNotifSubscribtion issubscribeResponse =
    VerifyNotifSubscribtion.fromJson(response.toString());
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
