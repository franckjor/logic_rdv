library list_of_doctor_request;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:logic_rdv_v0/src/core/serializers/serializers.dart';

part 'list_of_doctor_request.g.dart';

abstract class ListOfDoctorRequest
    implements Built<ListOfDoctorRequest, ListOfDoctorRequestBuilder> {
  ListOfDoctorRequest._();

  factory ListOfDoctorRequest([updates(ListOfDoctorRequestBuilder b)]) =
      _$ListOfDoctorRequest;

  @BuiltValueField(wireName: 'proxy_ville')
  String? get proxyVille;
  @BuiltValueField(wireName: 'proxy_nom')
  String? get proxyNom;
  @BuiltValueField(wireName: 'proxy_ville_id')
  String? get proxyVilleId;
  @BuiltValueField(wireName: 'proxy_nom_id')
  String? get proxyNomId;
  @BuiltValueField(wireName: 'proxy_search')
  String? get proxySearch;
  @BuiltValueField(wireName: 'proxy_page')
  String? get proxyPage;
  String toJson() {
    return json.encode(
        serializers.serializeWith(ListOfDoctorRequest.serializer, this));
  }

  static ListOfDoctorRequest fromJson(String jsonString) {
    return serializers.deserializeWith(
        ListOfDoctorRequest.serializer, json.decode(jsonString));
  }

  static Serializer<ListOfDoctorRequest> get serializer =>
      _$listOfDoctorRequestSerializer;
}
