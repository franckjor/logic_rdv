library create_patient_request;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:logic_rdv_v0/src/core/serializers/serializers.dart';

part 'create_patient_request.g.dart';

abstract class CreatePatientRequest
    implements Built<CreatePatientRequest, CreatePatientRequestBuilder> {
  CreatePatientRequest._();

  factory CreatePatientRequest([updates(CreatePatientRequestBuilder b)]) =
      _$CreatePatientRequest;

  @BuiltValueField(wireName: 'id')
  String get id;
  @BuiltValueField(wireName: 'code')
  String get code;
  @BuiltValueField(wireName: 'nom')
  String get nom;
  @BuiltValueField(wireName: 'prenom')
  String get prenom;
  @BuiltValueField(wireName: 'mobile')
  String get mobile;
  @BuiltValueField(wireName: 'email')
  String get email;
  @BuiltValueField(wireName: 'pass1')
  String get pass1;
  @BuiltValueField(wireName: 'pass2')
  String get pass2;
  @BuiltValueField(wireName: 'cgu')
  String get cgu;
  @BuiltValueField(wireName: 'phone')
  String get phone;
  String toJson() {
    return json.encode(
        serializers.serializeWith(CreatePatientRequest.serializer, this));
  }

  static CreatePatientRequest fromJson(String jsonString) {
    return serializers.deserializeWith(
        CreatePatientRequest.serializer, json.decode(jsonString))!;
  }

  static Serializer<CreatePatientRequest> get serializer =>
      _$createPatientRequestSerializer;
}
