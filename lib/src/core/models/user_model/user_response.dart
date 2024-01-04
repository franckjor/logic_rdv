library user_response;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:logic_rdv_v0/src/core/serializers/serializers.dart';

part 'user_response.g.dart';

abstract class UserResponse
    implements Built<UserResponse, UserResponseBuilder> {
  UserResponse._();

  factory UserResponse([updates(UserResponseBuilder b)]) = _$UserResponse;

  @BuiltValueField(wireName: 'version')
  String get version;
  @BuiltValueField(wireName: 'request')
  String get request;
  @BuiltValueField(wireName: 'params')
  ParamsUserResponse get params;
  @BuiltValueField(wireName: 'message')
  String get message;
  @BuiltValueField(wireName: 'httpstatut')
  int get httpstatut;
  @BuiltValueField(wireName: 'error')
  String get error;
  String toJson() {
    return json
        .encode(serializers.serializeWith(UserResponse.serializer, this));
  }

  static UserResponse fromJson(String jsonString) {
    return serializers.deserializeWith(
        UserResponse.serializer, json.decode(jsonString))!;
  }

  static Serializer<UserResponse> get serializer => _$userResponseSerializer;
}

abstract class ParamsUserResponse
    implements Built<ParamsUserResponse, ParamsUserResponseBuilder> {
  ParamsUserResponse._();

  factory ParamsUserResponse([updates(ParamsUserResponseBuilder b)]) =
      _$ParamsUserResponse;

  @BuiltValueField(wireName: 'tokenuser')
  String get tokenuser;
  @BuiltValueField(wireName: 'compte_nom')
  String get compteNom;
  @BuiltValueField(wireName: 'compte_prenom')
  String get comptePrenom;
  @BuiltValueField(wireName: 'compte_email')
  String get compteEmail;
  @BuiltValueField(wireName: 'compte_mobile')
  String get compteMobile;
  @BuiltValueField(wireName: 'compte_adresse')
  String get compteAdresse;
  @BuiltValueField(wireName: 'compte_codepostal')
  String get compteCodepostal;
  @BuiltValueField(wireName: 'compte_ville')
  String get compteVille;
  @BuiltValueField(wireName: 'compte_password')
  String get comptePassword;
  @BuiltValueField(wireName: 'compte_password_conf')
  String get comptePasswordConf;
  String toJson() {
    return json
        .encode(serializers.serializeWith(ParamsUserResponse.serializer, this));
  }

  static ParamsUserResponse fromJson(String jsonString) {
    return serializers.deserializeWith(
        ParamsUserResponse.serializer, json.decode(jsonString))!;
  }

  static Serializer<ParamsUserResponse> get serializer =>
      _$paramsUserResponseSerializer;
}
