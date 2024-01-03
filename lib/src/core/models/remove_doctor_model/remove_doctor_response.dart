library remove_doctor_response;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:logic_rdv_v0/src/core/serializers/serializers.dart';

part 'remove_doctor_response.g.dart';

abstract class RemoveDoctorResponse
    implements Built<RemoveDoctorResponse, RemoveDoctorResponseBuilder> {
  RemoveDoctorResponse._();

  factory RemoveDoctorResponse([updates(RemoveDoctorResponseBuilder b)]) =
      _$RemoveDoctorResponse;

  @BuiltValueField(wireName: 'version')
  String get version;
  @BuiltValueField(wireName: 'request')
  String get request;
  @BuiltValueField(wireName: 'params')
  ParamsRemoveDoctorResponse get params;
  @BuiltValueField(wireName: 'message')
  String get message;
  @BuiltValueField(wireName: 'httpstatut')
  int get httpstatut;
  @BuiltValueField(wireName: 'error')
  String get error;
  String toJson() {
    return json.encode(
        serializers.serializeWith(RemoveDoctorResponse.serializer, this));
  }

  static RemoveDoctorResponse fromJson(String jsonString) {
    return serializers.deserializeWith(
        RemoveDoctorResponse.serializer, json.decode(jsonString));
  }

  static Serializer<RemoveDoctorResponse> get serializer =>
      _$removeDoctorResponseSerializer;
}

abstract class ParamsRemoveDoctorResponse
    implements
        Built<ParamsRemoveDoctorResponse, ParamsRemoveDoctorResponseBuilder> {
  ParamsRemoveDoctorResponse._();

  factory ParamsRemoveDoctorResponse(
          [updates(ParamsRemoveDoctorResponseBuilder b)]) =
      _$ParamsRemoveDoctorResponse;

  @BuiltValueField(wireName: 'tokenuser')
  String get tokenuser;
  @BuiltValueField(wireName: 'id')
  String get id;
  String toJson() {
    return json.encode(
        serializers.serializeWith(ParamsRemoveDoctorResponse.serializer, this));
  }

  static ParamsRemoveDoctorResponse fromJson(String jsonString) {
    return serializers.deserializeWith(
        ParamsRemoveDoctorResponse.serializer, json.decode(jsonString));
  }

  static Serializer<ParamsRemoveDoctorResponse> get serializer =>
      _$paramsRemoveDoctorResponseSerializer;
}
