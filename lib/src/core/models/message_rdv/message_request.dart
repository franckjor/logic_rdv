library message_request;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:logic_rdv_v0/src/core/serializers/serializers.dart';

part 'message_request.g.dart';

abstract class MessageRequest
    implements Built<MessageRequest, MessageRequestBuilder> {
  MessageRequest._();

  factory MessageRequest([updates(MessageRequestBuilder b)]) = _$MessageRequest;

  @BuiltValueField(wireName: 'tokenuser')
  String get tokenuser;
  @BuiltValueField(wireName: 'page')
  String get page;
  String toJson() {
    return json
        .encode(serializers.serializeWith(MessageRequest.serializer, this));
  }

  static MessageRequest? fromJson(String jsonString) {
    return serializers.deserializeWith(
        MessageRequest.serializer, json.decode(jsonString));
  }

  static Serializer<MessageRequest> get serializer =>
      _$messageRequestSerializer;
}
