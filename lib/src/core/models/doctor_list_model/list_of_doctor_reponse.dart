library list_of_doctor_reponse;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:logic_rdv_v0/src/core/models/search_name_model/search_name_response.dart';
import 'package:logic_rdv_v0/src/core/serializers/serializers.dart';

part 'list_of_doctor_reponse.g.dart';

abstract class ListOfDoctorReponse
    implements Built<ListOfDoctorReponse, ListOfDoctorReponseBuilder> {
  ListOfDoctorReponse._();

  factory ListOfDoctorReponse([updates(ListOfDoctorReponseBuilder b)]) =
      _$ListOfDoctorReponse;

  @BuiltValueField(wireName: 'httpstatut')
  int get httpstatut;
  @BuiltValueField(wireName: 'version')
  String get version;
  @BuiltValueField(wireName: 'request')
  String get request;
  @BuiltValueField(wireName: 'params')
  ParamsListOfDoctor get params;
  @BuiltValueField(wireName: 'error')
  String get error;
  @BuiltValueField(wireName: 'message')
  String get message;
  @BuiltValueField(wireName: 'data')
  DataListOfDoctor get data;
  String toJson() {
    return json.encode(
        serializers.serializeWith(ListOfDoctorReponse.serializer, this));
  }

  static ListOfDoctorReponse fromJson(String jsonString) {
    return serializers.deserializeWith(
        ListOfDoctorReponse.serializer, json.decode(jsonString));
  }

  static Serializer<ListOfDoctorReponse> get serializer =>
      _$listOfDoctorReponseSerializer;
}

abstract class ParamsListOfDoctor
    implements Built<ParamsListOfDoctor, ParamsListOfDoctorBuilder> {
  ParamsListOfDoctor._();

  factory ParamsListOfDoctor([updates(ParamsListOfDoctorBuilder b)]) =
      _$ParamsListOfDoctor;

  @BuiltValueField(wireName: 'proxy_ville')
  String? get proxyVille;
  @BuiltValueField(wireName: 'proxy_nom')
  String? get proxyNom;
  @BuiltValueField(wireName: 'proxy_ville_id')
  String? get proxyVilleId;
  @BuiltValueField(wireName: 'proxy_nom_id')
  String? get proxyNomId;
  @BuiltValueField(wireName: 'proxy_search')
  String? get proxySearch;
  @BuiltValueField(wireName: 'proxy_page')
  String? get proxyPage;
  String toJson() {
    return json
        .encode(serializers.serializeWith(ParamsListOfDoctor.serializer, this));
  }

  static ParamsListOfDoctor fromJson(String jsonString) {
    return serializers.deserializeWith(
        ParamsListOfDoctor.serializer, json.decode(jsonString));
  }

  static Serializer<ParamsListOfDoctor> get serializer =>
      _$paramsListOfDoctorSerializer;
}

abstract class DataListOfDoctor
    implements Built<DataListOfDoctor, DataListOfDoctorBuilder> {
  DataListOfDoctor._();

  factory DataListOfDoctor([updates(DataListOfDoctorBuilder b)]) =
      _$DataListOfDoctor;

  @BuiltValueField(wireName: 'list')
  BuiltList<ObjectNameOfSearch> get list;
  @BuiltValueField(wireName: 'search')
  SearchListOfDoctor get search;
  @BuiltValueField(wireName: 'pagination')
  PaginationListOfDoctor get pagination;
  String toJson() {
    return json
        .encode(serializers.serializeWith(DataListOfDoctor.serializer, this));
  }

  static DataListOfDoctor fromJson(String jsonString) {
    return serializers.deserializeWith(
        DataListOfDoctor.serializer, json.decode(jsonString));
  }

  static Serializer<DataListOfDoctor> get serializer =>
      _$dataListOfDoctorSerializer;
}

abstract class SearchListOfDoctor
    implements Built<SearchListOfDoctor, SearchListOfDoctorBuilder> {
  SearchListOfDoctor._();

  factory SearchListOfDoctor([updates(SearchListOfDoctorBuilder b)]) =
      _$SearchListOfDoctor;

  @BuiltValueField(wireName: 'ville')
  String get ville;
  @BuiltValueField(wireName: 'ville_id')
  String get villeId;
  @BuiltValueField(wireName: 'nom')
  String get nom;
  @BuiltValueField(wireName: 'nom_id')
  String get nomId;
  @BuiltValueField(wireName: 'gps_lat')
  String get gpsLat;
  @BuiltValueField(wireName: 'gps_lng')
  String get gpsLng;
  String toJson() {
    return json
        .encode(serializers.serializeWith(SearchListOfDoctor.serializer, this));
  }

  static SearchListOfDoctor fromJson(String jsonString) {
    return serializers.deserializeWith(
        SearchListOfDoctor.serializer, json.decode(jsonString));
  }

  static Serializer<SearchListOfDoctor> get serializer =>
      _$searchListOfDoctorSerializer;
}

abstract class PaginationListOfDoctor
    implements Built<PaginationListOfDoctor, PaginationListOfDoctorBuilder> {
  PaginationListOfDoctor._();

  factory PaginationListOfDoctor([updates(PaginationListOfDoctorBuilder b)]) =
      _$PaginationListOfDoctor;

  @BuiltValueField(wireName: 'result')
  String get result;
  @BuiltValueField(wireName: 'current')
  String get current;
  @BuiltValueField(wireName: 'maxpage')
  String get maxpage;
  @BuiltValueField(wireName: 'perpage')
  String get perpage;
  String toJson() {
    return json.encode(
        serializers.serializeWith(PaginationListOfDoctor.serializer, this));
  }

  static PaginationListOfDoctor fromJson(String jsonString) {
    return serializers.deserializeWith(
        PaginationListOfDoctor.serializer, json.decode(jsonString));
  }

  static Serializer<PaginationListOfDoctor> get serializer =>
      _$paginationListOfDoctorSerializer;
}
