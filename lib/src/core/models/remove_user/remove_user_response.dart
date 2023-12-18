library remove_user_response;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:logic_rdv_v0/src/core/serializers/serializers.dart';

part 'remove_user_response.g.dart';

abstract class RemoveUserResponse
    implements Built<RemoveUserResponse, RemoveUserResponseBuilder> {
  RemoveUserResponse._();

  factory RemoveUserResponse([updates(RemoveUserResponseBuilder b)]) =
      _$RemoveUserResponse;

  @BuiltValueField(wireName: 'version')
  String get version;
  @BuiltValueField(wireName: 'request')
  String get request;
  @BuiltValueField(wireName: 'params')
  ParamsRemoveUserResponse get params;
  @BuiltValueField(wireName: 'message')
  String get message;
  @BuiltValueField(wireName: 'httpstatut')
  int get httpstatut;
  @BuiltValueField(wireName: 'error')
  String get error;
  String toJson() {
    return json
        .encode(serializers.serializeWith(RemoveUserResponse.serializer, this));
  }

  static RemoveUserResponse fromJson(String jsonString) {
    return serializers.deserializeWith(
        RemoveUserResponse.serializer, json.decode(jsonString));
  }

  static Serializer<RemoveUserResponse> get serializer =>
      _$removeUserResponseSerializer;
}

abstract class ParamsRemoveUserResponse
    implements
        Built<ParamsRemoveUserResponse, ParamsRemoveUserResponseBuilder> {
  ParamsRemoveUserResponse._();

  factory ParamsRemoveUserResponse(
          [updates(ParamsRemoveUserResponseBuilder b)]) =
      _$ParamsRemoveUserResponse;

  @BuiltValueField(wireName: 'tokenuser')
  String get tokenuser;
  String toJson() {
    return json.encode(
        serializers.serializeWith(ParamsRemoveUserResponse.serializer, this));
  }

  static ParamsRemoveUserResponse fromJson(String jsonString) {
    return serializers.deserializeWith(
        ParamsRemoveUserResponse.serializer, json.decode(jsonString));
  }

  static Serializer<ParamsRemoveUserResponse> get serializer =>
      _$paramsRemoveUserResponseSerializer;
}
