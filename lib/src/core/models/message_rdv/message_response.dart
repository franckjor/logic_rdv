library message_response;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:logic_rdv_v0/src/core/models/doctor_list_model/list_of_doctor_reponse.dart';
import 'package:logic_rdv_v0/src/core/serializers/serializers.dart';

part 'message_response.g.dart';

abstract class MessageResponse
    implements Built<MessageResponse, MessageResponseBuilder> {
  MessageResponse._();

  factory MessageResponse([updates(MessageResponseBuilder b)]) =
      _$MessageResponse;

  @BuiltValueField(wireName: 'version')
  String get version;
  @BuiltValueField(wireName: 'request')
  String get request;
  @BuiltValueField(wireName: 'params')
  ParamsMessageResponse get params;
  @BuiltValueField(wireName: 'message')
  String get message;
  @BuiltValueField(wireName: 'httpstatut')
  int get httpstatut;
  @BuiltValueField(wireName: 'error')
  String get error;
  @BuiltValueField(wireName: 'data')
  DataMessageResponse get data;
  String toJson() {
    return json
        .encode(serializers.serializeWith(MessageResponse.serializer, this));
  }

  static MessageResponse fromJson(String jsonString) {
    return serializers.deserializeWith(
        MessageResponse.serializer, json.decode(jsonString));
  }

  static Serializer<MessageResponse> get serializer =>
      _$messageResponseSerializer;
}

abstract class ParamsMessageResponse
    implements Built<ParamsMessageResponse, ParamsMessageResponseBuilder> {
  ParamsMessageResponse._();

  factory ParamsMessageResponse([updates(ParamsMessageResponseBuilder b)]) =
      _$ParamsMessageResponse;

  @BuiltValueField(wireName: 'tokenuser')
  String get tokenuser;
  @BuiltValueField(wireName: 'page')
  String get page;
  String toJson() {
    return json.encode(
        serializers.serializeWith(ParamsMessageResponse.serializer, this));
  }

  static ParamsMessageResponse fromJson(String jsonString) {
    return serializers.deserializeWith(
        ParamsMessageResponse.serializer, json.decode(jsonString));
  }

  static Serializer<ParamsMessageResponse> get serializer =>
      _$paramsMessageResponseSerializer;
}

abstract class DataMessageResponse
    implements Built<DataMessageResponse, DataMessageResponseBuilder> {
  DataMessageResponse._();

  factory DataMessageResponse([updates(DataMessageResponseBuilder b)]) =
      _$DataMessageResponse;

  @BuiltValueField(wireName: 'list')
  BuiltList<MessageDataResponse> get list;
  @BuiltValueField(wireName: 'pagination')
  PaginationListOfDoctor get pagination;
  String toJson() {
    return json.encode(
        serializers.serializeWith(DataMessageResponse.serializer, this));
  }

  static DataMessageResponse fromJson(String jsonString) {
    return serializers.deserializeWith(
        DataMessageResponse.serializer, json.decode(jsonString));
  }

  static Serializer<DataMessageResponse> get serializer =>
      _$dataMessageResponseSerializer;
}

abstract class MessageDataResponse
    implements Built<MessageDataResponse, MessageDataResponseBuilder> {
  MessageDataResponse._();

  factory MessageDataResponse([updates(MessageDataResponseBuilder b)]) =
      _$MessageDataResponse;

  @BuiltValueField(wireName: 'datetime')
  String get datetime;
  @BuiltValueField(wireName: 'reception')
  int get reception;
  @BuiltValueField(wireName: 'from')
  String get from;
  @BuiltValueField(wireName: 'to')
  String get to;
  @BuiltValueField(wireName: 'subject')
  String get subject;
  @BuiltValueField(wireName: 'message')
  String get message;
  @BuiltValueField(wireName: 'file')
  String get file;
  @BuiltValueField(wireName: 'file2')
  String get file2;
  @BuiltValueField(wireName: 'file3')
  String get file3;
  @BuiltValueField(wireName: 'token')
  String get token;
  String toJson() {
    return json.encode(
        serializers.serializeWith(MessageDataResponse.serializer, this));
  }

  static MessageDataResponse fromJson(String jsonString) {
    return serializers.deserializeWith(
        MessageDataResponse.serializer, json.decode(jsonString));
  }

  static Serializer<MessageDataResponse> get serializer =>
      _$messageDataResponseSerializer;
}
