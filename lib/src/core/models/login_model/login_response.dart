library login_response;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:logic_rdv_v0/src/core/serializers/serializers.dart';

part 'login_response.g.dart';

abstract class LoginResponse
    implements Built<LoginResponse, LoginResponseBuilder> {
  LoginResponse._();

  factory LoginResponse([updates(LoginResponseBuilder b)]) = _$LoginResponse;

  @BuiltValueField(wireName: 'version')
  String get version;
  @BuiltValueField(wireName: 'request')
  @nullable
  String get request;
  @BuiltValueField(wireName: 'params')
  @nullable
  ParamsLoginResponse get params;
  @BuiltValueField(wireName: 'message')
  String get message;
  @BuiltValueField(wireName: 'data')
  @nullable
  DataLoginResponse get data;
  @BuiltValueField(wireName: 'httpstatut')
  @nullable
  int get httpstatut;
  @BuiltValueField(wireName: 'error')
  @nullable
  String get error;
  String toJson() {
    return json
        .encode(serializers.serializeWith(LoginResponse.serializer, this));
  }

  static LoginResponse fromJson(String jsonString) {
    return serializers.deserializeWith(
        LoginResponse.serializer, json.decode(jsonString));
  }

  static Serializer<LoginResponse> get serializer => _$loginResponseSerializer;
}

abstract class ParamsLoginResponse
    implements Built<ParamsLoginResponse, ParamsLoginResponseBuilder> {
  ParamsLoginResponse._();

  factory ParamsLoginResponse([updates(ParamsLoginResponseBuilder b)]) =
      _$ParamsLoginResponse;

  @BuiltValueField(wireName: 'email')
  String get email;
  @BuiltValueField(wireName: 'password')
  @nullable
  String get password;
  String toJson() {
    return json.encode(
        serializers.serializeWith(ParamsLoginResponse.serializer, this));
  }

  static ParamsLoginResponse fromJson(String jsonString) {
    return serializers.deserializeWith(
        ParamsLoginResponse.serializer, json.decode(jsonString));
  }

  static Serializer<ParamsLoginResponse> get serializer =>
      _$paramsLoginResponseSerializer;
}

abstract class DataLoginResponse
    implements Built<DataLoginResponse, DataLoginResponseBuilder> {
  DataLoginResponse._();

  factory DataLoginResponse([updates(DataLoginResponseBuilder b)]) =
      _$DataLoginResponse;

  @BuiltValueField(wireName: 'tokenuser')
  @nullable
  String get tokenuser;
  @BuiltValueField(wireName: 'nom')
  @nullable
  String get nom;
  @BuiltValueField(wireName: 'prenom')
  @nullable
  String get prenom;
  @BuiltValueField(wireName: 'email')
  @nullable
  String get email;
  @BuiltValueField(wireName: 'mobile')
  @nullable
  String get mobile;
  String toJson() {
    return json
        .encode(serializers.serializeWith(DataLoginResponse.serializer, this));
  }

  static DataLoginResponse fromJson(String jsonString) {
    return serializers.deserializeWith(
        DataLoginResponse.serializer, json.decode(jsonString));
  }

  static Serializer<DataLoginResponse> get serializer =>
      _$dataLoginResponseSerializer;
}
