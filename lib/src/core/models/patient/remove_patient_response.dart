library remove_patient_response;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:logic_rdv_v0/src/core/serializers/serializers.dart';

part 'remove_patient_response.g.dart';

abstract class RemovePatientResponse
    implements Built<RemovePatientResponse, RemovePatientResponseBuilder> {
  RemovePatientResponse._();

  factory RemovePatientResponse([updates(RemovePatientResponseBuilder b)]) =
      _$RemovePatientResponse;

  @BuiltValueField(wireName: 'httpstatut')
  int get httpstatut;
  @BuiltValueField(wireName: 'version')
  String get version;
  @BuiltValueField(wireName: 'request')
  String get request;
  @BuiltValueField(wireName: 'params')
  ParamsRemovePatientResponse get params;
  @BuiltValueField(wireName: 'error')
  String get error;
  @BuiltValueField(wireName: 'message')
  String get message;
  String toJson() {
    return json.encode(
        serializers.serializeWith(RemovePatientResponse.serializer, this));
  }

  static RemovePatientResponse fromJson(String jsonString) {
    return serializers.deserializeWith(
        RemovePatientResponse.serializer, json.decode(jsonString))!;
  }

  static Serializer<RemovePatientResponse> get serializer =>
      _$removePatientResponseSerializer;
}

abstract class ParamsRemovePatientResponse
    implements
        Built<ParamsRemovePatientResponse, ParamsRemovePatientResponseBuilder> {
  ParamsRemovePatientResponse._();

  factory ParamsRemovePatientResponse(
          [updates(ParamsRemovePatientResponseBuilder b)]) =
      _$ParamsRemovePatientResponse;

  @BuiltValueField(wireName: 'tokenuser')
  String get tokenuser;
  @BuiltValueField(wireName: 'tokenappt')
  String get tokenappt;
  @BuiltValueField(wireName: 'tokenpatient')
  @nullable
  String get tokenpatient;
  String toJson() {
    return json.encode(serializers.serializeWith(
        ParamsRemovePatientResponse.serializer, this));
  }

  static ParamsRemovePatientResponse fromJson(String jsonString) {
    return serializers.deserializeWith(
        ParamsRemovePatientResponse.serializer, json.decode(jsonString))!;
  }

  static Serializer<ParamsRemovePatientResponse> get serializer =>
      _$paramsRemovePatientResponseSerializer;
}
