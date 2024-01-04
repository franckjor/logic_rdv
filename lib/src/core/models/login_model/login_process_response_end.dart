library login_process_response_end;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:logic_rdv_v0/src/core/models/login_model/login_started_response.dart';
import 'package:logic_rdv_v0/src/core/serializers/serializers.dart';

part 'login_process_response_end.g.dart';

abstract class LoginProcessResponseEnd
    implements Built<LoginProcessResponseEnd, LoginProcessResponseEndBuilder> {
  LoginProcessResponseEnd._();

  factory LoginProcessResponseEnd([updates(LoginProcessResponseEndBuilder b)]) =
  _$LoginProcessResponseEnd;

  @BuiltValueField(wireName: 'version')
  String get version;
  @BuiltValueField(wireName: 'request')
  String get request;
  @BuiltValueField(wireName: 'params')
  ParamsLoginProcessResponseEnd get params;
  @BuiltValueField(wireName: 'message')
  String get message;
  @BuiltValueField(wireName: 'error')
  String get error;
  @BuiltValueField(wireName: 'data')
  DataLoginProcessResponseEnd get data;
  @BuiltValueField(wireName: 'httpstatut')
  int get httpstatut;
  String toJson() {
    return json.encode(
        serializers.serializeWith(LoginProcessResponseEnd.serializer, this));
  }

  static LoginProcessResponseEnd? fromJson(String jsonString) {
    return serializers.deserializeWith(
        LoginProcessResponseEnd.serializer, json.decode(jsonString));
  }

  static Serializer<LoginProcessResponseEnd> get serializer =>
      _$loginProcessResponseEndSerializer;
}

abstract class ParamsLoginProcessResponseEnd implements Built<ParamsLoginProcessResponseEnd, ParamsLoginProcessResponseEndBuilder> {
  ParamsLoginProcessResponseEnd._();

  factory ParamsLoginProcessResponseEnd([updates(ParamsLoginProcessResponseEndBuilder b)]) = _$ParamsLoginProcessResponseEnd;

  @BuiltValueField(wireName: 'data')
  String get data;
  @BuiltValueField(wireName: 'action')
  String get action;
  @BuiltValueField(wireName: 'session')
  String get session;
  String toJson() {
    return json.encode(serializers.serializeWith(ParamsLoginProcessResponseEnd.serializer, this));
  }

  static ParamsLoginProcessResponseEnd? fromJson(String jsonString) {
    return serializers.deserializeWith(
        ParamsLoginProcessResponseEnd.serializer, json.decode(jsonString));
  }

  static Serializer<ParamsLoginProcessResponseEnd> get serializer => _$paramsLoginProcessResponseEndSerializer;
}

abstract class DataLoginProcessResponseEnd implements Built<DataLoginProcessResponseEnd, DataLoginProcessResponseEndBuilder> {
  DataLoginProcessResponseEnd._();

  factory DataLoginProcessResponseEnd([updates(DataLoginProcessResponseEndBuilder b)]) = _$DataLoginProcessResponseEnd;

  @BuiltValueField(wireName: 'headererror')
  String get headererror;
  @BuiltValueField(wireName: 'user')
  UserLoginProcessResponseEnd? get user;
  @BuiltValueField(wireName: 'type')
  String get type;
  @BuiltValueField(wireName: 'headermessage')
  String get headermessage;
  @BuiltValueField(wireName: 'input')
  BuiltList<InputloginStartedResponse>? get input;
  @BuiltValueField(wireName: 'buttonvalidation')
  BuiltList<ButtonvalidationloginStartedResponse> get buttonvalidation;
  @BuiltValueField(wireName: 'session')
  String? get session;
  String toJson() {
    return json.encode(serializers.serializeWith(DataLoginProcessResponseEnd.serializer, this));
  }

  static DataLoginProcessResponseEnd? fromJson(String jsonString) {
    return serializers.deserializeWith(
        DataLoginProcessResponseEnd.serializer, json.decode(jsonString));
  }

  static Serializer<DataLoginProcessResponseEnd> get serializer => _$dataLoginProcessResponseEndSerializer;
}

abstract class UserLoginProcessResponseEnd
    implements
        Built<UserLoginProcessResponseEnd, UserLoginProcessResponseEndBuilder> {
  UserLoginProcessResponseEnd._();

  factory UserLoginProcessResponseEnd(
      [updates(UserLoginProcessResponseEndBuilder b)]) =
  _$UserLoginProcessResponseEnd;

  @BuiltValueField(wireName: 'tokenuser')
  String get tokenuser;
  @BuiltValueField(wireName: 'nom')
  String get nom;
  @BuiltValueField(wireName: 'prenom')
  String get prenom;
  @BuiltValueField(wireName: 'email')
  String get email;
  @BuiltValueField(wireName: 'mobile')
  String get mobile;
  @BuiltValueField(wireName: 'timeout')
  String get timeout;
  String toJson() {
    return json.encode(serializers.serializeWith(
        UserLoginProcessResponseEnd.serializer, this));
  }

  static UserLoginProcessResponseEnd? fromJson(String jsonString) {
    return serializers.deserializeWith(
        UserLoginProcessResponseEnd.serializer, json.decode(jsonString));
  }

  static Serializer<UserLoginProcessResponseEnd> get serializer =>
      _$userLoginProcessResponseEndSerializer;
}
