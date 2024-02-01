library subscribe_request;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:logic_rdv_v0/src/core/serializers/serializers.dart';

part 'subscribe_request.g.dart';

abstract class SubscribeRequest
    implements Built<SubscribeRequest, SubscribeRequestBuilder> {
  SubscribeRequest._();

  factory SubscribeRequest([updates(SubscribeRequestBuilder b)]) =
  _$SubscribeRequest;

  @BuiltValueField(wireName: 'tokenuser')
  String get tokenuser;
  @BuiltValueField(wireName: 'installationkey')
  String get installationkey;
  String toJson() {
    return json
        .encode(serializers.serializeWith(SubscribeRequest.serializer, this));
  }

  static SubscribeRequest fromJson(String jsonString) {
    return serializers.deserializeWith(
        SubscribeRequest.serializer, json.decode(jsonString))!;
  }

  static Serializer<SubscribeRequest> get serializer =>
      _$subscribeRequestSerializer;
}

abstract class SubscribeResponse
    implements Built<SubscribeResponse, SubscribeResponseBuilder> {
  SubscribeResponse._();

  factory SubscribeResponse([updates(SubscribeResponseBuilder b)]) =
  _$SubscribeResponse;

  @BuiltValueField(wireName: 'httpstatut')
  int get httpstatut;
  @BuiltValueField(wireName: 'version')
  String get version;
  @BuiltValueField(wireName: 'request')
  String get request;
  @BuiltValueField(wireName: 'params')
  ParamsSubscribeResponse get params;
  @BuiltValueField(wireName: 'error')
  String get error;
  @BuiltValueField(wireName: 'message')
  String get message;
  @BuiltValueField(wireName: 'data')
  DataSubscribeResponse? get data;
  String toJson() {
    return json
        .encode(serializers.serializeWith(SubscribeResponse.serializer, this));
  }

  static SubscribeResponse fromJson(String jsonString) {
    return serializers.deserializeWith(
        SubscribeResponse.serializer, json.decode(jsonString))!;
  }

  static Serializer<SubscribeResponse> get serializer =>
      _$subscribeResponseSerializer;
}

abstract class ParamsSubscribeResponse implements Built<ParamsSubscribeResponse, ParamsSubscribeResponseBuilder> {
  ParamsSubscribeResponse._();

  factory ParamsSubscribeResponse([updates(ParamsSubscribeResponseBuilder b)]) = _$ParamsSubscribeResponse;

  @BuiltValueField(wireName: 'tokenuser')
  String get tokenuser;
  @BuiltValueField(wireName: 'installationkey')
  String get installationkey;
  String toJson() {
    return json.encode(serializers.serializeWith(ParamsSubscribeResponse.serializer, this));
  }

  static ParamsSubscribeResponse fromJson(String jsonString) {
    return serializers.deserializeWith(
        ParamsSubscribeResponse.serializer, json.decode(jsonString))!;
  }

  static Serializer<ParamsSubscribeResponse> get serializer => _$paramsSubscribeResponseSerializer;
}

abstract class DataSubscribeResponse implements Built<DataSubscribeResponse, DataSubscribeResponseBuilder> {
  DataSubscribeResponse._();

  factory DataSubscribeResponse([updates(DataSubscribeResponseBuilder b)]) = _$DataSubscribeResponse;

  @BuiltValueField(wireName: 'total')
  String get total;

  String toJson() {
    return json.encode(serializers.serializeWith(DataSubscribeResponse.serializer, this));
  }

  static DataSubscribeResponse fromJson(String jsonString) {
    return serializers.deserializeWith(
        DataSubscribeResponse.serializer, json.decode(jsonString))!;
  }

  static Serializer<DataSubscribeResponse> get serializer => _$dataSubscribeResponseSerializer;
}
