library search_city_response;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:logic_rdv_v0/src/core/serializers/serializers.dart';

part 'search_city_response.g.dart';

abstract class SearchCityResponse
    implements Built<SearchCityResponse, SearchCityResponseBuilder> {
  SearchCityResponse._();

  factory SearchCityResponse([updates(SearchCityResponseBuilder b)]) =
      _$SearchCityResponse;

  @BuiltValueField(wireName: 'httpstatut')
  int get httpstatut;
  @BuiltValueField(wireName: 'version')
  String get version;
  @BuiltValueField(wireName: 'request')
  String get request;
  @BuiltValueField(wireName: 'params')
  ParamsSearchCityResponse get params;
  @BuiltValueField(wireName: 'error')
  String get error;
  @BuiltValueField(wireName: 'message')
  String get message;
  @BuiltValueField(wireName: 'data')
  DataSearchCityResponse get data;
  String toJson() {
    return json
        .encode(serializers.serializeWith(SearchCityResponse.serializer, this));
  }

  static SearchCityResponse fromJson(String jsonString) {
    return serializers.deserializeWith(
        SearchCityResponse.serializer, json.decode(jsonString))!;
  }

  static Serializer<SearchCityResponse> get serializer =>
      _$searchCityResponseSerializer;
}

abstract class ParamsSearchCityResponse
    implements
        Built<ParamsSearchCityResponse, ParamsSearchCityResponseBuilder> {
  ParamsSearchCityResponse._();

  factory ParamsSearchCityResponse(
          [updates(ParamsSearchCityResponseBuilder b)]) =
      _$ParamsSearchCityResponse;

  @BuiltValueField(wireName: 'kind')
  String get kind;
  @BuiltValueField(wireName: 'proxy_istelecons')
  String get proxyIstelecons;
  @BuiltValueField(wireName: 'term')
  String get term;
  String toJson() {
    return json.encode(
        serializers.serializeWith(ParamsSearchCityResponse.serializer, this));
  }

  static ParamsSearchCityResponse fromJson(String jsonString) {
    return serializers.deserializeWith(
        ParamsSearchCityResponse.serializer, json.decode(jsonString))!;
  }

  static Serializer<ParamsSearchCityResponse> get serializer =>
      _$paramsSearchCityResponseSerializer;
}

abstract class DataSearchCityResponse
    implements Built<DataSearchCityResponse, DataSearchCityResponseBuilder> {
  DataSearchCityResponse._();

  factory DataSearchCityResponse([updates(DataSearchCityResponseBuilder b)]) =
      _$DataSearchCityResponse;

  @BuiltValueField(wireName: 'kind')
  String get kind;
  @BuiltValueField(wireName: 'proxy_istelecons')
  String get proxyIstelecons;
  @BuiltValueField(wireName: 'term')
  String get term;
  @BuiltValueField(wireName: 'api')
  String get api;
  @BuiltValueField(wireName: 'list')
  BuiltList<ClientInfosResponseSearchCity> get list;
  String toJson() {
    return json.encode(
        serializers.serializeWith(DataSearchCityResponse.serializer, this));
  }

  static DataSearchCityResponse fromJson(String jsonString) {
    return serializers.deserializeWith(
        DataSearchCityResponse.serializer, json.decode(jsonString))!;
  }

  static Serializer<DataSearchCityResponse> get serializer =>
      _$dataSearchCityResponseSerializer;
}

abstract class ClientInfosResponseSearchCity
    implements
        Built<ClientInfosResponseSearchCity,
            ClientInfosResponseSearchCityBuilder> {
  ClientInfosResponseSearchCity._();

  factory ClientInfosResponseSearchCity(
          [updates(ClientInfosResponseSearchCityBuilder b)]) =
      _$ClientInfosResponseSearchCity;

  @BuiltValueField(wireName: 'id')
  String get id;
  @BuiltValueField(wireName: 'clientinfos')
  String get clientinfos;
  String toJson() {
    return json.encode(serializers.serializeWith(
        ClientInfosResponseSearchCity.serializer, this));
  }

  static ClientInfosResponseSearchCity fromJson(String jsonString) {
    return serializers.deserializeWith(
        ClientInfosResponseSearchCity.serializer, json.decode(jsonString))!;
  }

  static Serializer<ClientInfosResponseSearchCity> get serializer =>
      _$clientInfosResponseSearchCitySerializer;
}
