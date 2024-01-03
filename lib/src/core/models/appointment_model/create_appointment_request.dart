library create_appointment_request;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:logic_rdv_v0/src/core/serializers/serializers.dart';

part 'create_appointment_request.g.dart';

abstract class CreateAppointmentRequest
    implements
        Built<CreateAppointmentRequest, CreateAppointmentRequestBuilder> {
  CreateAppointmentRequest._();

  factory CreateAppointmentRequest(
          [updates(CreateAppointmentRequestBuilder b)]) =
      _$CreateAppointmentRequest;

  @BuiltValueField(wireName: 'tokenuser')
  String? get tokenuser;
  @BuiltValueField(wireName: 'tokenappointment')
  String? get tokenappointment;
  @BuiltValueField(wireName: 'week')
  String? get week;
  @BuiltValueField(wireName: 'data')
  String? get data;
  @BuiltValueField(wireName: 'action')
  String? get action;
  @BuiltValueField(wireName: 'session')
  String? get session;
  String toJson() {
    return json.encode(
        serializers.serializeWith(CreateAppointmentRequest.serializer, this));
  }

  static CreateAppointmentRequest fromJson(String jsonString) {
    return serializers.deserializeWith(
        CreateAppointmentRequest.serializer, json.decode(jsonString));
  }

  static Serializer<CreateAppointmentRequest> get serializer =>
      _$createAppointmentRequestSerializer;
}
