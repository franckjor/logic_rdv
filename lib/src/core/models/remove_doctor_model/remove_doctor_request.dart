library remove_doctor_request;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:logic_rdv_v0/src/core/serializers/serializers.dart';

part 'remove_doctor_request.g.dart';

abstract class RemoveDoctorRequest
    implements Built<RemoveDoctorRequest, RemoveDoctorRequestBuilder> {
  RemoveDoctorRequest._();

  factory RemoveDoctorRequest([updates(RemoveDoctorRequestBuilder b)]) =
      _$RemoveDoctorRequest;

  @BuiltValueField(wireName: 'tokenuser')
  String get tokenUser;
  @BuiltValueField(wireName: 'id')
  String get id;
  String toJson() {
    return json.encode(
        serializers.serializeWith(RemoveDoctorRequest.serializer, this));
  }

  static RemoveDoctorRequest fromJson(String jsonString) {
    return serializers.deserializeWith(
        RemoveDoctorRequest.serializer, json.decode(jsonString))!;
  }

  static Serializer<RemoveDoctorRequest> get serializer =>
      _$removeDoctorRequestSerializer;
}
