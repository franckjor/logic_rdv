library remove_patient_request;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:logic_rdv_v0/src/core/serializers/serializers.dart';

part 'remove_patient_request.g.dart';

abstract class RemovePatientRequest
    implements Built<RemovePatientRequest, RemovePatientRequestBuilder> {
  RemovePatientRequest._();

  factory RemovePatientRequest([updates(RemovePatientRequestBuilder b)]) =
      _$RemovePatientRequest;

  @BuiltValueField(wireName: 'tokenuser')
  String get tokenuser;
  @BuiltValueField(wireName: 'tokenappt')
  String get tokenappt;
  @BuiltValueField(wireName: 'tokenpatient')
  String get tokenpatient;
  String toJson() {
    return json.encode(
        serializers.serializeWith(RemovePatientRequest.serializer, this));
  }

  static RemovePatientRequest fromJson(String jsonString) {
    return serializers.deserializeWith(
        RemovePatientRequest.serializer, json.decode(jsonString))!;
  }

  static Serializer<RemovePatientRequest> get serializer =>
      _$removePatientRequestSerializer;
}
