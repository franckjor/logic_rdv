library search_doctor_details_request;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:logic_rdv_v0/src/core/serializers/serializers.dart';

part 'search_doctor_details_request.g.dart';

abstract class SearchDoctorDetailsRequest
    implements
        Built<SearchDoctorDetailsRequest, SearchDoctorDetailsRequestBuilder> {
  SearchDoctorDetailsRequest._();

  factory SearchDoctorDetailsRequest(
          [updates(SearchDoctorDetailsRequestBuilder b)]) =
      _$SearchDoctorDetailsRequest;

  @BuiltValueField(wireName: 'id')
  String get id;
  String toJson() {
    return json.encode(
        serializers.serializeWith(SearchDoctorDetailsRequest.serializer, this));
  }

  static SearchDoctorDetailsRequest? fromJson(String jsonString) {
    return serializers.deserializeWith(
        SearchDoctorDetailsRequest.serializer, json.decode(jsonString));
  }

  static Serializer<SearchDoctorDetailsRequest> get serializer =>
      _$searchDoctorDetailsRequestSerializer;
}
