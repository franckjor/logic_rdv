library create_patient_response;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:logic_rdv_v0/src/core/serializers/serializers.dart';

part 'create_patient_response.g.dart';

abstract class CreatePatientResponse
    implements Built<CreatePatientResponse, CreatePatientResponseBuilder> {
  CreatePatientResponse._();

  factory CreatePatientResponse([updates(CreatePatientResponseBuilder b)]) =
      _$CreatePatientResponse;

  @BuiltValueField(wireName: 'version')
  String get version;
  @BuiltValueField(wireName: 'request')
  String get request;
  @BuiltValueField(wireName: 'params')
  ParamsCreatePatientResponse get params;
  @BuiltValueField(wireName: 'message')
  String get message;
  @BuiltValueField(wireName: 'httpstatut')
  int get httpstatut;
  @BuiltValueField(wireName: 'error')
  String get error;
  String toJson() {
    return json.encode(
        serializers.serializeWith(CreatePatientResponse.serializer, this));
  }

  static CreatePatientResponse fromJson(String jsonString) {
    return serializers.deserializeWith(
        CreatePatientResponse.serializer, json.decode(jsonString))!;
  }

  static Serializer<CreatePatientResponse> get serializer =>
      _$createPatientResponseSerializer;
}

abstract class ParamsCreatePatientResponse
    implements
        Built<ParamsCreatePatientResponse, ParamsCreatePatientResponseBuilder> {
  ParamsCreatePatientResponse._();

  factory ParamsCreatePatientResponse(
          [updates(ParamsCreatePatientResponseBuilder b)]) =
      _$ParamsCreatePatientResponse;

  @BuiltValueField(wireName: 'phone')
  String get phone;
  @BuiltValueField(wireName: 'id')
  String get id;
  @BuiltValueField(wireName: 'code')
  String get code;
  @BuiltValueField(wireName: 'nom')
  String get nom;
  @BuiltValueField(wireName: 'prenom')
  String get prenom;
  @BuiltValueField(wireName: 'mobile')
  String get mobile;
  @BuiltValueField(wireName: 'email')
  String get email;
  @BuiltValueField(wireName: 'pass1')
  String get pass1;
  @BuiltValueField(wireName: 'pass2')
  String get pass2;
  @BuiltValueField(wireName: 'cgu')
  String get cgu;
  String toJson() {
    return json.encode(serializers.serializeWith(
        ParamsCreatePatientResponse.serializer, this));
  }

  static ParamsCreatePatientResponse fromJson(String jsonString) {
    return serializers.deserializeWith(
        ParamsCreatePatientResponse.serializer, json.decode(jsonString))!;
  }

  static Serializer<ParamsCreatePatientResponse> get serializer =>
      _$paramsCreatePatientResponseSerializer;
}
