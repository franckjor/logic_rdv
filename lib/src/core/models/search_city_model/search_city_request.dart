library search_city_request;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:logic_rdv_v0/src/core/serializers/serializers.dart';

part 'search_city_request.g.dart';

abstract class SearchCityRequest
    implements Built<SearchCityRequest, SearchCityRequestBuilder> {
  SearchCityRequest._();

  factory SearchCityRequest([updates(SearchCityRequestBuilder b)]) =
      _$SearchCityRequest;

  @BuiltValueField(wireName: 'kind')
  String get kind;
  @BuiltValueField(wireName: 'proxy_istelecons')
  String get proxyIstelecons;
  @BuiltValueField(wireName: 'term')
  String get term;
  String toJson() {
    return json
        .encode(serializers.serializeWith(SearchCityRequest.serializer, this));
  }

  static SearchCityRequest fromJson(String jsonString) {
    return serializers.deserializeWith(
        SearchCityRequest.serializer, json.decode(jsonString))!;
  }

  static Serializer<SearchCityRequest> get serializer =>
      _$searchCityRequestSerializer;
}
