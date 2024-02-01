library verify_notif_subscribtion;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:logic_rdv_v0/src/core/serializers/serializers.dart';

part 'verify_notif_subscribtion.g.dart';

abstract class VerifyNotifSubscribtion
    implements Built<VerifyNotifSubscribtion, VerifyNotifSubscribtionBuilder> {
  VerifyNotifSubscribtion._();

  factory VerifyNotifSubscribtion([updates(VerifyNotifSubscribtionBuilder b)]) =
  _$VerifyNotifSubscribtion;

  @BuiltValueField(wireName: 'httpstatut')
  int get httpstatut;
  @BuiltValueField(wireName: 'version')
  String get version;
  @BuiltValueField(wireName: 'request')
  String get request;
  @BuiltValueField(wireName: 'params')
  ParamsVerifyNotifSubscribtion get params;
  @BuiltValueField(wireName: 'error')
  String get error;
  @BuiltValueField(wireName: 'message')
  String get message;
  @BuiltValueField(wireName: 'data')
  DataVerifyNotifSubscribtion get data;
  String toJson() {
    return json.encode(
        serializers.serializeWith(VerifyNotifSubscribtion.serializer, this));
  }

  static VerifyNotifSubscribtion fromJson(String jsonString) {
    return serializers.deserializeWith(
        VerifyNotifSubscribtion.serializer, json.decode(jsonString))!;
  }

  static Serializer<VerifyNotifSubscribtion> get serializer =>
      _$verifyNotifSubscribtionSerializer;
}

abstract class ParamsVerifyNotifSubscribtion implements Built<ParamsVerifyNotifSubscribtion, ParamsVerifyNotifSubscribtionBuilder> {
  ParamsVerifyNotifSubscribtion._();

  factory ParamsVerifyNotifSubscribtion([updates(ParamsVerifyNotifSubscribtionBuilder b)]) = _$ParamsVerifyNotifSubscribtion;

  @BuiltValueField(wireName: 'tokenuser')
  String get tokenuser;
  @BuiltValueField(wireName: 'installationkey')
  String get installationkey;
  String toJson() {
    return json.encode(serializers.serializeWith(ParamsVerifyNotifSubscribtion.serializer, this));
  }

  static ParamsVerifyNotifSubscribtion fromJson(String jsonString) {
    return serializers.deserializeWith(
        ParamsVerifyNotifSubscribtion.serializer, json.decode(jsonString))!;
  }

  static Serializer<ParamsVerifyNotifSubscribtion> get serializer => _$paramsVerifyNotifSubscribtionSerializer;
}

abstract class DataVerifyNotifSubscribtion implements Built<DataVerifyNotifSubscribtion, DataVerifyNotifSubscribtionBuilder> {
  DataVerifyNotifSubscribtion._();

  factory DataVerifyNotifSubscribtion([updates(DataVerifyNotifSubscribtionBuilder b)]) = _$DataVerifyNotifSubscribtion;

  @BuiltValueField(wireName: 'issubscribed')
  String get issubscribed;
  @BuiltValueField(wireName: 'total')
  String get total;
  String toJson() {
    return json.encode(serializers.serializeWith(DataVerifyNotifSubscribtion.serializer, this));
  }

  static DataVerifyNotifSubscribtion fromJson(String jsonString) {
    return serializers.deserializeWith(
        DataVerifyNotifSubscribtion.serializer, json.decode(jsonString))!;
  }

  static Serializer<DataVerifyNotifSubscribtion> get serializer => _$dataVerifyNotifSubscribtionSerializer;
}
