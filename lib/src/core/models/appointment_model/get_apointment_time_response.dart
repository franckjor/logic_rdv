library get_apointment_time_response;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:logic_rdv_v0/src/core/serializers/serializers.dart';

part 'get_apointment_time_response.g.dart';

abstract class GetApointmentTimeResponse
    implements
        Built<GetApointmentTimeResponse, GetApointmentTimeResponseBuilder> {
  GetApointmentTimeResponse._();

  factory GetApointmentTimeResponse(
          [updates(GetApointmentTimeResponseBuilder b)]) =
      _$GetApointmentTimeResponse;

  @BuiltValueField(wireName: 'version')
  String get version;
  @BuiltValueField(wireName: 'request')
  String get request;
  @BuiltValueField(wireName: 'params')
  ParamsGetApointmentTimeResponse get params;
  @BuiltValueField(wireName: 'message')
  String get message;
  @BuiltValueField(wireName: 'httpstatut')
  int get httpstatut;
  @BuiltValueField(wireName: 'error')
  String get error;
  @BuiltValueField(wireName: 'data')
  DataGetApointmentTimeResponse get data;
  String toJson() {
    return json.encode(
        serializers.serializeWith(GetApointmentTimeResponse.serializer, this));
  }

  static GetApointmentTimeResponse? fromJson(String jsonString) {
    return serializers.deserializeWith(
        GetApointmentTimeResponse.serializer, json.decode(jsonString));
  }

  static Serializer<GetApointmentTimeResponse> get serializer =>
      _$getApointmentTimeResponseSerializer;
}

abstract class ParamsGetApointmentTimeResponse
    implements
        Built<ParamsGetApointmentTimeResponse,
            ParamsGetApointmentTimeResponseBuilder> {
  ParamsGetApointmentTimeResponse._();

  factory ParamsGetApointmentTimeResponse(
          [updates(ParamsGetApointmentTimeResponseBuilder b)]) =
      _$ParamsGetApointmentTimeResponse;

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
        ParamsGetApointmentTimeResponse.serializer, this));
  }

  static ParamsGetApointmentTimeResponse? fromJson(String jsonString) {
    return serializers.deserializeWith(
        ParamsGetApointmentTimeResponse.serializer, json.decode(jsonString));
  }

  static Serializer<ParamsGetApointmentTimeResponse> get serializer =>
      _$paramsGetApointmentTimeResponseSerializer;
}

abstract class DataGetApointmentTimeResponse
    implements
        Built<DataGetApointmentTimeResponse,
            DataGetApointmentTimeResponseBuilder> {
  DataGetApointmentTimeResponse._();

  factory DataGetApointmentTimeResponse(
          [updates(DataGetApointmentTimeResponseBuilder b)]) =
      _$DataGetApointmentTimeResponse;

  @BuiltValueField(wireName: 'session')
  String? get session;
  @BuiltValueField(wireName: 'navigation')
  Navigation? get navigation;
  @BuiltValueField(wireName: 'headermessage')
  String? get headermessage;
  @BuiltValueField(wireName: 'type')
  String get type;
  @BuiltValueField(wireName: 'data')
  BuiltList<DataTimeRdv>? get data;
  String toJson() {
    return json.encode(serializers.serializeWith(
        DataGetApointmentTimeResponse.serializer, this));
  }

  static DataGetApointmentTimeResponse? fromJson(String jsonString) {
    return serializers.deserializeWith(
        DataGetApointmentTimeResponse.serializer, json.decode(jsonString));
  }

  static Serializer<DataGetApointmentTimeResponse> get serializer =>
      _$dataGetApointmentTimeResponseSerializer;
}

abstract class DataTimeRdv implements Built<DataTimeRdv, DataTimeRdvBuilder> {
  DataTimeRdv._();

  factory DataTimeRdv([updates(DataTimeRdvBuilder b)]) = _$DataTimeRdv;

  @BuiltValueField(wireName: 'label')
  String? get label;
  @BuiltValueField(wireName: 'label2')
  String? get label2;
  @BuiltValueField(wireName: 'label3')
  String? get label3;
  @BuiltValueField(wireName: 'message')
  String? get message;
  @BuiltValueField(wireName: 'creneaux')
  BuiltList<Creneaux>? get creneaux;
  String toJson() {
    return json.encode(serializers.serializeWith(DataTimeRdv.serializer, this));
  }

  static DataTimeRdv? fromJson(String jsonString) {
    return serializers.deserializeWith(
        DataTimeRdv.serializer, json.decode(jsonString));
  }

  static Serializer<DataTimeRdv> get serializer => _$dataTimeRdvSerializer;
}

abstract class Creneaux implements Built<Creneaux, CreneauxBuilder> {
  Creneaux._();

  factory Creneaux([updates(CreneauxBuilder b)]) = _$Creneaux;

  @BuiltValueField(wireName: 'fromhour')
  String? get fromhour;
  @BuiltValueField(wireName: 'tohour')
  String? get tohour;
  @BuiltValueField(wireName: 'doctor')
  String? get doctor;
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
  String toJson() {
    return json.encode(serializers.serializeWith(Creneaux.serializer, this));
  }

  static Creneaux? fromJson(String jsonString) {
    return serializers.deserializeWith(
        Creneaux.serializer, json.decode(jsonString));
  }

  static Serializer<Creneaux> get serializer => _$creneauxSerializer;
}

abstract class Navigation implements Built<Navigation, NavigationBuilder> {
  Navigation._();

  factory Navigation([updates(NavigationBuilder b)]) = _$Navigation;

  @BuiltValueField(wireName: 'begin')
  Begin? get begin;
  @BuiltValueField(wireName: 'prev')
  Prev? get prev;
  @BuiltValueField(wireName: 'prevweek')
  Prevweek? get prevweek;
  @BuiltValueField(wireName: 'nextweek')
  Nextweek? get nextweek;
  String toJson() {
    return json.encode(serializers.serializeWith(Navigation.serializer, this));
  }

  static Navigation? fromJson(String jsonString) {
    return serializers.deserializeWith(
        Navigation.serializer, json.decode(jsonString));
  }

  static Serializer<Navigation> get serializer => _$navigationSerializer;
}

abstract class Begin implements Built<Begin, BeginBuilder> {
  Begin._();

  factory Begin([updates(BeginBuilder b)]) = _$Begin;

  @BuiltValueField(wireName: 'label')
  String get label;
  @BuiltValueField(wireName: 'onclick_action')
  String get onclickAction;
  @BuiltValueField(wireName: 'onclick_data')
  String get onclickData;
  @BuiltValueField(wireName: 'onclick_week')
  String get onclickWeek;
  String toJson() {
    return json.encode(serializers.serializeWith(Begin.serializer, this));
  }

  static Begin? fromJson(String jsonString) {
    return serializers.deserializeWith(
        Begin.serializer, json.decode(jsonString));
  }

  static Serializer<Begin> get serializer => _$beginSerializer;
}

abstract class Prev implements Built<Prev, PrevBuilder> {
  Prev._();

  factory Prev([updates(PrevBuilder b)]) = _$Prev;

  @BuiltValueField(wireName: 'label')
  String get label;
  @BuiltValueField(wireName: 'onclick_action')
  String get onclickAction;
  @BuiltValueField(wireName: 'onclick_data')
  String get onclickData;
  @BuiltValueField(wireName: 'onclick_week')
  String get onclickWeek;
  String toJson() {
    return json.encode(serializers.serializeWith(Prev.serializer, this));
  }

  static Prev? fromJson(String jsonString) {
    return serializers.deserializeWith(
        Prev.serializer, json.decode(jsonString));
  }

  static Serializer<Prev> get serializer => _$prevSerializer;
}

abstract class Prevweek implements Built<Prevweek, PrevweekBuilder> {
  Prevweek._();

  factory Prevweek([updates(PrevweekBuilder b)]) = _$Prevweek;

  @BuiltValueField(wireName: 'label')
  String? get label;
  @BuiltValueField(wireName: 'onclick_action')
  String? get onclickAction;
  @BuiltValueField(wireName: 'onclick_data')
  String? get onclickData;
  @BuiltValueField(wireName: 'onclick_week')
  String? get onclickWeek;
  String toJson() {
    return json.encode(serializers.serializeWith(Prevweek.serializer, this));
  }

  static Prevweek? fromJson(String jsonString) {
    return serializers.deserializeWith(
        Prevweek.serializer, json.decode(jsonString));
  }

  static Serializer<Prevweek> get serializer => _$prevweekSerializer;
}

abstract class Nextweek implements Built<Nextweek, NextweekBuilder> {
  Nextweek._();

  factory Nextweek([updates(NextweekBuilder b)]) = _$Nextweek;

  @BuiltValueField(wireName: 'label')
  String get label;
  @BuiltValueField(wireName: 'onclick_action')
  String get onclickAction;
  @BuiltValueField(wireName: 'onclick_data')
  String get onclickData;
  @BuiltValueField(wireName: 'onclick_week')
  String get onclickWeek;
  String toJson() {
    return json.encode(serializers.serializeWith(Nextweek.serializer, this));
  }

  static Nextweek? fromJson(String jsonString) {
    return serializers.deserializeWith(
        Nextweek.serializer, json.decode(jsonString));
  }

  static Serializer<Nextweek> get serializer => _$nextweekSerializer;
}
