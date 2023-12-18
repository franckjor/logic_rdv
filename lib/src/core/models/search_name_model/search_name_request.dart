library search_name_request;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:logic_rdv_v0/src/core/serializers/serializers.dart';

part 'search_name_request.g.dart';

abstract class SearchNameRequest
    implements Built<SearchNameRequest, SearchNameRequestBuilder> {
  SearchNameRequest._();

  factory SearchNameRequest([updates(SearchNameRequestBuilder b)]) =
      _$SearchNameRequest;

  @BuiltValueField(wireName: 'kind')
  String get kind;
  @BuiltValueField(wireName: 'cp')
  String get cp;
  @BuiltValueField(wireName: 'proxy_istelecons')
  String get proxyIstelecons;
  @BuiltValueField(wireName: 'term')
  String get term;
  String toJson() {
    return json
        .encode(serializers.serializeWith(SearchNameRequest.serializer, this));
  }

  static SearchNameRequest fromJson(String jsonString) {
    return serializers.deserializeWith(
        SearchNameRequest.serializer, json.decode(jsonString));
  }

  static Serializer<SearchNameRequest> get serializer =>
      _$searchNameRequestSerializer;
}
