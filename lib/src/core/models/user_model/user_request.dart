library user_request;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:logic_rdv_v0/src/core/serializers/serializers.dart';

part 'user_request.g.dart';

abstract class UserRequest implements Built<UserRequest, UserRequestBuilder> {
  UserRequest._();

  factory UserRequest([updates(UserRequestBuilder b)]) = _$UserRequest;

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
    return json.encode(serializers.serializeWith(UserRequest.serializer, this));
  }

  static UserRequest fromJson(String jsonString) {
    return serializers.deserializeWith(
        UserRequest.serializer, json.decode(jsonString));
  }

  static Serializer<UserRequest> get serializer => _$userRequestSerializer;
}
