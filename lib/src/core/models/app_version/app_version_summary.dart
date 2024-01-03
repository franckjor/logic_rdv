library app_version_summary;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:logic_rdv_v0/src/core/serializers/serializers.dart';

part 'app_version_summary.g.dart';

abstract class AppVersionSummary
    implements Built<AppVersionSummary, AppVersionSummaryBuilder> {
  AppVersionSummary._();

  factory AppVersionSummary([updates(AppVersionSummaryBuilder b)]) =
      _$AppVersionSummary;

  @BuiltValueField(wireName: 'httpstatut')
  int get httpstatut;
  @BuiltValueField(wireName: 'version')
  String get version;
  @BuiltValueField(wireName: 'request')
  String get request;
  @BuiltValueField(wireName: 'params')
  BuiltList<ParamsAppVersionSummary> get params;
  @BuiltValueField(wireName: 'error')
  String get error;
  @BuiltValueField(wireName: 'message')
  String get message;
  @BuiltValueField(wireName: 'data')
  DataAppVersionSummary get data;
  String toJson() {
    return json
        .encode(serializers.serializeWith(AppVersionSummary.serializer, this));
  }

  static AppVersionSummary? fromJson(String jsonString) {
    return serializers.deserializeWith(
        AppVersionSummary.serializer, json.decode(jsonString));
  }

  static Serializer<AppVersionSummary> get serializer =>
      _$appVersionSummarySerializer;
}

abstract class ParamsAppVersionSummary
    implements Built<ParamsAppVersionSummary, ParamsAppVersionSummaryBuilder> {
  ParamsAppVersionSummary._();

  factory ParamsAppVersionSummary([updates(ParamsAppVersionSummaryBuilder b)]) =
      _$ParamsAppVersionSummary;

  @BuiltValueField(wireName: 'android')
  String get android;
  @BuiltValueField(wireName: 'iphone')
  String get iphone;
  String toJson() {
    return json.encode(
        serializers.serializeWith(ParamsAppVersionSummary.serializer, this));
  }

  static ParamsAppVersionSummary? fromJson(String jsonString) {
    return serializers.deserializeWith(
        ParamsAppVersionSummary.serializer, json.decode(jsonString));
  }

  static Serializer<ParamsAppVersionSummary> get serializer =>
      _$paramsAppVersionSummarySerializer;
}

abstract class DataAppVersionSummary
    implements Built<DataAppVersionSummary, DataAppVersionSummaryBuilder> {
  DataAppVersionSummary._();

  factory DataAppVersionSummary([updates(DataAppVersionSummaryBuilder b)]) =
      _$DataAppVersionSummary;

  @BuiltValueField(wireName: 'version')
  Version get version;
  String toJson() {
    return json.encode(
        serializers.serializeWith(DataAppVersionSummary.serializer, this));
  }

  static DataAppVersionSummary? fromJson(String jsonString) {
    return serializers.deserializeWith(
        DataAppVersionSummary.serializer, json.decode(jsonString));
  }

  static Serializer<DataAppVersionSummary> get serializer =>
      _$dataAppVersionSummarySerializer;
}

abstract class Version implements Built<Version, VersionBuilder> {
  Version._();

  factory Version([updates(VersionBuilder b)]) = _$Version;

  @BuiltValueField(wireName: 'android')
  String get android;
  @BuiltValueField(wireName: 'iphone')
  String get iphone;
  String toJson() {
    return json.encode(serializers.serializeWith(Version.serializer, this));
  }

  static Version? fromJson(String jsonString) {
    return serializers.deserializeWith(
        Version.serializer, json.decode(jsonString));
  }

  static Serializer<Version> get serializer => _$versionSerializer;
}
