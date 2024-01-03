library get_token_response;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:logic_rdv_v0/src/core/serializers/serializers.dart';

part 'get_token_response.g.dart';

abstract class GetTokenResponse
    implements Built<GetTokenResponse, GetTokenResponseBuilder> {
  GetTokenResponse._();

  factory GetTokenResponse([updates(GetTokenResponseBuilder b)]) =
      _$GetTokenResponse;

  @BuiltValueField(wireName: 'httpstatut')
  int get httpstatut;
  @BuiltValueField(wireName: 'version')
  String get version;
  @BuiltValueField(wireName: 'request')
  String get request;
  @BuiltValueField(wireName: 'message')
  String get message;
  @BuiltValueField(wireName: 'error')
  String get error;
  @BuiltValueField(wireName: 'data')
  DataTokenResponse get data;
  String toJson() {
    return json
        .encode(serializers.serializeWith(GetTokenResponse.serializer, this));
  }

  static GetTokenResponse fromJson(String jsonString) {
    return serializers.deserializeWith(
        GetTokenResponse.serializer, json.decode(jsonString));
  }

  static Serializer<GetTokenResponse> get serializer =>
      _$getTokenResponseSerializer;
}

abstract class DataTokenResponse
    implements Built<DataTokenResponse, DataTokenResponseBuilder> {
  DataTokenResponse._();

  factory DataTokenResponse([updates(DataTokenResponseBuilder b)]) =
      _$DataTokenResponse;

  @BuiltValueField(wireName: 'authorization')
  @nullable
  String get authorization;
  String toJson() {
    return json
        .encode(serializers.serializeWith(DataTokenResponse.serializer, this));
  }

  static DataTokenResponse fromJson(String jsonString) {
    return serializers.deserializeWith(
        DataTokenResponse.serializer, json.decode(jsonString));
  }

  static Serializer<DataTokenResponse> get serializer =>
      _$dataTokenResponseSerializer;
}
