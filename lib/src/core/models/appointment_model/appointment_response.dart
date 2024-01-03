library appointment_response;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:logic_rdv_v0/src/core/models/doctor_list_model/list_of_doctor_reponse.dart';
import 'package:logic_rdv_v0/src/core/serializers/serializers.dart';

part 'appointment_response.g.dart';

abstract class AppointmentResponse
    implements Built<AppointmentResponse, AppointmentResponseBuilder> {
  AppointmentResponse._();

  factory AppointmentResponse([updates(AppointmentResponseBuilder b)]) =
      _$AppointmentResponse;

  @BuiltValueField(wireName: 'version')
  String get version;
  @BuiltValueField(wireName: 'request')
  String get request;
  @BuiltValueField(wireName: 'params')
  ParamsAppointmentResponse get params;
  @BuiltValueField(wireName: 'message')
  String get message;
  @BuiltValueField(wireName: 'httpstatut')
  int get httpstatut;
  @BuiltValueField(wireName: 'error')
  String get error;
  @BuiltValueField(wireName: 'data')
  DataAppointmentResponse get data;
  String toJson() {
    return json.encode(
        serializers.serializeWith(AppointmentResponse.serializer, this));
  }

  static AppointmentResponse? fromJson(String jsonString) {
    return serializers.deserializeWith(
        AppointmentResponse.serializer, json.decode(jsonString));
  }

  static Serializer<AppointmentResponse> get serializer =>
      _$appointmentResponseSerializer;
}

abstract class ParamsAppointmentResponse
    implements
        Built<ParamsAppointmentResponse, ParamsAppointmentResponseBuilder> {
  ParamsAppointmentResponse._();

  factory ParamsAppointmentResponse(
          [updates(ParamsAppointmentResponseBuilder b)]) =
      _$ParamsAppointmentResponse;

  @BuiltValueField(wireName: 'tokenuser')
  String get tokenuser;
  @BuiltValueField(wireName: 'page')
  String get page;
  String toJson() {
    return json.encode(
        serializers.serializeWith(ParamsAppointmentResponse.serializer, this));
  }

  static ParamsAppointmentResponse? fromJson(String jsonString) {
    return serializers.deserializeWith(
        ParamsAppointmentResponse.serializer, json.decode(jsonString));
  }

  static Serializer<ParamsAppointmentResponse> get serializer =>
      _$paramsAppointmentResponseSerializer;
}

abstract class DataAppointmentResponse
    implements Built<DataAppointmentResponse, DataAppointmentResponseBuilder> {
  DataAppointmentResponse._();

  factory DataAppointmentResponse([updates(DataAppointmentResponseBuilder b)]) =
      _$DataAppointmentResponse;

  @BuiltValueField(wireName: 'list')
  BuiltList<AllAppoinmentResponse> get list;
  @BuiltValueField(wireName: 'pagination')
  PaginationListOfDoctor get pagination;
  String toJson() {
    return json.encode(
        serializers.serializeWith(DataAppointmentResponse.serializer, this));
  }

  static DataAppointmentResponse? fromJson(String jsonString) {
    return serializers.deserializeWith(
        DataAppointmentResponse.serializer, json.decode(jsonString));
  }

  static Serializer<DataAppointmentResponse> get serializer =>
      _$dataAppointmentResponseSerializer;
}

abstract class CabinetResponse
    implements Built<CabinetResponse, CabinetResponseBuilder> {
  CabinetResponse._();

  factory CabinetResponse([updates(CabinetResponseBuilder b)]) =
      _$CabinetResponse;

  @BuiltValueField(wireName: 'nom')
  String get nom;
  @BuiltValueField(wireName: 'address')
  String get address;
  @BuiltValueField(wireName: 'city')
  String get city;
  @BuiltValueField(wireName: 'phone')
  String get phone;
  @BuiltValueField(wireName: 'spacephone')
  String get spacephone;
  @BuiltValueField(wireName: 'lat')
  String get lat;
  @BuiltValueField(wireName: 'lng')
  String get lng;
  @BuiltValueField(wireName: 'token')
  String get token;
  String toJson() {
    return json
        .encode(serializers.serializeWith(CabinetResponse.serializer, this));
  }

  static CabinetResponse? fromJson(String jsonString) {
    return serializers.deserializeWith(
        CabinetResponse.serializer, json.decode(jsonString));
  }

  static Serializer<CabinetResponse> get serializer =>
      _$cabinetResponseSerializer;
}

abstract class PatientResponse
    implements Built<PatientResponse, PatientResponseBuilder> {
  PatientResponse._();

  factory PatientResponse([updates(PatientResponseBuilder b)]) =
      _$PatientResponse;

  @BuiltValueField(wireName: 'nom')
  String get nom;
  @BuiltValueField(wireName: 'birthdate')
  String get birthdate;
  @BuiltValueField(wireName: 'email')
  String get email;
  @BuiltValueField(wireName: 'nir')
  String get nir;
  @BuiltValueField(wireName: 'phone')
  String get phone;
  @BuiltValueField(wireName: 'spacephone')
  String get spacephone;
  @BuiltValueField(wireName: 'photo')
  String get photo;
  String toJson() {
    return json
        .encode(serializers.serializeWith(PatientResponse.serializer, this));
  }

  static PatientResponse? fromJson(String jsonString) {
    return serializers.deserializeWith(
        PatientResponse.serializer, json.decode(jsonString));
  }

  static Serializer<PatientResponse> get serializer =>
      _$patientResponseSerializer;
}

abstract class AppointmentDataResponse
    implements Built<AppointmentDataResponse, AppointmentDataResponseBuilder> {
  AppointmentDataResponse._();

  factory AppointmentDataResponse([updates(AppointmentDataResponseBuilder b)]) =
      _$AppointmentDataResponse;

  @BuiltValueField(wireName: 'date')
  String get date;
  @BuiltValueField(wireName: 'time')
  String get time;
  @BuiltValueField(wireName: 'label')
  String get label;
  @BuiltValueField(wireName: 'duration')
  String get duration;
  @BuiltValueField(wireName: 'status')
  String get status;
  @BuiltValueField(wireName: 'token')
  String get token;
  @BuiltValueField(wireName: 'tokentelecons')
  String get tokentelecons;
  @BuiltValueField(wireName: 'buttonlabeltelecons')
  String? get buttonlabeltelecons;
  @BuiltValueField(wireName: 'with')
  String get avec;
  @BuiltValueField(wireName: 'informations')
  String get informations;
  @BuiltValueField(wireName: 'past')
  String? get past;
  String toJson() {
    return json.encode(
        serializers.serializeWith(AppointmentDataResponse.serializer, this));
  }

  static AppointmentDataResponse? fromJson(String jsonString) {
    return serializers.deserializeWith(
        AppointmentDataResponse.serializer, json.decode(jsonString));
  }

  static Serializer<AppointmentDataResponse> get serializer =>
      _$appointmentDataResponseSerializer;
}

abstract class AllAppoinmentResponse
    implements Built<AllAppoinmentResponse, AllAppoinmentResponseBuilder> {
  AllAppoinmentResponse._();

  factory AllAppoinmentResponse([updates(AllAppoinmentResponseBuilder b)]) =
      _$AllAppoinmentResponse;

  @BuiltValueField(wireName: 'cabinet')
  CabinetResponse get cabinet;
  @BuiltValueField(wireName: 'patient')
  PatientResponse get patient;
  @BuiltValueField(wireName: 'appointment')
  AppointmentDataResponse get appointment;
  String toJson() {
    return json.encode(
        serializers.serializeWith(AllAppoinmentResponse.serializer, this));
  }

  static AllAppoinmentResponse? fromJson(String jsonString) {
    return serializers.deserializeWith(
        AllAppoinmentResponse.serializer, json.decode(jsonString));
  }

  static Serializer<AllAppoinmentResponse> get serializer =>
      _$allAppoinmentResponseSerializer;
}
