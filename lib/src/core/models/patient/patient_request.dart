library patient_request;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:logic_rdv_v0/src/core/serializers/serializers.dart';

part 'patient_request.g.dart';

abstract class PatientRequest
    implements Built<PatientRequest, PatientRequestBuilder> {
  PatientRequest._();

  factory PatientRequest([updates(PatientRequestBuilder b)]) = _$PatientRequest;

  @BuiltValueField(wireName: 'tokenuser')
  @nullable
  String get tokenuser;
  @BuiltValueField(wireName: 'tokenappt')
  @nullable
  String get tokenappt;
  @BuiltValueField(wireName: 'tokenpatient')
  @nullable
  String get tokenpatient;
  @BuiltValueField(wireName: 'nom')
  @nullable
  String get nom;
  @BuiltValueField(wireName: 'prenom')
  @nullable
  String get prenom;
  @BuiltValueField(wireName: 'email')
  @nullable
  String get email;
  @BuiltValueField(wireName: 'phone')
  @nullable
  String get phone;
  String toJson() {
    return json
        .encode(serializers.serializeWith(PatientRequest.serializer, this));
  }

  static PatientRequest fromJson(String jsonString) {
    return serializers.deserializeWith(
        PatientRequest.serializer, json.decode(jsonString))!;
  }

  static Serializer<PatientRequest> get serializer =>
      _$patientRequestSerializer;
}
