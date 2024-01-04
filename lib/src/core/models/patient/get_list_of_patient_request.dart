library get_list_of_patient_request;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:logic_rdv_v0/src/core/serializers/serializers.dart';

part 'get_list_of_patient_request.g.dart';

abstract class GetListOfPatientRequest
    implements Built<GetListOfPatientRequest, GetListOfPatientRequestBuilder> {
  GetListOfPatientRequest._();

  factory GetListOfPatientRequest([updates(GetListOfPatientRequestBuilder b)]) =
      _$GetListOfPatientRequest;

  @BuiltValueField(wireName: 'tokenuser')
  String get tokenuser;
  @BuiltValueField(wireName: 'tokenappt')
  String get tokenappt;
  String toJson() {
    return json.encode(
        serializers.serializeWith(GetListOfPatientRequest.serializer, this));
  }

  static GetListOfPatientRequest fromJson(String jsonString) {
    return serializers.deserializeWith(
        GetListOfPatientRequest.serializer, json.decode(jsonString))!;
  }

  static Serializer<GetListOfPatientRequest> get serializer =>
      _$getListOfPatientRequestSerializer;
}
