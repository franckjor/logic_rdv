library create_appointment_response;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:logic_rdv_v0/src/core/serializers/serializers.dart';

part 'create_appointment_response.g.dart';

abstract class CreateAppointmentResponse
    implements
        Built<CreateAppointmentResponse, CreateAppointmentResponseBuilder> {
  CreateAppointmentResponse._();

  factory CreateAppointmentResponse(
          [updates(CreateAppointmentResponseBuilder b)]) =
      _$CreateAppointmentResponse;

  @BuiltValueField(wireName: 'version')
  String? get version;
  @BuiltValueField(wireName: 'request')
  String? get request;
  @BuiltValueField(wireName: 'params')
  ParamsCreateAppointmentResponse? get params;
  @BuiltValueField(wireName: 'message')
  String? get message;
  @BuiltValueField(wireName: 'httpstatut')
  int? get httpstatut;
  @BuiltValueField(wireName: 'error')
  String? get error;
  @BuiltValueField(wireName: 'data')
  DataCreateAppointmentResponse? get data;
  String toJson() {
    return json.encode(
        serializers.serializeWith(CreateAppointmentResponse.serializer, this));
  }

  static CreateAppointmentResponse fromJson(String jsonString) {
    return serializers.deserializeWith(
        CreateAppointmentResponse.serializer, json.decode(jsonString));
  }

  static Serializer<CreateAppointmentResponse> get serializer =>
      _$createAppointmentResponseSerializer;
}

abstract class ParamsCreateAppointmentResponse
    implements
        Built<ParamsCreateAppointmentResponse,
            ParamsCreateAppointmentResponseBuilder> {
  ParamsCreateAppointmentResponse._();

  factory ParamsCreateAppointmentResponse(
          [updates(ParamsCreateAppointmentResponseBuilder b)]) =
      _$ParamsCreateAppointmentResponse;

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
    return json.encode(serializers.serializeWith(
        ParamsCreateAppointmentResponse.serializer, this));
  }

  static ParamsCreateAppointmentResponse fromJson(String jsonString) {
    return serializers.deserializeWith(
        ParamsCreateAppointmentResponse.serializer, json.decode(jsonString));
  }

  static Serializer<ParamsCreateAppointmentResponse> get serializer =>
      _$paramsCreateAppointmentResponseSerializer;
}

abstract class DataCreateAppointmentResponse
    implements
        Built<DataCreateAppointmentResponse,
            DataCreateAppointmentResponseBuilder> {
  DataCreateAppointmentResponse._();

  factory DataCreateAppointmentResponse(
          [updates(DataCreateAppointmentResponseBuilder b)]) =
      _$DataCreateAppointmentResponse;

  @BuiltValueField(wireName: 'session')
  String? get session;
  @BuiltValueField(wireName: 'navigation')
  BuiltList<AppointmentNavigation>? get navigation;
  @BuiltValueField(wireName: 'headermessage')
  String? get headermessage;
  @BuiltValueField(wireName: 'type')
  String? get type;
  @BuiltValueField(wireName: 'data')
  BuiltList<AppointmentTypeResponse>? get data;
  String toJson() {
    return json.encode(serializers.serializeWith(
        DataCreateAppointmentResponse.serializer, this));
  }

  static DataCreateAppointmentResponse fromJson(String jsonString) {
    return serializers.deserializeWith(
        DataCreateAppointmentResponse.serializer, json.decode(jsonString));
  }

  static Serializer<DataCreateAppointmentResponse> get serializer =>
      _$dataCreateAppointmentResponseSerializer;
}

abstract class AppointmentTypeResponse
    implements Built<AppointmentTypeResponse, AppointmentTypeResponseBuilder> {
  AppointmentTypeResponse._();

  factory AppointmentTypeResponse([updates(AppointmentTypeResponseBuilder b)]) =
      _$AppointmentTypeResponse;

  @BuiltValueField(wireName: 'labelplace')
  String? get labelplace;
  @BuiltValueField(wireName: 'color')
  String? get color;
  @BuiltValueField(wireName: 'description')
  String? get description;
  @BuiltValueField(wireName: 'onclick_data')
  String? get onclickData;
  @BuiltValueField(wireName: 'onclick_action')
  String? get onclickAction;
  @BuiltValueField(wireName: 'onclick_week')
  String? get onclickWeek;
  String toJson() {
    return json.encode(
        serializers.serializeWith(AppointmentTypeResponse.serializer, this));
  }

  static AppointmentTypeResponse fromJson(String jsonString) {
    return serializers.deserializeWith(
        AppointmentTypeResponse.serializer, json.decode(jsonString));
  }

  static Serializer<AppointmentTypeResponse> get serializer =>
      _$appointmentTypeResponseSerializer;
}

abstract class AppointmentNavigation
    implements Built<AppointmentNavigation, AppointmentNavigationBuilder> {
  AppointmentNavigation._();

  factory AppointmentNavigation([updates(AppointmentNavigationBuilder b)]) =
      _$AppointmentNavigation;

  @BuiltValueField(wireName: 'labelplace')
  String? get labelplace;
  @BuiltValueField(wireName: 'color')
  String? get color;
  @BuiltValueField(wireName: 'description')
  String? get description;
  @BuiltValueField(wireName: 'onclick_data')
  String? get onclickData;
  @BuiltValueField(wireName: 'onclick_action')
  String? get onclickAction;
  @BuiltValueField(wireName: 'onclick_week')
  String? get onclickWeek;
  String toJson() {
    return json.encode(
        serializers.serializeWith(AppointmentNavigation.serializer, this));
  }

  static AppointmentNavigation fromJson(String jsonString) {
    return serializers.deserializeWith(
        AppointmentNavigation.serializer, json.decode(jsonString));
  }

  static Serializer<AppointmentNavigation> get serializer =>
      _$appointmentNavigationSerializer;
}
