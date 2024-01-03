library cancel_appointment_response;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:logic_rdv_v0/src/core/serializers/serializers.dart';

part 'cancel_appointment_response.g.dart';

abstract class CancelAppointmentResponse
    implements
        Built<CancelAppointmentResponse, CancelAppointmentResponseBuilder> {
  CancelAppointmentResponse._();

  factory CancelAppointmentResponse(
          [updates(CancelAppointmentResponseBuilder b)]) =
      _$CancelAppointmentResponse;

  @BuiltValueField(wireName: 'httpstatut')
  int get httpstatut;
  @BuiltValueField(wireName: 'version')
  String get version;
  @BuiltValueField(wireName: 'request')
  String get request;
  @BuiltValueField(wireName: 'params')
  ParamsCancelAppointmentResponse get params;
  @BuiltValueField(wireName: 'error')
  String get error;
  @BuiltValueField(wireName: 'message')
  String get message;
  String toJson() {
    return json.encode(
        serializers.serializeWith(CancelAppointmentResponse.serializer, this));
  }

  static CancelAppointmentResponse? fromJson(String jsonString) {
    return serializers.deserializeWith(
        CancelAppointmentResponse.serializer, json.decode(jsonString));
  }

  static Serializer<CancelAppointmentResponse> get serializer =>
      _$cancelAppointmentResponseSerializer;
}

abstract class ParamsCancelAppointmentResponse
    implements
        Built<ParamsCancelAppointmentResponse,
            ParamsCancelAppointmentResponseBuilder> {
  ParamsCancelAppointmentResponse._();

  factory ParamsCancelAppointmentResponse(
          [updates(ParamsCancelAppointmentResponseBuilder b)]) =
      _$ParamsCancelAppointmentResponse;

  @BuiltValueField(wireName: 'tokenuser')
  String get tokenuser;
  @BuiltValueField(wireName: 'token')
  String get token;
  String toJson() {
    return json.encode(serializers.serializeWith(
        ParamsCancelAppointmentResponse.serializer, this));
  }

  static ParamsCancelAppointmentResponse? fromJson(String jsonString) {
    return serializers.deserializeWith(
        ParamsCancelAppointmentResponse.serializer, json.decode(jsonString));
  }

  static Serializer<ParamsCancelAppointmentResponse> get serializer =>
      _$paramsCancelAppointmentResponseSerializer;
}
