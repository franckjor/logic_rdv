library add_doctor_request;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:logic_rdv_v0/src/core/serializers/serializers.dart';

part 'add_doctor_request.g.dart';

abstract class AddDoctorRequest
    implements Built<AddDoctorRequest, AddDoctorRequestBuilder> {
  AddDoctorRequest._();

  factory AddDoctorRequest([updates(AddDoctorRequestBuilder b)]) =
      _$AddDoctorRequest;

  @BuiltValueField(wireName: 'tokenuser')
  String get tokenuser;
  @BuiltValueField(wireName: 'id')
  String get id;
  @BuiltValueField(wireName: 'phone')
  String get phone;
  String toJson() {
    return json
        .encode(serializers.serializeWith(AddDoctorRequest.serializer, this));
  }

  static AddDoctorRequest fromJson(String jsonString) {
    return serializers.deserializeWith(
        AddDoctorRequest.serializer, json.decode(jsonString))!;
  }

  static Serializer<AddDoctorRequest> get serializer =>
      _$addDoctorRequestSerializer;
}
