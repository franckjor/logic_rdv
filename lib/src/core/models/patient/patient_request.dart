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
  String? get tokenuser;
  @BuiltValueField(wireName: 'tokenappt')
  String? get tokenappt;
  @BuiltValueField(wireName: 'tokenpatient')
  String? get tokenpatient;
  @BuiltValueField(wireName: 'nom')
  String? get nom;
  @BuiltValueField(wireName: 'prenom')
  String? get prenom;
  @BuiltValueField(wireName: 'email')
  String? get email;
  @BuiltValueField(wireName: 'phone')
  String? get phone;
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
