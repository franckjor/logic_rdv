library get_paient_for_rdv_response;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:logic_rdv_v0/src/core/serializers/serializers.dart';

part 'get_paient_for_rdv_response.g.dart';

abstract class GetPaientForRdvResponse
    implements Built<GetPaientForRdvResponse, GetPaientForRdvResponseBuilder> {
  GetPaientForRdvResponse._();

  factory GetPaientForRdvResponse([updates(GetPaientForRdvResponseBuilder b)]) =
      _$GetPaientForRdvResponse;

  @BuiltValueField(wireName: 'version')
  String get version;
  @BuiltValueField(wireName: 'request')
  String get request;
  @BuiltValueField(wireName: 'params')
  ParamsGetPaientForRdvResponse get params;
  @BuiltValueField(wireName: 'message')
  String get message;
  @BuiltValueField(wireName: 'httpstatut')
  int get httpstatut;
  @BuiltValueField(wireName: 'error')
  String get error;
  @BuiltValueField(wireName: 'data')
  DataGetPaientForRdvResponse get data;
  String toJson() {
    return json.encode(
        serializers.serializeWith(GetPaientForRdvResponse.serializer, this));
  }

  static GetPaientForRdvResponse fromJson(String jsonString) {
    return serializers.deserializeWith(
        GetPaientForRdvResponse.serializer, json.decode(jsonString));
  }

  static Serializer<GetPaientForRdvResponse> get serializer =>
      _$getPaientForRdvResponseSerializer;
}

abstract class ParamsGetPaientForRdvResponse
    implements
        Built<ParamsGetPaientForRdvResponse,
            ParamsGetPaientForRdvResponseBuilder> {
  ParamsGetPaientForRdvResponse._();

  factory ParamsGetPaientForRdvResponse(
          [updates(ParamsGetPaientForRdvResponseBuilder b)]) =
      _$ParamsGetPaientForRdvResponse;

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
        ParamsGetPaientForRdvResponse.serializer, this));
  }

  static ParamsGetPaientForRdvResponse fromJson(String jsonString) {
    return serializers.deserializeWith(
        ParamsGetPaientForRdvResponse.serializer, json.decode(jsonString));
  }

  static Serializer<ParamsGetPaientForRdvResponse> get serializer =>
      _$paramsGetPaientForRdvResponseSerializer;
}

abstract class DataGetPaientForRdvResponse
    implements
        Built<DataGetPaientForRdvResponse, DataGetPaientForRdvResponseBuilder> {
  DataGetPaientForRdvResponse._();

  factory DataGetPaientForRdvResponse(
          [updates(DataGetPaientForRdvResponseBuilder b)]) =
      _$DataGetPaientForRdvResponse;

  @BuiltValueField(wireName: 'session')
  String get session;
  @BuiltValueField(wireName: 'navigation')
  NavigationGetPaientForRdvResponse get navigation;
  @BuiltValueField(wireName: 'headermessage')
  String get headermessage;
  @BuiltValueField(wireName: 'type')
  String get type;
  @BuiltValueField(wireName: 'messageinternet')
  String? get messageInternet;
  @BuiltValueField(wireName: 'data')
  BuiltList<PatientDataResponseDrv>? get data;
  String toJson() {
    return json.encode(serializers.serializeWith(
        DataGetPaientForRdvResponse.serializer, this));
  }

  static DataGetPaientForRdvResponse fromJson(String jsonString) {
    return serializers.deserializeWith(
        DataGetPaientForRdvResponse.serializer, json.decode(jsonString));
  }

  static Serializer<DataGetPaientForRdvResponse> get serializer =>
      _$dataGetPaientForRdvResponseSerializer;
}

abstract class PatientDataResponseDrv
    implements Built<PatientDataResponseDrv, PatientDataResponseDrvBuilder> {
  PatientDataResponseDrv._();

  factory PatientDataResponseDrv([updates(PatientDataResponseDrvBuilder b)]) =
      _$PatientDataResponseDrv;

  @BuiltValueField(wireName: 'nom')
  String? get nom;
  @BuiltValueField(wireName: 'prenom')
  String? get prenom;
  @BuiltValueField(wireName: 'email')
  String? get email;
  @BuiltValueField(wireName: 'spacephone')
  String? get spacephone;
  @BuiltValueField(wireName: 'phone')
  String? get phone;
  @BuiltValueField(wireName: 'dob')
  String? get dob;
  @BuiltValueField(wireName: 'token')
  String? get token;
  @BuiltValueField(wireName: 'locked')
  String? get locked;
  @BuiltValueField(wireName: 'blacklist')
  String? get blacklist;
  @BuiltValueField(wireName: 'nplocked')
  String? get nplocked;
  @BuiltValueField(wireName: 'etaballowinternet')
  String? get etaballowinternet;
  @BuiltValueField(wireName: 'etaballownpinternet')
  String? get etaballownpinternet;
  @BuiltValueField(wireName: 'lockmessage')
  String? get lockmessage;
  @BuiltValueField(wireName: 'onclick')
  String? get onclick;
  @BuiltValueField(wireName: 'onclick_message')
  String? get onclickMessage;
  @BuiltValueField(wireName: 'onclick_data')
  String? get onclickData;
  @BuiltValueField(wireName: 'onclick_action')
  String? get onclickAction;
  @BuiltValueField(wireName: 'onclick_week')
  String? get onclickWeek;
  @BuiltValueField(wireName: 'messageinternet')
  String? get messageInternet;
  @BuiltValueField(wireName: 'photo')
  String? get photo;
  String toJson() {
    return json.encode(
        serializers.serializeWith(PatientDataResponseDrv.serializer, this));
  }

  static PatientDataResponseDrv fromJson(String jsonString) {
    return serializers.deserializeWith(
        PatientDataResponseDrv.serializer, json.decode(jsonString));
  }

  static Serializer<PatientDataResponseDrv> get serializer =>
      _$patientDataResponseDrvSerializer;
}

abstract class NavigationGetPaientForRdvResponse
    implements
        Built<NavigationGetPaientForRdvResponse,
            NavigationGetPaientForRdvResponseBuilder> {
  NavigationGetPaientForRdvResponse._();

  factory NavigationGetPaientForRdvResponse(
          [updates(NavigationGetPaientForRdvResponseBuilder b)]) =
      _$NavigationGetPaientForRdvResponse;

  @BuiltValueField(wireName: 'begin')
  BeginGetPaientForRdvResponse? get begin;
  @BuiltValueField(wireName: 'prev')
  PrevGetPaientForRdvResponse? get prev;
  String toJson() {
    return json.encode(serializers.serializeWith(
        NavigationGetPaientForRdvResponse.serializer, this));
  }

  static NavigationGetPaientForRdvResponse fromJson(String jsonString) {
    return serializers.deserializeWith(
        NavigationGetPaientForRdvResponse.serializer, json.decode(jsonString));
  }

  static Serializer<NavigationGetPaientForRdvResponse> get serializer =>
      _$navigationGetPaientForRdvResponseSerializer;
}

abstract class BeginGetPaientForRdvResponse
    implements
        Built<BeginGetPaientForRdvResponse,
            BeginGetPaientForRdvResponseBuilder> {
  BeginGetPaientForRdvResponse._();

  factory BeginGetPaientForRdvResponse(
          [updates(BeginGetPaientForRdvResponseBuilder b)]) =
      _$BeginGetPaientForRdvResponse;

  @BuiltValueField(wireName: 'label')
  String? get label;
  @BuiltValueField(wireName: 'onclick_action')
  String? get onclickAction;
  @BuiltValueField(wireName: 'onclick_data')
  String? get onclickData;
  @BuiltValueField(wireName: 'onclick_week')
  String? get onclickWeek;
  String toJson() {
    return json.encode(serializers.serializeWith(
        BeginGetPaientForRdvResponse.serializer, this));
  }

  static BeginGetPaientForRdvResponse fromJson(String jsonString) {
    return serializers.deserializeWith(
        BeginGetPaientForRdvResponse.serializer, json.decode(jsonString));
  }

  static Serializer<BeginGetPaientForRdvResponse> get serializer =>
      _$beginGetPaientForRdvResponseSerializer;
}

abstract class PrevGetPaientForRdvResponse
    implements
        Built<PrevGetPaientForRdvResponse, PrevGetPaientForRdvResponseBuilder> {
  PrevGetPaientForRdvResponse._();

  factory PrevGetPaientForRdvResponse(
          [updates(PrevGetPaientForRdvResponseBuilder b)]) =
      _$PrevGetPaientForRdvResponse;

  @BuiltValueField(wireName: 'label')
  String? get label;
  @BuiltValueField(wireName: 'onclick_action')
  String? get onclickAction;
  @BuiltValueField(wireName: 'onclick_data')
  String? get onclickData;
  @BuiltValueField(wireName: 'onclick_week')
  String? get onclickWeek;
  String toJson() {
    return json.encode(serializers.serializeWith(
        PrevGetPaientForRdvResponse.serializer, this));
  }

  static PrevGetPaientForRdvResponse fromJson(String jsonString) {
    return serializers.deserializeWith(
        PrevGetPaientForRdvResponse.serializer, json.decode(jsonString));
  }

  static Serializer<PrevGetPaientForRdvResponse> get serializer =>
      _$prevGetPaientForRdvResponseSerializer;
}
