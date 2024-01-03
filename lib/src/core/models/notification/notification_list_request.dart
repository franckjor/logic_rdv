library notification_list_request;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:logic_rdv_v0/src/core/serializers/serializers.dart';

part 'notification_list_request.g.dart';

abstract class NotificationListRequest
    implements Built<NotificationListRequest, NotificationListRequestBuilder> {
  NotificationListRequest._();

  factory NotificationListRequest([updates(NotificationListRequestBuilder b)]) =
      _$NotificationListRequest;

  @BuiltValueField(wireName: 'installationkey')
  String get installationkey;
  @BuiltValueField(wireName: 'page')
  String get page;
  @BuiltValueField(wireName: 'tokeruser')
  String? get tokeruser;
  String toJson() {
    return json.encode(
        serializers.serializeWith(NotificationListRequest.serializer, this));
  }

  static NotificationListRequest fromJson(String jsonString) {
    return serializers.deserializeWith(
        NotificationListRequest.serializer, json.decode(jsonString));
  }

  static Serializer<NotificationListRequest> get serializer =>
      _$notificationListRequestSerializer;
}
