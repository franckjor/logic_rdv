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
  @nullable
  String get version;
  @BuiltValueField(wireName: 'request')
  @nullable
  String get request;
  @BuiltValueField(wireName: 'params')
  @nullable
  ParamsCreateAppointmentResponse get params;
  @BuiltValueField(wireName: 'message')
  @nullable
  String get message;
  @BuiltValueField(wireName: 'httpstatut')
  @nullable
  int get httpstatut;
  @BuiltValueField(wireName: 'error')
  @nullable
  String get error;
  @BuiltValueField(wireName: 'data')
  @nullable
  DataCreateAppointmentResponse get data;
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
  @nullable
  String get session;
  @BuiltValueField(wireName: 'navigation')
  @nullable
  BuiltList<AppointmentNavigation> get navigation;
  @BuiltValueField(wireName: 'headermessage')
  @nullable
  String get headermessage;
  @BuiltValueField(wireName: 'type')
  @nullable
  String get type;
  @BuiltValueField(wireName: 'data')
  @nullable
  BuiltList<AppointmentTypeResponse> get data;
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
  @nullable
  String get labelplace;
  @BuiltValueField(wireName: 'color')
  @nullable
  String get color;
  @BuiltValueField(wireName: 'description')
  @nullable
  String get description;
  @BuiltValueField(wireName: 'onclick_data')
  @nullable
  String get onclickData;
  @BuiltValueField(wireName: 'onclick_action')
  @nullable
  String get onclickAction;
  @BuiltValueField(wireName: 'onclick_week')
  @nullable
  String get onclickWeek;
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
  @nullable
  String get labelplace;
  @BuiltValueField(wireName: 'color')
  @nullable
  String get color;
  @BuiltValueField(wireName: 'description')
  @nullable
  String get description;
  @BuiltValueField(wireName: 'onclick_data')
  @nullable
  String get onclickData;
  @BuiltValueField(wireName: 'onclick_action')
  @nullable
  String get onclickAction;
  @BuiltValueField(wireName: 'onclick_week')
  @nullable
  String get onclickWeek;
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
