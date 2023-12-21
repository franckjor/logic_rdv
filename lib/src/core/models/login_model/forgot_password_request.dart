library forgot_password_request;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:logic_rdv_v0/src/core/serializers/serializers.dart';

part 'forgot_password_request.g.dart';

abstract class ForgotPasswordRequest
    implements Built<ForgotPasswordRequest, ForgotPasswordRequestBuilder> {
  ForgotPasswordRequest._();

  factory ForgotPasswordRequest([updates(ForgotPasswordRequestBuilder b)]) =
      _$ForgotPasswordRequest;

  @BuiltValueField(wireName: 'email')
  String get email;
  String toJson() {
    return json.encode(
        serializers.serializeWith(ForgotPasswordRequest.serializer, this));
  }

  static ForgotPasswordRequest fromJson(String jsonString) {
    return serializers.deserializeWith(
        ForgotPasswordRequest.serializer, json.decode(jsonString))!;
  }

  static Serializer<ForgotPasswordRequest> get serializer =>
      _$forgotPasswordRequestSerializer;
}
