library add_doctor_response;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:logic_rdv_v0/src/core/serializers/serializers.dart';

part 'add_doctor_response.g.dart';

abstract class AddDoctorResponse
    implements Built<AddDoctorResponse, AddDoctorResponseBuilder> {
  AddDoctorResponse._();

  factory AddDoctorResponse([updates(AddDoctorResponseBuilder b)]) =
      _$AddDoctorResponse;

  @BuiltValueField(wireName: 'version')
  String get version;
  @BuiltValueField(wireName: 'request')
  String get request;
  @BuiltValueField(wireName: 'params')
  ParamsAddDoctor get params;
  @BuiltValueField(wireName: 'message')
  String get message;
  @BuiltValueField(wireName: 'httpstatut')
  int get httpstatut;
  @BuiltValueField(wireName: 'error')
  String get error;
  @BuiltValueField(wireName: 'data')
  DataAddDoctor get data;
  String toJson() {
    return json
        .encode(serializers.serializeWith(AddDoctorResponse.serializer, this));
  }

  static AddDoctorResponse fromJson(String jsonString) {
    return serializers.deserializeWith(
        AddDoctorResponse.serializer, json.decode(jsonString))!;
  }

  static Serializer<AddDoctorResponse> get serializer =>
      _$addDoctorResponseSerializer;
}

abstract class ParamsAddDoctor
    implements Built<ParamsAddDoctor, ParamsAddDoctorBuilder> {
  ParamsAddDoctor._();

  factory ParamsAddDoctor([updates(ParamsAddDoctorBuilder b)]) =
      _$ParamsAddDoctor;

  @BuiltValueField(wireName: 'tokenuser')
  String get tokenuser;
  @BuiltValueField(wireName: 'id')
  String get id;
  @BuiltValueField(wireName: 'phone')
  String get phone;
  String toJson() {
    return json
        .encode(serializers.serializeWith(ParamsAddDoctor.serializer, this));
  }

  static ParamsAddDoctor fromJson(String jsonString) {
    return serializers.deserializeWith(
        ParamsAddDoctor.serializer, json.decode(jsonString))!;
  }

  static Serializer<ParamsAddDoctor> get serializer =>
      _$paramsAddDoctorSerializer;
}

abstract class DataAddDoctor
    implements Built<DataAddDoctor, DataAddDoctorBuilder> {
  DataAddDoctor._();

  factory DataAddDoctor([updates(DataAddDoctorBuilder b)]) = _$DataAddDoctor;

  @BuiltValueField(wireName: 'etablissement')
  EtablissementAddDoctor get etablissement;
  String toJson() {
    return json
        .encode(serializers.serializeWith(DataAddDoctor.serializer, this));
  }

  static DataAddDoctor fromJson(String jsonString) {
    return serializers.deserializeWith(
        DataAddDoctor.serializer, json.decode(jsonString))!;
  }

  static Serializer<DataAddDoctor> get serializer => _$dataAddDoctorSerializer;
}

abstract class EtablissementAddDoctor
    implements Built<EtablissementAddDoctor, EtablissementAddDoctorBuilder> {
  EtablissementAddDoctor._();

  factory EtablissementAddDoctor([updates(EtablissementAddDoctorBuilder b)]) =
      _$EtablissementAddDoctor;

  @BuiltValueField(wireName: 'id')
  String get id;
  @BuiltValueField(wireName: 'nom')
  String get nom;
  @BuiltValueField(wireName: 'address')
  String get address;
  @BuiltValueField(wireName: 'zip')
  String get zip;
  @BuiltValueField(wireName: 'city')
  String get city;
  @BuiltValueField(wireName: 'internet')
  int get internet;
  @BuiltValueField(wireName: 'id_city')
  String get idCity;
  @BuiltValueField(wireName: 'telnospace')
  String get telnospace;
  @BuiltValueField(wireName: 'lat')
  String get lat;
  @BuiltValueField(wireName: 'lng')
  String get lng;
  @BuiltValueField(wireName: 'category')
  String get category;
  @BuiltValueField(wireName: 'id_category')
  String get idCategory;
  @BuiltValueField(wireName: 'icon')
  String get icon;
  @BuiltValueField(wireName: 'km_diff')
  String get kmDiff;
  @BuiltValueField(wireName: 'civility')
  String get civility;
  @BuiltValueField(wireName: 'tel')
  String get tel;
  @BuiltValueField(wireName: 'id_agenda')
  String get idAgenda;
  @BuiltValueField(wireName: 'appointment')
  AppointmentAddDoctor get appointment;
  @BuiltValueField(wireName: 'isother')
  int get isother;
  String toJson() {
    return json.encode(
        serializers.serializeWith(EtablissementAddDoctor.serializer, this));
  }

  static EtablissementAddDoctor fromJson(String jsonString) {
    return serializers.deserializeWith(
        EtablissementAddDoctor.serializer, json.decode(jsonString))!;
  }

  static Serializer<EtablissementAddDoctor> get serializer =>
      _$etablissementAddDoctorSerializer;
}

abstract class AppointmentAddDoctor
    implements Built<AppointmentAddDoctor, AppointmentAddDoctorBuilder> {
  AppointmentAddDoctor._();

  factory AppointmentAddDoctor([updates(AppointmentAddDoctorBuilder b)]) =
      _$AppointmentAddDoctor;

  @BuiltValueField(wireName: 'token')
  String get token;
  String toJson() {
    return json.encode(
        serializers.serializeWith(AppointmentAddDoctor.serializer, this));
  }

  static AppointmentAddDoctor fromJson(String jsonString) {
    return serializers.deserializeWith(
        AppointmentAddDoctor.serializer, json.decode(jsonString))!;
  }

  static Serializer<AppointmentAddDoctor> get serializer =>
      _$appointmentAddDoctorSerializer;
}
