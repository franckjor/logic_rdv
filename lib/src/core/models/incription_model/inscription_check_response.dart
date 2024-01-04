library inscription_check_response;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:logic_rdv_v0/src/core/serializers/serializers.dart';

part 'inscription_check_response.g.dart';

abstract class InscriptionCheckResponse
    implements
        Built<InscriptionCheckResponse, InscriptionCheckResponseBuilder> {
  InscriptionCheckResponse._();

  factory InscriptionCheckResponse(
          [updates(InscriptionCheckResponseBuilder b)]) =
      _$InscriptionCheckResponse;

  @BuiltValueField(wireName: 'version')
  String get version;
  @BuiltValueField(wireName: 'request')
  String get request;
  @BuiltValueField(wireName: 'params')
  ParamsInscriptionCheckResponse get params;
  @BuiltValueField(wireName: 'message')
  String get message;
  @BuiltValueField(wireName: 'httpstatut')
  int get httpstatut;
  @BuiltValueField(wireName: 'error')
  String get error;
  @BuiltValueField(wireName: 'data')
  DataInscriptionCheckResponse get data;
  String toJson() {
    return json.encode(
        serializers.serializeWith(InscriptionCheckResponse.serializer, this));
  }

  static InscriptionCheckResponse? fromJson(String jsonString) {
    return serializers.deserializeWith(
        InscriptionCheckResponse.serializer, json.decode(jsonString));
  }

  static Serializer<InscriptionCheckResponse> get serializer =>
      _$inscriptionCheckResponseSerializer;
}

abstract class ParamsInscriptionCheckResponse
    implements
        Built<ParamsInscriptionCheckResponse,
            ParamsInscriptionCheckResponseBuilder> {
  ParamsInscriptionCheckResponse._();

  factory ParamsInscriptionCheckResponse(
          [updates(ParamsInscriptionCheckResponseBuilder b)]) =
      _$ParamsInscriptionCheckResponse;

  @BuiltValueField(wireName: 'phone')
  String get phone;
  String toJson() {
    return json.encode(serializers.serializeWith(
        ParamsInscriptionCheckResponse.serializer, this));
  }

  static ParamsInscriptionCheckResponse? fromJson(String jsonString) {
    return serializers.deserializeWith(
        ParamsInscriptionCheckResponse.serializer, json.decode(jsonString));
  }

  static Serializer<ParamsInscriptionCheckResponse> get serializer =>
      _$paramsInscriptionCheckResponseSerializer;
}

abstract class DataInscriptionCheckResponse
    implements
        Built<DataInscriptionCheckResponse,
            DataInscriptionCheckResponseBuilder> {
  DataInscriptionCheckResponse._();

  factory DataInscriptionCheckResponse(
          [updates(DataInscriptionCheckResponseBuilder b)]) =
      _$DataInscriptionCheckResponse;

  @BuiltValueField(wireName: 'etabs')
  BuiltList<Etabs> get etabs;
  @BuiltValueField(wireName: 'code')
  String get code;
  @BuiltValueField(wireName: 'cgu')
  BuiltList<Cgu> get cgu;
  String toJson() {
    return json.encode(serializers.serializeWith(
        DataInscriptionCheckResponse.serializer, this));
  }

  static DataInscriptionCheckResponse? fromJson(String jsonString) {
    return serializers.deserializeWith(
        DataInscriptionCheckResponse.serializer, json.decode(jsonString));
  }

  static Serializer<DataInscriptionCheckResponse> get serializer =>
      _$dataInscriptionCheckResponseSerializer;
}

abstract class Etabs implements Built<Etabs, EtabsBuilder> {
  Etabs._();

  factory Etabs([updates(EtabsBuilder b)]) = _$Etabs;

  @BuiltValueField(wireName: 'id')
  String get id;
  @BuiltValueField(wireName: 'name')
  String get name;
  String toJson() {
    return json.encode(serializers.serializeWith(Etabs.serializer, this));
  }

  static Etabs? fromJson(String jsonString) {
    return serializers.deserializeWith(
        Etabs.serializer, json.decode(jsonString));
  }

  static Serializer<Etabs> get serializer => _$etabsSerializer;
}

abstract class Cgu implements Built<Cgu, CguBuilder> {
  Cgu._();

  factory Cgu([updates(CguBuilder b)]) = _$Cgu;

  @BuiltValueField(wireName: 'title')
  String get title;
  @BuiltValueField(wireName: 'description')
  String get description;
  String toJson() {
    return json.encode(serializers.serializeWith(Cgu.serializer, this));
  }

  static Cgu? fromJson(String jsonString) {
    return serializers.deserializeWith(Cgu.serializer, json.decode(jsonString));
  }

  static Serializer<Cgu> get serializer => _$cguSerializer;
}
