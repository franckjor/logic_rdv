library selected_patient_response_for_rdv;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:logic_rdv_v0/src/core/serializers/serializers.dart';

import 'get_apointment_time_response.dart';

part 'selected_patient_response_for_rdv.g.dart';

abstract class SelectedPatientResponseForRdv
    implements
        Built<SelectedPatientResponseForRdv,
            SelectedPatientResponseForRdvBuilder> {
  SelectedPatientResponseForRdv._();

  factory SelectedPatientResponseForRdv(
          [updates(SelectedPatientResponseForRdvBuilder b)]) =
      _$SelectedPatientResponseForRdv;

  @BuiltValueField(wireName: 'version')
  String? get version;
  @BuiltValueField(wireName: 'request')
  String? get request;
  @BuiltValueField(wireName: 'params')
  ParamsSelectedPatientResponseForRdv? get params;
  @BuiltValueField(wireName: 'message')
  String? get message;
  @BuiltValueField(wireName: 'httpstatut')
  int? get httpstatut;
  @BuiltValueField(wireName: 'error')
  String? get error;
  @BuiltValueField(wireName: 'data')
  DataSelectedPatientResponseForRdv? get data;
  String toJson() {
    return json.encode(serializers.serializeWith(
        SelectedPatientResponseForRdv.serializer, this));
  }

  static SelectedPatientResponseForRdv? fromJson(String jsonString) {
    return serializers.deserializeWith(
        SelectedPatientResponseForRdv.serializer, json.decode(jsonString));
  }

  static Serializer<SelectedPatientResponseForRdv> get serializer =>
      _$selectedPatientResponseForRdvSerializer;
}

abstract class ParamsSelectedPatientResponseForRdv
    implements
        Built<ParamsSelectedPatientResponseForRdv,
            ParamsSelectedPatientResponseForRdvBuilder> {
  ParamsSelectedPatientResponseForRdv._();

  factory ParamsSelectedPatientResponseForRdv(
          [updates(ParamsSelectedPatientResponseForRdvBuilder b)]) =
      _$ParamsSelectedPatientResponseForRdv;

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
        ParamsSelectedPatientResponseForRdv.serializer, this));
  }

  static ParamsSelectedPatientResponseForRdv? fromJson(String jsonString) {
    return serializers.deserializeWith(
        ParamsSelectedPatientResponseForRdv.serializer,
        json.decode(jsonString));
  }

  static Serializer<ParamsSelectedPatientResponseForRdv> get serializer =>
      _$paramsSelectedPatientResponseForRdvSerializer;
}

abstract class DataSelectedPatientResponseForRdv
    implements
        Built<DataSelectedPatientResponseForRdv,
            DataSelectedPatientResponseForRdvBuilder> {
  DataSelectedPatientResponseForRdv._();

  factory DataSelectedPatientResponseForRdv(
          [updates(DataSelectedPatientResponseForRdvBuilder b)]) =
      _$DataSelectedPatientResponseForRdv;

  @BuiltValueField(wireName: 'session')
  String? get session;
  @BuiltValueField(wireName: 'navigation')
  Navigation? get navigation;
  @BuiltValueField(wireName: 'headermessage')
  String? get headermessage;
  @BuiltValueField(wireName: 'type')
  String? get type;
  @BuiltValueField(wireName: 'data')
  DataSelectedPatientResponseForRdvBody? get data;
  String toJson() {
    return json.encode(serializers.serializeWith(
        DataSelectedPatientResponseForRdv.serializer, this));
  }

  static DataSelectedPatientResponseForRdv? fromJson(String jsonString) {
    return serializers.deserializeWith(
        DataSelectedPatientResponseForRdv.serializer, json.decode(jsonString));
  }

  static Serializer<DataSelectedPatientResponseForRdv> get serializer =>
      _$dataSelectedPatientResponseForRdvSerializer;
}

abstract class DataSelectedPatientResponseForRdvBody
    implements
        Built<DataSelectedPatientResponseForRdvBody,
            DataSelectedPatientResponseForRdvBodyBuilder> {
  DataSelectedPatientResponseForRdvBody._();

  factory DataSelectedPatientResponseForRdvBody(
          [updates(DataSelectedPatientResponseForRdvBodyBuilder b)]) =
      _$DataSelectedPatientResponseForRdvBody;

  @BuiltValueField(wireName: 'messageinternet')
  String? get messageinternet;
  @BuiltValueField(wireName: 'messagenbperson')
  String? get messagenbperson;
  @BuiltValueField(wireName: 'apptsinprogress')
  Apptsinprogress? get apptsinprogress;
  @BuiltValueField(wireName: 'appttovalid')
  Appttovalid? get appttovalid;
  @BuiltValueField(wireName: 'apptinput')
  BuiltList<Apptinput>? get apptinput;
  @BuiltValueField(wireName: 'apptbuttonvalidation')
  Apptbuttonvalidation? get apptbuttonvalidation;
  @BuiltValueField(wireName: 'messageglobalinternet')
  String? get messageglobalinternet;
  @BuiltValueField(wireName: 'payment')
  Payment? get payment;
  String toJson() {
    return json.encode(serializers.serializeWith(
        DataSelectedPatientResponseForRdvBody.serializer, this));
  }

  static DataSelectedPatientResponseForRdvBody? fromJson(String jsonString) {
    return serializers.deserializeWith(
        DataSelectedPatientResponseForRdvBody.serializer,
        json.decode(jsonString));
  }

  static Serializer<DataSelectedPatientResponseForRdvBody> get serializer =>
      _$dataSelectedPatientResponseForRdvBodySerializer;
}

abstract class Apptsinprogress
    implements Built<Apptsinprogress, ApptsinprogressBuilder> {
  Apptsinprogress._();

  factory Apptsinprogress([updates(ApptsinprogressBuilder b)]) =
      _$Apptsinprogress;

  @BuiltValueField(wireName: 'message')
  String? get message;
  @BuiltValueField(wireName: 'appts')
  BuiltList<Appts>? get appts;
  String toJson() {
    return json
        .encode(serializers.serializeWith(Apptsinprogress.serializer, this));
  }

  static Apptsinprogress? fromJson(String jsonString) {
    return serializers.deserializeWith(
        Apptsinprogress.serializer, json.decode(jsonString));
  }

  static Serializer<Apptsinprogress> get serializer =>
      _$apptsinprogressSerializer;
}

abstract class Appts implements Built<Appts, ApptsBuilder> {
  Appts._();

  factory Appts([updates(ApptsBuilder b)]) = _$Appts;

  @BuiltValueField(wireName: 'date')
  String? get date;
  @BuiltValueField(wireName: 'label')
  String? get label;
  @BuiltValueField(wireName: 'doctor')
  String? get doctor;
  @BuiltValueField(wireName: 'token')
  String? get token;
  String toJson() {
    return json.encode(serializers.serializeWith(Appts.serializer, this));
  }

  static Appts? fromJson(String jsonString) {
    return serializers.deserializeWith(
        Appts.serializer, json.decode(jsonString));
  }

  static Serializer<Appts> get serializer => _$apptsSerializer;
}

abstract class Appttovalid implements Built<Appttovalid, AppttovalidBuilder> {
  Appttovalid._();

  factory Appttovalid([updates(AppttovalidBuilder b)]) = _$Appttovalid;

  @BuiltValueField(wireName: 'date')
  String? get date;
  @BuiltValueField(wireName: 'doctor')
  String? get doctor;
  @BuiltValueField(wireName: 'description')
  String? get description;
  @BuiltValueField(wireName: 'patient')
  String? get patient;
  String toJson() {
    return json.encode(serializers.serializeWith(Appttovalid.serializer, this));
  }

  static Appttovalid? fromJson(String jsonString) {
    return serializers.deserializeWith(
        Appttovalid.serializer, json.decode(jsonString));
  }

  static Serializer<Appttovalid> get serializer => _$appttovalidSerializer;
}

abstract class Apptinput implements Built<Apptinput, ApptinputBuilder> {
  Apptinput._();

  factory Apptinput([updates(ApptinputBuilder b)]) = _$Apptinput;

  @BuiltValueField(wireName: 'name')
  String? get name;
  @BuiltValueField(wireName: 'mandatory')
  String? get mandatory;
  @BuiltValueField(wireName: 'label')
  String? get label;
  @BuiltValueField(wireName: 'value')
  String? get value;
  String toJson() {
    return json.encode(serializers.serializeWith(Apptinput.serializer, this));
  }

  static Apptinput? fromJson(String jsonString) {
    return serializers.deserializeWith(
        Apptinput.serializer, json.decode(jsonString));
  }

  static Serializer<Apptinput> get serializer => _$apptinputSerializer;
}

abstract class Apptbuttonvalidation
    implements Built<Apptbuttonvalidation, ApptbuttonvalidationBuilder> {
  Apptbuttonvalidation._();

  factory Apptbuttonvalidation([updates(ApptbuttonvalidationBuilder b)]) =
      _$Apptbuttonvalidation;

  @BuiltValueField(wireName: 'onclick')
  String? get onclick;
  @BuiltValueField(wireName: 'label')
  String? get label;
  @BuiltValueField(wireName: 'onclick_data')
  String? get onclickData;
  @BuiltValueField(wireName: 'onclick_action')
  String? get onclickAction;
  @BuiltValueField(wireName: 'onclick_week')
  String? get onclickWeek;
  String toJson() {
    return json.encode(
        serializers.serializeWith(Apptbuttonvalidation.serializer, this));
  }

  static Apptbuttonvalidation? fromJson(String jsonString) {
    return serializers.deserializeWith(
        Apptbuttonvalidation.serializer, json.decode(jsonString));
  }

  static Serializer<Apptbuttonvalidation> get serializer =>
      _$apptbuttonvalidationSerializer;
}

abstract class Payment implements Built<Payment, PaymentBuilder> {
  Payment._();

  factory Payment([updates(PaymentBuilder b)]) = _$Payment;

  @BuiltValueField(wireName: 'amountlabel')
  String? get amountlabel;
  @BuiltValueField(wireName: 'amount')
  String? get amount;
  @BuiltValueField(wireName: 'infos')
  String? get infos;
  @BuiltValueField(wireName: 'pkaccount')
  String? get pkAccount;
  String toJson() {
    return json.encode(serializers.serializeWith(Payment.serializer, this));
  }

  static Payment? fromJson(String jsonString) {
    return serializers.deserializeWith(
        Payment.serializer, json.decode(jsonString));
  }

  static Serializer<Payment> get serializer => _$paymentSerializer;
}
