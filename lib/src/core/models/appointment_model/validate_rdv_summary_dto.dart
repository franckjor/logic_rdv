library validate_rdv_summary_dto;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:logic_rdv_v0/src/core/models/appointment_model/selected_patient_response_for_rdv.dart';
import 'package:logic_rdv_v0/src/core/serializers/serializers.dart';

import 'get_apointment_time_response.dart';

part 'validate_rdv_summary_dto.g.dart';

abstract class ValidateRdvSummaryDto
    implements Built<ValidateRdvSummaryDto, ValidateRdvSummaryDtoBuilder> {
  ValidateRdvSummaryDto._();

  factory ValidateRdvSummaryDto([updates(ValidateRdvSummaryDtoBuilder b)]) =
      _$ValidateRdvSummaryDto;

  @BuiltValueField(wireName: 'version')
  String get version;
  @BuiltValueField(wireName: 'request')
  String get request;
  @BuiltValueField(wireName: 'params')
  ParamsValidateRdvSummaryDto get params;
  @BuiltValueField(wireName: 'message')
  String get message;
  @BuiltValueField(wireName: 'httpstatut')
  int get httpstatut;
  @BuiltValueField(wireName: 'error')
  String get error;
  @BuiltValueField(wireName: 'data')
  DataValidateRdvSummaryDto get data;
  String toJson() {
    return json.encode(
        serializers.serializeWith(ValidateRdvSummaryDto.serializer, this));
  }

  static ValidateRdvSummaryDto fromJson(String jsonString) {
    return serializers.deserializeWith(
        ValidateRdvSummaryDto.serializer, json.decode(jsonString));
  }

  static Serializer<ValidateRdvSummaryDto> get serializer =>
      _$validateRdvSummaryDtoSerializer;
}

abstract class ParamsValidateRdvSummaryDto
    implements
        Built<ParamsValidateRdvSummaryDto, ParamsValidateRdvSummaryDtoBuilder> {
  ParamsValidateRdvSummaryDto._();

  factory ParamsValidateRdvSummaryDto(
          [updates(ParamsValidateRdvSummaryDtoBuilder b)]) =
      _$ParamsValidateRdvSummaryDto;

  @BuiltValueField(wireName: 'tokenuser')
  String get tokenuser;
  @BuiltValueField(wireName: 'tokenappointment')
  String get tokenappointment;
  @BuiltValueField(wireName: 'week')
  String get week;
  @BuiltValueField(wireName: 'data')
  String get data;
  @BuiltValueField(wireName: 'action')
  String get action;
  @BuiltValueField(wireName: 'session')
  String get session;
  String toJson() {
    return json.encode(serializers.serializeWith(
        ParamsValidateRdvSummaryDto.serializer, this));
  }

  static ParamsValidateRdvSummaryDto fromJson(String jsonString) {
    return serializers.deserializeWith(
        ParamsValidateRdvSummaryDto.serializer, json.decode(jsonString));
  }

  static Serializer<ParamsValidateRdvSummaryDto> get serializer =>
      _$paramsValidateRdvSummaryDtoSerializer;
}

abstract class DataValidateRdvSummaryDto2
    implements
        Built<DataValidateRdvSummaryDto2, DataValidateRdvSummaryDto2Builder> {
  DataValidateRdvSummaryDto2._();

  factory DataValidateRdvSummaryDto2(
          [updates(DataValidateRdvSummaryDto2Builder b)]) =
      _$DataValidateRdvSummaryDto2;

  @BuiltValueField(wireName: 'appointment')
  @nullable
  String get appointment;
  @BuiltValueField(wireName: 'apptbuttonvalidation')
  @nullable
  Apptbuttonvalidation get apptbuttonvalidation;
  String toJson() {
    return json.encode(
        serializers.serializeWith(DataValidateRdvSummaryDto2.serializer, this));
  }

  static DataValidateRdvSummaryDto2 fromJson(String jsonString) {
    return serializers.deserializeWith(
        DataValidateRdvSummaryDto2.serializer, json.decode(jsonString));
  }

  static Serializer<DataValidateRdvSummaryDto2> get serializer =>
      _$dataValidateRdvSummaryDto2Serializer;
}

abstract class AppointmentSummary
    implements Built<AppointmentSummary, AppointmentSummaryBuilder> {
  AppointmentSummary._();

  factory AppointmentSummary([updates(AppointmentSummaryBuilder b)]) =
      _$AppointmentSummary;

  @BuiltValueField(wireName: 'appointment')
  @nullable
  String get appointment;
  String toJson() {
    return json
        .encode(serializers.serializeWith(AppointmentSummary.serializer, this));
  }

  static AppointmentSummary fromJson(String jsonString) {
    return serializers.deserializeWith(
        AppointmentSummary.serializer, json.decode(jsonString));
  }

  static Serializer<AppointmentSummary> get serializer =>
      _$appointmentSummarySerializer;
}

abstract class PaymentIntentSummary
    implements Built<PaymentIntentSummary, PaymentIntentSummaryBuilder> {
  PaymentIntentSummary._();

  factory PaymentIntentSummary([updates(PaymentIntentSummaryBuilder b)]) =
      _$PaymentIntentSummary;

  @BuiltValueField(wireName: 'stripeClientSecret')
  @nullable
  String get stripeClientSecret;
  String toJson() {
    return json.encode(
        serializers.serializeWith(PaymentIntentSummary.serializer, this));
  }

  static PaymentIntentSummary fromJson(String jsonString) {
    return serializers.deserializeWith(
        PaymentIntentSummary.serializer, json.decode(jsonString));
  }

  static Serializer<PaymentIntentSummary> get serializer =>
      _$paymentIntentSummarySerializer;
}

abstract class DataValidateRdvSummaryDto
    implements
        Built<DataValidateRdvSummaryDto, DataValidateRdvSummaryDtoBuilder> {
  DataValidateRdvSummaryDto._();

  factory DataValidateRdvSummaryDto(
          [updates(DataValidateRdvSummaryDtoBuilder b)]) =
      _$DataValidateRdvSummaryDto;

  @BuiltValueField(wireName: 'session')
  String get session;
  // @BuiltValueField(wireName: 'navigation')
  // BuiltList<Navigation> get navigation;
  @BuiltValueField(wireName: 'headermessage')
  String get headermessage;
  @BuiltValueField(wireName: 'type')
  String get type;
  @BuiltValueField(wireName: 'data')
  @nullable
  DataValidateRdvSummaryDto2 get data;
  @nullable
  @BuiltValueField(wireName: 'payment_intent')
  PaymentIntentSummary get paymentIntent;
  String toJson() {
    return json.encode(
        serializers.serializeWith(DataValidateRdvSummaryDto.serializer, this));
  }

  static DataValidateRdvSummaryDto fromJson(String jsonString) {
    return serializers.deserializeWith(
        DataValidateRdvSummaryDto.serializer, json.decode(jsonString));
  }

  static Serializer<DataValidateRdvSummaryDto> get serializer =>
      _$dataValidateRdvSummaryDtoSerializer;
}
