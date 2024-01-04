library login_request;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:logic_rdv_v0/src/core/serializers/serializers.dart';

part 'login_request.g.dart';

abstract class LoginRequest
    implements Built<LoginRequest, LoginRequestBuilder> {
  LoginRequest._();

  factory LoginRequest([updates(LoginRequestBuilder b)]) = _$LoginRequest;

  @BuiltValueField(wireName: 'email')
  String get email;
  @BuiltValueField(wireName: 'password')
  String get password;
  String toJson() {
    return json
        .encode(serializers.serializeWith(LoginRequest.serializer, this));
  }

  static LoginRequest? fromJson(String jsonString) {
    return serializers.deserializeWith(
        LoginRequest.serializer, json.decode(jsonString));
  }

  static Serializer<LoginRequest> get serializer => _$loginRequestSerializer;
}
