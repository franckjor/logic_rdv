library fixer_rdv_doctor_response;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:logic_rdv_v0/src/core/models/search_name_model/search_name_response.dart';
import 'package:logic_rdv_v0/src/core/serializers/serializers.dart';

part 'fixer_rdv_doctor_response.g.dart';

abstract class FixerRdvDoctorResponse
    implements Built<FixerRdvDoctorResponse, FixerRdvDoctorResponseBuilder> {
  FixerRdvDoctorResponse._();

  factory FixerRdvDoctorResponse([updates(FixerRdvDoctorResponseBuilder b)]) =
      _$FixerRdvDoctorResponse;

  @BuiltValueField(wireName: 'version')
  String get version;
  @BuiltValueField(wireName: 'request')
  String get request;
  @BuiltValueField(wireName: 'params')
  ParamsFixerRdvDoctorResponse get params;
  @BuiltValueField(wireName: 'message')
  String get message;
  @BuiltValueField(wireName: 'httpstatut')
  int get httpstatut;
  @BuiltValueField(wireName: 'error')
  String get error;
  @BuiltValueField(wireName: 'data')
  DataFixerRdvDoctorResponse get data;
  String toJson() {
    return json.encode(
        serializers.serializeWith(FixerRdvDoctorResponse.serializer, this));
  }

  static FixerRdvDoctorResponse fromJson(String jsonString) {
    return serializers.deserializeWith(
        FixerRdvDoctorResponse.serializer, json.decode(jsonString))!;
  }

  static Serializer<FixerRdvDoctorResponse> get serializer =>
      _$fixerRdvDoctorResponseSerializer;
}

abstract class ParamsFixerRdvDoctorResponse
    implements
        Built<ParamsFixerRdvDoctorResponse,
            ParamsFixerRdvDoctorResponseBuilder> {
  ParamsFixerRdvDoctorResponse._();

  factory ParamsFixerRdvDoctorResponse(
          [updates(ParamsFixerRdvDoctorResponseBuilder b)]) =
      _$ParamsFixerRdvDoctorResponse;

  @BuiltValueField(wireName: 'tokenuser')
  String get tokenuser;
  String toJson() {
    return json.encode(serializers.serializeWith(
        ParamsFixerRdvDoctorResponse.serializer, this));
  }

  static ParamsFixerRdvDoctorResponse fromJson(String jsonString) {
    return serializers.deserializeWith(
        ParamsFixerRdvDoctorResponse.serializer, json.decode(jsonString))!;
  }

  static Serializer<ParamsFixerRdvDoctorResponse> get serializer =>
      _$paramsFixerRdvDoctorResponseSerializer;
}

abstract class DataFixerRdvDoctorResponse
    implements
        Built<DataFixerRdvDoctorResponse, DataFixerRdvDoctorResponseBuilder> {
  DataFixerRdvDoctorResponse._();

  factory DataFixerRdvDoctorResponse(
          [updates(DataFixerRdvDoctorResponseBuilder b)]) =
      _$DataFixerRdvDoctorResponse;

  @BuiltValueField(wireName: 'activeEtabs')
  BuiltList<ObjectNameOfSearch> get activeEtabs;
  @BuiltValueField(wireName: 'sameCabinetEtabs')
  BuiltList<ObjectNameOfSearch> get sameCabinetEtabs;
  String toJson() {
    return json.encode(
        serializers.serializeWith(DataFixerRdvDoctorResponse.serializer, this));
  }

  static DataFixerRdvDoctorResponse fromJson(String jsonString) {
    return serializers.deserializeWith(
        DataFixerRdvDoctorResponse.serializer, json.decode(jsonString))!;
  }

  static Serializer<DataFixerRdvDoctorResponse> get serializer =>
      _$dataFixerRdvDoctorResponseSerializer;
}
