library patient_response_afert_create;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:logic_rdv_v0/src/core/serializers/serializers.dart';

part 'patient_response_afert_create.g.dart';

abstract class PatientResponseAfertCreate
    implements
        Built<PatientResponseAfertCreate, PatientResponseAfertCreateBuilder> {
  PatientResponseAfertCreate._();

  factory PatientResponseAfertCreate(
          [updates(PatientResponseAfertCreateBuilder b)]) =
      _$PatientResponseAfertCreate;

  @BuiltValueField(wireName: 'httpstatut')
  int get httpstatut;
  @BuiltValueField(wireName: 'version')
  String get version;
  @BuiltValueField(wireName: 'request')
  String get request;
  @BuiltValueField(wireName: 'params')
  ParamsPatientResponseAfertCreate get params;
  @BuiltValueField(wireName: 'error')
  String get error;
  @BuiltValueField(wireName: 'message')
  String get message;
  @BuiltValueField(wireName: 'data')
  BuiltList<DataPatientResponseAfertCreate> get data;
  String toJson() {
    return json.encode(
        serializers.serializeWith(PatientResponseAfertCreate.serializer, this));
  }

  static PatientResponseAfertCreate fromJson(String jsonString) {
    return serializers.deserializeWith(
        PatientResponseAfertCreate.serializer, json.decode(jsonString))!;
  }

  static Serializer<PatientResponseAfertCreate> get serializer =>
      _$patientResponseAfertCreateSerializer;
}

abstract class ParamsPatientResponseAfertCreate
    implements
        Built<ParamsPatientResponseAfertCreate,
            ParamsPatientResponseAfertCreateBuilder> {
  ParamsPatientResponseAfertCreate._();

  factory ParamsPatientResponseAfertCreate(
          [updates(ParamsPatientResponseAfertCreateBuilder b)]) =
      _$ParamsPatientResponseAfertCreate;

  @BuiltValueField(wireName: 'tokenuser')
  String? get tokenuser;
  @BuiltValueField(wireName: 'tokenappt')
  String? get tokenappt;
  @BuiltValueField(wireName: 'nom')
  String? get nom;
  @BuiltValueField(wireName: 'prenom')
  String? get prenom;
  @BuiltValueField(wireName: 'email')
  String? get email;
  @BuiltValueField(wireName: 'phone')
  String? get phone;
  String toJson() {
    return json.encode(serializers.serializeWith(
        ParamsPatientResponseAfertCreate.serializer, this));
  }

  static ParamsPatientResponseAfertCreate fromJson(String jsonString) {
    return serializers.deserializeWith(
        ParamsPatientResponseAfertCreate.serializer, json.decode(jsonString))!;
  }

  static Serializer<ParamsPatientResponseAfertCreate> get serializer =>
      _$paramsPatientResponseAfertCreateSerializer;
}

abstract class DataPatientResponseAfertCreate
    implements
        Built<DataPatientResponseAfertCreate,
            DataPatientResponseAfertCreateBuilder> {
  DataPatientResponseAfertCreate._();

  factory DataPatientResponseAfertCreate(
          [updates(DataPatientResponseAfertCreateBuilder b)]) =
      _$DataPatientResponseAfertCreate;

  @BuiltValueField(wireName: 'nom')
  String? get nom;
  @BuiltValueField(wireName: 'prenom')
  String get prenom;
  @BuiltValueField(wireName: 'email')
  String get email;
  @BuiltValueField(wireName: 'spacephone')
  String? get spacephone;
  @BuiltValueField(wireName: 'phone')
  String? get phone;
  @BuiltValueField(wireName: 'dob')
  String get dob;
  @BuiltValueField(wireName: 'token')
  String get token;
  @BuiltValueField(wireName: 'locked')
  String get locked;
  @BuiltValueField(wireName: 'blacklist')
  String get blacklist;
  @BuiltValueField(wireName: 'nplocked')
  String get nplocked;
  @BuiltValueField(wireName: 'etaballowinternet')
  String get etaballowinternet;
  @BuiltValueField(wireName: 'etaballownpinternet')
  String get etaballownpinternet;
  @BuiltValueField(wireName: 'lockmessage')
  String? get lockmessage;
  @BuiltValueField(wireName: 'photo')
  String? get photo;
  String toJson() {
    return json.encode(serializers.serializeWith(
        DataPatientResponseAfertCreate.serializer, this));
  }

  static DataPatientResponseAfertCreate fromJson(String jsonString) {
    return serializers.deserializeWith(
        DataPatientResponseAfertCreate.serializer, json.decode(jsonString))!;
  }

  static Serializer<DataPatientResponseAfertCreate> get serializer =>
      _$dataPatientResponseAfertCreateSerializer;
}
