library cancel_appointment_request;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:logic_rdv_v0/src/core/serializers/serializers.dart';

part 'cancel_appointment_request.g.dart';

abstract class CancelAppointmentRequest
    implements
        Built<CancelAppointmentRequest, CancelAppointmentRequestBuilder> {
  CancelAppointmentRequest._();

  factory CancelAppointmentRequest(
          [updates(CancelAppointmentRequestBuilder b)]) =
      _$CancelAppointmentRequest;

  @BuiltValueField(wireName: 'tokenuser')
  String get tokenuser;
  @BuiltValueField(wireName: 'token')
  String get token;
  String toJson() {
    return json.encode(
        serializers.serializeWith(CancelAppointmentRequest.serializer, this));
  }

  static CancelAppointmentRequest? fromJson(String jsonString) {
    return serializers.deserializeWith(
        CancelAppointmentRequest.serializer, json.decode(jsonString));
  }

  static Serializer<CancelAppointmentRequest> get serializer =>
      _$cancelAppointmentRequestSerializer;
}
