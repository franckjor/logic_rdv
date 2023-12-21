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
  @nullable
  String get tokenuser;
  @BuiltValueField(wireName: 'tokenappointment')
  @nullable
  String get tokenappointment;
  @BuiltValueField(wireName: 'week')
  @nullable
  String get week;
  @BuiltValueField(wireName: 'data')
  @nullable
  String get data;
  @BuiltValueField(wireName: 'action')
  @nullable
  String get action;
  @BuiltValueField(wireName: 'session')
  @nullable
  String get session;
  String toJson() {
    return json.encode(
        serializers.serializeWith(CreateAppointmentRequest.serializer, this));
  }

  static CreateAppointmentRequest fromJson(String jsonString) {
    return serializers.deserializeWith(
        CreateAppointmentRequest.serializer, json.decode(jsonString))!;
  }

  static Serializer<CreateAppointmentRequest> get serializer =>
      _$createAppointmentRequestSerializer;
}
