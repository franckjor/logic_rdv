library login_started_response;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:logic_rdv_v0/src/core/serializers/serializers.dart';

part 'login_started_response.g.dart';

abstract class LoginStartedResponse
    implements Built<LoginStartedResponse, LoginStartedResponseBuilder> {
  LoginStartedResponse._();

  factory LoginStartedResponse([updates(LoginStartedResponseBuilder b)]) =
  _$LoginStartedResponse;

  @BuiltValueField(wireName: 'version')
  String get version;
  @BuiltValueField(wireName: 'request')
  String get request;
  @BuiltValueField(wireName: 'params')
  ParamsLoginStartedResponse get params;
  @BuiltValueField(wireName: 'message')
  String get message;
  @BuiltValueField(wireName: 'error')
  String get error;
  @BuiltValueField(wireName: 'data')
  DataLoginStartedResponse get data;
  @BuiltValueField(wireName: 'httpstatut')
  int get httpstatut;
  String toJson() {
    return json.encode(
        serializers.serializeWith(LoginStartedResponse.serializer, this));
  }

  static LoginStartedResponse fromJson(String jsonString) {
    return serializers.deserializeWith(
        LoginStartedResponse.serializer, json.decode(jsonString))!;
  }

  static Serializer<LoginStartedResponse> get serializer =>
      _$loginStartedResponseSerializer;
}

abstract class ParamsLoginStartedResponse implements Built<ParamsLoginStartedResponse, ParamsLoginStartedResponseBuilder> {
  ParamsLoginStartedResponse._();

  factory ParamsLoginStartedResponse([updates(ParamsLoginStartedResponseBuilder b)]) = _$ParamsLoginStartedResponse;

  @BuiltValueField(wireName: 'data')
  String get data;
  @BuiltValueField(wireName: 'action')
  String get action;
  @BuiltValueField(wireName: 'session')
  String get session;
  String toJson() {
    return json.encode(serializers.serializeWith(ParamsLoginStartedResponse.serializer, this));
  }

  static ParamsLoginStartedResponse fromJson(String jsonString) {
    return serializers.deserializeWith(
        ParamsLoginStartedResponse.serializer, json.decode(jsonString))!;
  }

  static Serializer<ParamsLoginStartedResponse> get serializer => _$paramsLoginStartedResponseSerializer;
}

abstract class DataLoginStartedResponse implements Built<DataLoginStartedResponse, DataLoginStartedResponseBuilder> {
  DataLoginStartedResponse._();

  factory DataLoginStartedResponse([updates(DataLoginStartedResponseBuilder b)]) = _$DataLoginStartedResponse;

  @BuiltValueField(wireName: 'headererror')
  String get headererror;
  @BuiltValueField(wireName: 'type')
  String get type;
  @BuiltValueField(wireName: 'headermessage')
  String get headermessage;
  @BuiltValueField(wireName: 'input')
  BuiltList<InputloginStartedResponse> get input;
  @BuiltValueField(wireName: 'buttonvalidation')
  BuiltList<ButtonvalidationloginStartedResponse> get buttonvalidation;
  @BuiltValueField(wireName: 'session')
  String get session;
  String toJson() {
    return json.encode(serializers.serializeWith(DataLoginStartedResponse.serializer, this));
  }

  static DataLoginStartedResponse fromJson(String jsonString) {
    return serializers.deserializeWith(
        DataLoginStartedResponse.serializer, json.decode(jsonString))!;
  }

  static Serializer<DataLoginStartedResponse> get serializer => _$dataLoginStartedResponseSerializer;
}

abstract class InputloginStartedResponse
    implements
        Built<InputloginStartedResponse, InputloginStartedResponseBuilder> {
  InputloginStartedResponse._();

  factory InputloginStartedResponse(
      [updates(InputloginStartedResponseBuilder b)]) =
  _$InputloginStartedResponse;

  @BuiltValueField(wireName: 'name')
  String get name;
  @BuiltValueField(wireName: 'mandatory')
  String get mandatory;
  @BuiltValueField(wireName: 'readonly')
  String get readonly;
  @BuiltValueField(wireName: 'label')
  String get label;
  @BuiltValueField(wireName: 'value')
  String get value;
  String toJson() {
    return json.encode(
        serializers.serializeWith(InputloginStartedResponse.serializer, this));
  }

  static InputloginStartedResponse fromJson(String jsonString) {
    return serializers.deserializeWith(
        InputloginStartedResponse.serializer, json.decode(jsonString))!;
  }

  static Serializer<InputloginStartedResponse> get serializer =>
      _$inputloginStartedResponseSerializer;
}


abstract class ButtonvalidationloginStartedResponse
    implements
        Built<ButtonvalidationloginStartedResponse,
            ButtonvalidationloginStartedResponseBuilder> {
  ButtonvalidationloginStartedResponse._();

  factory ButtonvalidationloginStartedResponse(
      [updates(ButtonvalidationloginStartedResponseBuilder b)]) =
  _$ButtonvalidationloginStartedResponse;

  @BuiltValueField(wireName: 'onclick')
  String get onclick;
  @BuiltValueField(wireName: 'label')
  String get label;
  @BuiltValueField(wireName: 'onclick_data')
  String get onclickData;
  @BuiltValueField(wireName: 'onclick_action')
  String get onclickAction;
  String toJson() {
    return json.encode(serializers.serializeWith(
        ButtonvalidationloginStartedResponse.serializer, this));
  }

  static ButtonvalidationloginStartedResponse fromJson(String jsonString) {
    return serializers.deserializeWith(
        ButtonvalidationloginStartedResponse.serializer,
        json.decode(jsonString))!;
  }

  static Serializer<ButtonvalidationloginStartedResponse> get serializer =>
      _$buttonvalidationloginStartedResponseSerializer;
}
