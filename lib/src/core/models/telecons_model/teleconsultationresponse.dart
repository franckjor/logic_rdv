library teleconsultationresponse;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:logic_rdv_v0/src/core/serializers/serializers.dart';

part 'teleconsultationresponse.g.dart';

abstract class TeleconsResponse
    implements Built<TeleconsResponse, TeleconsResponseBuilder> {
  TeleconsResponse._();

  factory TeleconsResponse([updates(TeleconsResponseBuilder b)]) =
      _$TeleconsResponse;

  @BuiltValueField(wireName: 'version')
  String get version;
  @BuiltValueField(wireName: 'request')
  String get request;
  @BuiltValueField(wireName: 'params')
  ParamsTc get params;
  @BuiltValueField(wireName: 'message')
  String get message;
  @BuiltValueField(wireName: 'httpstatut')
  int get httpstatut;
  @BuiltValueField(wireName: 'error')
  String get error;
  @BuiltValueField(wireName: 'data')
  DataTc get data;
  String toJson() {
    return json
        .encode(serializers.serializeWith(TeleconsResponse.serializer, this));
  }

  static TeleconsResponse? fromJson(String jsonString) {
    return serializers.deserializeWith(
        TeleconsResponse.serializer, json.decode(jsonString));
  }

  static Serializer<TeleconsResponse> get serializer =>
      _$teleconsResponseSerializer;
}

abstract class ParamsTc implements Built<ParamsTc, ParamsTcBuilder> {
  ParamsTc._();

  factory ParamsTc([updates(ParamsTcBuilder b)]) = _$ParamsTc;

  @BuiltValueField(wireName: 'tokentelecons')
  String get tokentelecons;
  String toJson() {
    return json.encode(serializers.serializeWith(ParamsTc.serializer, this));
  }

  static ParamsTc? fromJson(String jsonString) {
    return serializers.deserializeWith(
        ParamsTc.serializer, json.decode(jsonString));
  }

  static Serializer<ParamsTc> get serializer => _$paramsTcSerializer;
}

abstract class DataTc implements Built<DataTc, DataTcBuilder> {
  DataTc._();

  factory DataTc([updates(DataTcBuilder b)]) = _$DataTc;

  @BuiltValueField(wireName: 'etablissement')
  EtablissementTc get etablissement;
  @BuiltValueField(wireName: 'appt')
  ApptTc get appt;
  @BuiltValueField(wireName: 'infos')
  InfosTc get infos;
  @BuiltValueField(wireName: 'payment')
  PaymentTc get payment;
  @BuiltValueField(wireName: 'tokbox')
  TokboxTc get tokbox;
  String toJson() {
    return json.encode(serializers.serializeWith(DataTc.serializer, this));
  }

  static DataTc? fromJson(String jsonString) {
    return serializers.deserializeWith(
        DataTc.serializer, json.decode(jsonString));
  }

  static Serializer<DataTc> get serializer => _$dataTcSerializer;
}

abstract class EtablissementTc
    implements Built<EtablissementTc, EtablissementTcBuilder> {
  EtablissementTc._();

  factory EtablissementTc([updates(EtablissementTcBuilder b)]) =
      _$EtablissementTc;

  @BuiltValueField(wireName: 'nom')
  String get nom;
  @BuiltValueField(wireName: 'address')
  String get address;
  @BuiltValueField(wireName: 'zip')
  String get zip;
  @BuiltValueField(wireName: 'city')
  String get city;
  @BuiltValueField(wireName: 'telnospace')
  String get telnospace;
  @BuiltValueField(wireName: 'tel')
  String get tel;
  String toJson() {
    return json
        .encode(serializers.serializeWith(EtablissementTc.serializer, this));
  }

  static EtablissementTc? fromJson(String jsonString) {
    return serializers.deserializeWith(
        EtablissementTc.serializer, json.decode(jsonString));
  }

  static Serializer<EtablissementTc> get serializer =>
      _$etablissementTcSerializer;
}

abstract class ApptTc implements Built<ApptTc, ApptTcBuilder> {
  ApptTc._();

  factory ApptTc([updates(ApptTcBuilder b)]) = _$ApptTc;

  @BuiltValueField(wireName: 'token')
  String get token;
  @BuiltValueField(wireName: 'date')
  String get date;
  @BuiltValueField(wireName: 'doctor')
  String get doctor;
  @BuiltValueField(wireName: 'description')
  String get description;
  @BuiltValueField(wireName: 'patient')
  String get patient;
  @BuiltValueField(wireName: 'status')
  String get status;
  @BuiltValueField(wireName: 'buttoncancel')
  String get buttoncancel;
  String toJson() {
    return json.encode(serializers.serializeWith(ApptTc.serializer, this));
  }

  static ApptTc? fromJson(String jsonString) {
    return serializers.deserializeWith(
        ApptTc.serializer, json.decode(jsonString));
  }

  static Serializer<ApptTc> get serializer => _$apptTcSerializer;
}

abstract class InfosTc implements Built<InfosTc, InfosTcBuilder> {
  InfosTc._();

  factory InfosTc([updates(InfosTcBuilder b)]) = _$InfosTc;

  @BuiltValueField(wireName: 'buttonstarttelecons')
  String? get buttonstarttelecons;
  @BuiltValueField(wireName: 'buttonstartteleconsdisabled')
  String? get buttonstartteleconsdisabled;
  String toJson() {
    return json.encode(serializers.serializeWith(InfosTc.serializer, this));
  }

  static InfosTc? fromJson(String jsonString) {
    return serializers.deserializeWith(
        InfosTc.serializer, json.decode(jsonString));
  }

  static Serializer<InfosTc> get serializer => _$infosTcSerializer;
}

abstract class PaymentTc implements Built<PaymentTc, PaymentTcBuilder> {
  PaymentTc._();

  factory PaymentTc([updates(PaymentTcBuilder b)]) = _$PaymentTc;

  @BuiltValueField(wireName: 'title')
  String get title;
  @BuiltValueField(wireName: 'statuslabel')
  String get statuslabel;
  @BuiltValueField(wireName: 'stripeClientSecret')
  String get stripeClientSecret;
  @BuiltValueField(wireName: 'text')
  String get text;
  @BuiltValueField(wireName: 'history')
  String get history;
  String toJson() {
    return json.encode(serializers.serializeWith(PaymentTc.serializer, this));
  }

  static PaymentTc? fromJson(String jsonString) {
    return serializers.deserializeWith(
        PaymentTc.serializer, json.decode(jsonString));
  }

  static Serializer<PaymentTc> get serializer => _$paymentTcSerializer;
}

abstract class TokboxTc implements Built<TokboxTc, TokboxTcBuilder> {
  TokboxTc._();

  factory TokboxTc([updates(TokboxTcBuilder b)]) = _$TokboxTc;

  @BuiltValueField(wireName: 'sessionId')
  String get sessionId;
  @BuiltValueField(wireName: 'token')
  String get token;
  @BuiltValueField(wireName: 'apiKey')
  String get apiKey;
  @BuiltValueField(wireName: 'title')
  String get title;
  @BuiltValueField(wireName: 'error')
  String get error;
  String toJson() {
    return json.encode(serializers.serializeWith(TokboxTc.serializer, this));
  }

  static TokboxTc? fromJson(String jsonString) {
    return serializers.deserializeWith(
        TokboxTc.serializer, json.decode(jsonString));
  }

  static Serializer<TokboxTc> get serializer => _$tokboxTcSerializer;
}
