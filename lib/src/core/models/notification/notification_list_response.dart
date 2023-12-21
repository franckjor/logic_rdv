library notification_list_response;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:logic_rdv_v0/src/core/serializers/serializers.dart';

part 'notification_list_response.g.dart';

abstract class NotificationListResponse
    implements
        Built<NotificationListResponse, NotificationListResponseBuilder> {
  NotificationListResponse._();

  factory NotificationListResponse(
          [updates(NotificationListResponseBuilder b)]) =
      _$NotificationListResponse;

  @BuiltValueField(wireName: 'httpstatut')
  int get httpstatut;
  @BuiltValueField(wireName: 'version')
  String get version;
  @BuiltValueField(wireName: 'request')
  String get request;
  @BuiltValueField(wireName: 'params')
  NotificationResponseParams get params;
  @BuiltValueField(wireName: 'error')
  String get error;
  @BuiltValueField(wireName: 'message')
  String get message;
  @BuiltValueField(wireName: 'data')
  NotificationResponseData get data;
  String toJson() {
    return json.encode(
        serializers.serializeWith(NotificationListResponse.serializer, this));
  }

  static NotificationListResponse fromJson(String jsonString) {
    return serializers.deserializeWith(
        NotificationListResponse.serializer, json.decode(jsonString))!;
  }

  static Serializer<NotificationListResponse> get serializer =>
      _$notificationListResponseSerializer;
}

abstract class NotificationResponseParams
    implements
        Built<NotificationResponseParams, NotificationResponseParamsBuilder> {
  NotificationResponseParams._();

  factory NotificationResponseParams(
          [updates(NotificationResponseParamsBuilder b)]) =
      _$NotificationResponseParams;

  @BuiltValueField(wireName: 'installationkey')
  String get installationkey;
  @BuiltValueField(wireName: 'page')
  String get page;
  @nullable
  @BuiltValueField(wireName: 'tokeruser')
  String get tokeruser;
  String toJson() {
    return json.encode(
        serializers.serializeWith(NotificationResponseParams.serializer, this));
  }

  static NotificationResponseParams? fromJson(String jsonString) {
    return serializers.deserializeWith(
        NotificationResponseParams.serializer, json.decode(jsonString))!;
  }

  static Serializer<NotificationResponseParams> get serializer =>
      _$notificationResponseParamsSerializer;
}

abstract class NotificationResponseData
    implements
        Built<NotificationResponseData, NotificationResponseDataBuilder> {
  NotificationResponseData._();

  factory NotificationResponseData(
          [updates(NotificationResponseDataBuilder b)]) =
      _$NotificationResponseData;

  @BuiltValueField(wireName: 'list')
  BuiltList<NotificationResponseList> get list;
  @BuiltValueField(wireName: 'pagination')
  NotificationResponsePagination get pagination;
  String toJson() {
    return json.encode(
        serializers.serializeWith(NotificationResponseData.serializer, this));
  }

  static NotificationResponseData? fromJson(String jsonString) {
    return serializers.deserializeWith(
        NotificationResponseData.serializer, json.decode(jsonString))!;
  }

  static Serializer<NotificationResponseData> get serializer =>
      _$notificationResponseDataSerializer;
}

abstract class NotificationResponseList
    implements
        Built<NotificationResponseList, NotificationResponseListBuilder> {
  NotificationResponseList._();

  factory NotificationResponseList(
          [updates(NotificationResponseListBuilder b)]) =
      _$NotificationResponseList;

  @BuiltValueField(wireName: 'date')
  String get date;
  @BuiltValueField(wireName: 'nature')
  String get nature;
  @BuiltValueField(wireName: 'nom')
  String get nom;
  @BuiltValueField(wireName: 'message')
  String get message;
  String toJson() {
    return json.encode(
        serializers.serializeWith(NotificationResponseList.serializer, this));
  }

  static NotificationResponseList? fromJson(String jsonString) {
    return serializers.deserializeWith(
        NotificationResponseList.serializer, json.decode(jsonString))!;
  }

  static Serializer<NotificationResponseList> get serializer =>
      _$notificationResponseListSerializer;
}

abstract class NotificationResponsePagination
    implements
        Built<NotificationResponsePagination,
            NotificationResponsePaginationBuilder> {
  NotificationResponsePagination._();

  factory NotificationResponsePagination(
          [updates(NotificationResponsePaginationBuilder b)]) =
      _$NotificationResponsePagination;

  @BuiltValueField(wireName: 'result')
  String get result;
  @BuiltValueField(wireName: 'current')
  String get current;
  @BuiltValueField(wireName: 'maxpage')
  String get maxpage;
  @BuiltValueField(wireName: 'perpage')
  String get perpage;
  String toJson() {
    return json.encode(serializers.serializeWith(
        NotificationResponsePagination.serializer, this));
  }

  static NotificationResponsePagination? fromJson(String jsonString) {
    return serializers.deserializeWith(
        NotificationResponsePagination.serializer, json.decode(jsonString))!;
  }

  static Serializer<NotificationResponsePagination> get serializer =>
      _$notificationResponsePaginationSerializer;
}
