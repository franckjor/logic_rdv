library search_dialog_response;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import '../../serializers/serializers.dart';

part 'search_dialog_response.g.dart';

abstract class SearchDialogResponse
    implements Built<SearchDialogResponse, SearchDialogResponseBuilder> {
  SearchDialogResponse._();

  factory SearchDialogResponse([updates(SearchDialogResponseBuilder b)]) =
      _$SearchDialogResponse;

  @BuiltValueField(wireName: 'httpstatut')
  int get httpstatut;
  @BuiltValueField(wireName: 'version')
  String get version;
  @BuiltValueField(wireName: 'request')
  String get request;
  @BuiltValueField(wireName: 'params')
  ParamsSearchDialogResponse get params;
  @BuiltValueField(wireName: 'error')
  String get error;
  @BuiltValueField(wireName: 'message')
  String get message;
  @BuiltValueField(wireName: 'localisation')
  String get localisation;
  String toJson() {
    return json.encode(
        serializers.serializeWith(SearchDialogResponse.serializer, this));
  }

  static SearchDialogResponse fromJson(String jsonString) {
    return serializers.deserializeWith(
        SearchDialogResponse.serializer, json.decode(jsonString))!;
  }

  static Serializer<SearchDialogResponse> get serializer =>
      _$searchDialogResponseSerializer;
}

abstract class ParamsSearchDialogResponse implements Built<ParamsSearchDialogResponse, ParamsSearchDialogResponseBuilder> {
  ParamsSearchDialogResponse._();

  factory ParamsSearchDialogResponse([updates(ParamsSearchDialogResponseBuilder b)]) = _$ParamsSearchDialogResponse;

  @BuiltValueField(wireName: 'address')
  String get address;
  @BuiltValueField(wireName: 'zip')
  String get zip;
  @BuiltValueField(wireName: 'city')
  String get city;
  String toJson() {
    return json.encode(serializers.serializeWith(ParamsSearchDialogResponse.serializer, this));
  }

  static ParamsSearchDialogResponse fromJson(String jsonString) {
    return serializers.deserializeWith(
        ParamsSearchDialogResponse.serializer, json.decode(jsonString))!;
  }

  static Serializer<ParamsSearchDialogResponse> get serializer => _$paramsSearchDialogResponseSerializer;
}
