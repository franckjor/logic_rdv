library search_name_response;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:logic_rdv_v0/src/core/serializers/serializers.dart';

part 'search_name_response.g.dart';

abstract class SearchNameResponse
    implements Built<SearchNameResponse, SearchNameResponseBuilder> {
  SearchNameResponse._();

  factory SearchNameResponse([updates(SearchNameResponseBuilder b)]) =
      _$SearchNameResponse;

  @BuiltValueField(wireName: 'httpstatut')
  int get httpstatut;
  @BuiltValueField(wireName: 'version')
  String get version;
  @BuiltValueField(wireName: 'request')
  String get request;
  @BuiltValueField(wireName: 'params')
  ParamsSearchNameResponse get params;
  @BuiltValueField(wireName: 'error')
  String get error;
  @BuiltValueField(wireName: 'message')
  String get message;
  @BuiltValueField(wireName: 'data')
  DataSearchNameResponse get data;
  String toJson() {
    return json
        .encode(serializers.serializeWith(SearchNameResponse.serializer, this));
  }

  static SearchNameResponse fromJson(String jsonString) {
    return serializers.deserializeWith(
        SearchNameResponse.serializer, json.decode(jsonString));
  }

  static Serializer<SearchNameResponse> get serializer =>
      _$searchNameResponseSerializer;
}

abstract class ParamsSearchNameResponse
    implements
        Built<ParamsSearchNameResponse, ParamsSearchNameResponseBuilder> {
  ParamsSearchNameResponse._();

  factory ParamsSearchNameResponse(
          [updates(ParamsSearchNameResponseBuilder b)]) =
      _$ParamsSearchNameResponse;

  @BuiltValueField(wireName: 'kind')
  String get kind;
  @BuiltValueField(wireName: 'cp')
  String get cp;
  @BuiltValueField(wireName: 'proxy_istelecons')
  String get proxyIstelecons;
  @BuiltValueField(wireName: 'term')
  String get term;
  String toJson() {
    return json.encode(
        serializers.serializeWith(ParamsSearchNameResponse.serializer, this));
  }

  static ParamsSearchNameResponse fromJson(String jsonString) {
    return serializers.deserializeWith(
        ParamsSearchNameResponse.serializer, json.decode(jsonString));
  }

  static Serializer<ParamsSearchNameResponse> get serializer =>
      _$paramsSearchNameResponseSerializer;
}

abstract class DataSearchNameResponse
    implements Built<DataSearchNameResponse, DataSearchNameResponseBuilder> {
  DataSearchNameResponse._();

  factory DataSearchNameResponse([updates(DataSearchNameResponseBuilder b)]) =
      _$DataSearchNameResponse;

  @BuiltValueField(wireName: 'kind')
  String get kind;
  @BuiltValueField(wireName: 'cp')
  String get cp;
  @BuiltValueField(wireName: 'proxy_istelecons')
  String get proxyIstelecons;
  @BuiltValueField(wireName: 'term')
  String get term;
  @BuiltValueField(wireName: 'api')
  String get api;
  @BuiltValueField(wireName: 'list')
  BuiltList<ObjectNameOfSearch> get list;
  String toJson() {
    return json.encode(
        serializers.serializeWith(DataSearchNameResponse.serializer, this));
  }

  static DataSearchNameResponse fromJson(String jsonString) {
    return serializers.deserializeWith(
        DataSearchNameResponse.serializer, json.decode(jsonString));
  }

  static Serializer<DataSearchNameResponse> get serializer =>
      _$dataSearchNameResponseSerializer;
}

abstract class ObjectNameOfSearch
    implements Built<ObjectNameOfSearch, ObjectNameOfSearchBuilder> {
  ObjectNameOfSearch._();

  factory ObjectNameOfSearch([updates(ObjectNameOfSearchBuilder b)]) =
      _$ObjectNameOfSearch;

  @BuiltValueField(wireName: 'id')
  String get id;
  @BuiltValueField(wireName: 'nom')
  @nullable
  String get nom;
  @BuiltValueField(wireName: 'prenom')
  @nullable
  String get prenom;
  @BuiltValueField(wireName: 'id_city')
  @nullable
  String get idCity;
  @BuiltValueField(wireName: 'km_diff')
  @nullable
  String get kmDiff;
  @BuiltValueField(wireName: 'address')
  @nullable
  String get address;
  @BuiltValueField(wireName: 'zip')
  @nullable
  String get zip;
  @BuiltValueField(wireName: 'city')
  @nullable
  String get city;
  @BuiltValueField(wireName: 'category')
  @nullable
  String get category;
  @BuiltValueField(wireName: 'tel')
  @nullable
  String get tel;
  @BuiltValueField(wireName: 'telnospace')
  @nullable
  String get telnospace;
  @BuiltValueField(wireName: 'lat')
  @nullable
  String get lat;
  @BuiltValueField(wireName: 'lng')
  @nullable
  String get lng;
  @BuiltValueField(wireName: 'icon')
  @nullable
  String get icon;
  @BuiltValueField(wireName: 'id_category')
  @nullable
  String get idCategory;
  @BuiltValueField(wireName: 'id_agenda')
  @nullable
  String get idAgenda;
  @BuiltValueField(wireName: 'civility')
  @nullable
  String get civility;
  @BuiltValueField(wireName: 'isother')
  @nullable
  String get isOther;
  @BuiltValueField(wireName: 'appointment')
  @nullable
  AppointmentSearchNameResponse get appointment;
  String toJson() {
    return json
        .encode(serializers.serializeWith(ObjectNameOfSearch.serializer, this));
  }

  static ObjectNameOfSearch fromJson(String jsonString) {
    return serializers.deserializeWith(
        ObjectNameOfSearch.serializer, json.decode(jsonString));
  }

  static Serializer<ObjectNameOfSearch> get serializer =>
      _$objectNameOfSearchSerializer;

  String get fullName => nom ?? " " + " " + prenom ?? " ";
}

abstract class AppointmentSearchNameResponse
    implements
        Built<AppointmentSearchNameResponse,
            AppointmentSearchNameResponseBuilder> {
  AppointmentSearchNameResponse._();

  factory AppointmentSearchNameResponse(
          [updates(AppointmentSearchNameResponseBuilder b)]) =
      _$AppointmentSearchNameResponse;

  @BuiltValueField(wireName: 'token')
  @nullable
  String get token;
  String toJson() {
    return json.encode(serializers.serializeWith(
        AppointmentSearchNameResponse.serializer, this));
  }

  static AppointmentSearchNameResponse fromJson(String jsonString) {
    return serializers.deserializeWith(
        AppointmentSearchNameResponse.serializer, json.decode(jsonString));
  }

  static Serializer<AppointmentSearchNameResponse> get serializer =>
      _$appointmentSearchNameResponseSerializer;
}
