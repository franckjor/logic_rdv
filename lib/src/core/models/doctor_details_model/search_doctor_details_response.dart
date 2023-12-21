library search_doctor_details_response;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:logic_rdv_v0/src/core/serializers/serializers.dart';

part 'search_doctor_details_response.g.dart';

abstract class SearchDoctorDetailsResponse
    implements
        Built<SearchDoctorDetailsResponse, SearchDoctorDetailsResponseBuilder> {
  SearchDoctorDetailsResponse._();

  factory SearchDoctorDetailsResponse(
          [updates(SearchDoctorDetailsResponseBuilder b)]) =
      _$SearchDoctorDetailsResponse;

  @BuiltValueField(wireName: 'httpstatut')
  int get httpstatut;
  @BuiltValueField(wireName: 'version')
  String get version;
  @BuiltValueField(wireName: 'request')
  String get request;
  @BuiltValueField(wireName: 'params')
  ParamsDoctorDetails get params;
  @BuiltValueField(wireName: 'error')
  String get error;
  @BuiltValueField(wireName: 'message')
  String get message;
  @BuiltValueField(wireName: 'data')
  DataDoctorDetails get data;
  String toJson() {
    return json.encode(serializers.serializeWith(
        SearchDoctorDetailsResponse.serializer, this));
  }

  static SearchDoctorDetailsResponse fromJson(String jsonString) {
    return serializers.deserializeWith(
        SearchDoctorDetailsResponse.serializer, json.decode(jsonString))!;
  }

  static Serializer<SearchDoctorDetailsResponse> get serializer =>
      _$searchDoctorDetailsResponseSerializer;
}

abstract class ParamsDoctorDetails
    implements Built<ParamsDoctorDetails, ParamsDoctorDetailsBuilder> {
  ParamsDoctorDetails._();

  factory ParamsDoctorDetails([updates(ParamsDoctorDetailsBuilder b)]) =
      _$ParamsDoctorDetails;

  @BuiltValueField(wireName: 'id')
  String get id;
  String toJson() {
    return json.encode(
        serializers.serializeWith(ParamsDoctorDetails.serializer, this));
  }

  static ParamsDoctorDetails fromJson(String jsonString) {
    return serializers.deserializeWith(
        ParamsDoctorDetails.serializer, json.decode(jsonString))!;
  }

  static Serializer<ParamsDoctorDetails> get serializer =>
      _$paramsDoctorDetailsSerializer;
}

abstract class DataDoctorDetails
    implements Built<DataDoctorDetails, DataDoctorDetailsBuilder> {
  DataDoctorDetails._();

  factory DataDoctorDetails([updates(DataDoctorDetailsBuilder b)]) =
      _$DataDoctorDetails;

  @BuiltValueField(wireName: 'category')
  String get category;
  @BuiltValueField(wireName: 'id_category')
  String get idCategory;
  @BuiltValueField(wireName: 'icon')
  String get icon;
  @nullable
  @BuiltValueField(wireName: 'km_diff')
  String get kmDiff;
  @BuiltValueField(wireName: 'id')
  String get id;
  @BuiltValueField(wireName: 'civility')
  String get civility;
  @BuiltValueField(wireName: 'nom')
  String get nom;
  @BuiltValueField(wireName: 'address')
  String get address;
  @BuiltValueField(wireName: 'zip')
  String get zip;
  @BuiltValueField(wireName: 'city')
  String get city;
  @BuiltValueField(wireName: 'id_city')
  String get idCity;
  @BuiltValueField(wireName: 'lat')
  String get lat;
  @BuiltValueField(wireName: 'lng')
  String get lng;
  @BuiltValueField(wireName: 'tel')
  String get tel;
  @BuiltValueField(wireName: 'telnospace')
  String get telnospace;
  @BuiltValueField(wireName: 'appointment')
  AppointmentDoctorDetails get appointment;
  @BuiltValueField(wireName: 'chapters')
  BuiltList<Chapters> get chapters;
  @BuiltValueField(wireName: 'prenom')
  @nullable
  String get prenom;
  @BuiltValueField(wireName: 'id_agenda')
  String get idAgenda;
  String toJson() {
    return json
        .encode(serializers.serializeWith(DataDoctorDetails.serializer, this));
  }

  static DataDoctorDetails fromJson(String jsonString) {
    return serializers.deserializeWith(
        DataDoctorDetails.serializer, json.decode(jsonString))!;
  }

  static Serializer<DataDoctorDetails> get serializer =>
      _$dataDoctorDetailsSerializer;
}

abstract class AppointmentDoctorDetails
    implements
        Built<AppointmentDoctorDetails, AppointmentDoctorDetailsBuilder> {
  AppointmentDoctorDetails._();

  factory AppointmentDoctorDetails(
          [updates(AppointmentDoctorDetailsBuilder b)]) =
      _$AppointmentDoctorDetails;

  @BuiltValueField(wireName: 'token')
  String get token;
  String toJson() {
    return json.encode(
        serializers.serializeWith(AppointmentDoctorDetails.serializer, this));
  }

  static AppointmentDoctorDetails fromJson(String jsonString) {
    return serializers.deserializeWith(
        AppointmentDoctorDetails.serializer, json.decode(jsonString))!;
  }

  static Serializer<AppointmentDoctorDetails> get serializer =>
      _$appointmentDoctorDetailsSerializer;
}

abstract class Chapters implements Built<Chapters, ChaptersBuilder> {
  Chapters._();

  factory Chapters([updates(ChaptersBuilder b)]) = _$Chapters;

  @BuiltValueField(wireName: 'title')
  String get title;
  @BuiltValueField(wireName: 'description')
  String get description;
  String toJson() {
    return json.encode(serializers.serializeWith(Chapters.serializer, this));
  }

  static Chapters fromJson(String jsonString) {
    return serializers.deserializeWith(
        Chapters.serializer, json.decode(jsonString))!;
  }

  static Serializer<Chapters> get serializer => _$chaptersSerializer;
}
