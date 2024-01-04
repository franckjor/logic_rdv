library search_dialog_request;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import '../../serializers/serializers.dart';

part 'search_dialog_request.g.dart';

abstract class SearchDialogRequest
    implements Built<SearchDialogRequest, SearchDialogRequestBuilder> {
  SearchDialogRequest._();

  factory SearchDialogRequest([updates(SearchDialogRequestBuilder b)]) =
      _$SearchDialogRequest;

  @BuiltValueField(wireName: 'address')
  String get address;
  @BuiltValueField(wireName: 'zip')
  String get zip;
  @BuiltValueField(wireName: 'city')
  String get city;
  String toJson() {
    return json.encode(
        serializers.serializeWith(SearchDialogRequest.serializer, this));
  }

  static SearchDialogRequest fromJson(String jsonString) {
    return serializers.deserializeWith(
        SearchDialogRequest.serializer, json.decode(jsonString))!;
  }

  static Serializer<SearchDialogRequest> get serializer =>
      _$searchDialogRequestSerializer;
}
