library login_started_request;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:logic_rdv_v0/src/core/serializers/serializers.dart';

part 'login_started_request.g.dart';

abstract class LoginStartedRequest
    implements Built<LoginStartedRequest, LoginStartedRequestBuilder> {
  LoginStartedRequest._();

  factory LoginStartedRequest([updates(LoginStartedRequestBuilder b)]) =
  _$LoginStartedRequest;

  @BuiltValueField(wireName: 'data')
  String get data;
  @BuiltValueField(wireName: 'action')
  String get action;
  @BuiltValueField(wireName: 'session')
  String get session;
  String toJson() {
    return json.encode(
        serializers.serializeWith(LoginStartedRequest.serializer, this));
  }

  static LoginStartedRequest? fromJson(String jsonString) {
    return serializers.deserializeWith(
        LoginStartedRequest.serializer, json.decode(jsonString));
  }

  static Serializer<LoginStartedRequest> get serializer =>
      _$loginStartedRequestSerializer;
}
