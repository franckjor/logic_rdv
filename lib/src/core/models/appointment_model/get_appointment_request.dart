library get_appointment_request;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:logic_rdv_v0/src/core/serializers/serializers.dart';

part 'get_appointment_request.g.dart';

abstract class GetAppointmentRequest
    implements Built<GetAppointmentRequest, GetAppointmentRequestBuilder> {
  GetAppointmentRequest._();

  factory GetAppointmentRequest([updates(GetAppointmentRequestBuilder b)]) =
      _$GetAppointmentRequest;

  @BuiltValueField(wireName: 'tokenuser')
  String get tokenuser;
  @BuiltValueField(wireName: 'page')
  String get page;
  String toJson() {
    return json.encode(
        serializers.serializeWith(GetAppointmentRequest.serializer, this));
  }

  static GetAppointmentRequest fromJson(String jsonString) {
    return serializers.deserializeWith(
        GetAppointmentRequest.serializer, json.decode(jsonString))!;
  }

  static Serializer<GetAppointmentRequest> get serializer =>
      _$getAppointmentRequestSerializer;
}
