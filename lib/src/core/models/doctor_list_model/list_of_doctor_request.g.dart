// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_of_doctor_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ListOfDoctorRequest> _$listOfDoctorRequestSerializer =
    new _$ListOfDoctorRequestSerializer();

class _$ListOfDoctorRequestSerializer
    implements StructuredSerializer<ListOfDoctorRequest> {
  @override
  final Iterable<Type> types = const [
    ListOfDoctorRequest,
    _$ListOfDoctorRequest
  ];
  @override
  final String wireName = 'ListOfDoctorRequest';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, ListOfDoctorRequest object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.proxyVille;
    if (value != null) {
      result
        ..add('proxy_ville')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.proxyNom;
    if (value != null) {
      result
        ..add('proxy_nom')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.proxyVilleId;
    if (value != null) {
      result
        ..add('proxy_ville_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.proxyNomId;
    if (value != null) {
      result
        ..add('proxy_nom_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.proxySearch;
    if (value != null) {
      result
        ..add('proxy_search')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.proxyPage;
    if (value != null) {
      result
        ..add('proxy_page')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ListOfDoctorRequest deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ListOfDoctorRequestBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'proxy_ville':
          result.proxyVille = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'proxy_nom':
          result.proxyNom = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'proxy_ville_id':
          result.proxyVilleId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'proxy_nom_id':
          result.proxyNomId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'proxy_search':
          result.proxySearch = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'proxy_page':
          result.proxyPage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$ListOfDoctorRequest extends ListOfDoctorRequest {
  @override
  final String? proxyVille;
  @override
  final String? proxyNom;
  @override
  final String? proxyVilleId;
  @override
  final String? proxyNomId;
  @override
  final String? proxySearch;
  @override
  final String? proxyPage;

  factory _$ListOfDoctorRequest(
          [void Function(ListOfDoctorRequestBuilder)? updates]) =>
      (new ListOfDoctorRequestBuilder()..update(updates))._build();

  _$ListOfDoctorRequest._(
      {this.proxyVille,
      this.proxyNom,
      this.proxyVilleId,
      this.proxyNomId,
      this.proxySearch,
      this.proxyPage})
      : super._();

  @override
  ListOfDoctorRequest rebuild(
          void Function(ListOfDoctorRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListOfDoctorRequestBuilder toBuilder() =>
      new ListOfDoctorRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListOfDoctorRequest &&
        proxyVille == other.proxyVille &&
        proxyNom == other.proxyNom &&
        proxyVilleId == other.proxyVilleId &&
        proxyNomId == other.proxyNomId &&
        proxySearch == other.proxySearch &&
        proxyPage == other.proxyPage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, proxyVille.hashCode);
    _$hash = $jc(_$hash, proxyNom.hashCode);
    _$hash = $jc(_$hash, proxyVilleId.hashCode);
    _$hash = $jc(_$hash, proxyNomId.hashCode);
    _$hash = $jc(_$hash, proxySearch.hashCode);
    _$hash = $jc(_$hash, proxyPage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ListOfDoctorRequest')
          ..add('proxyVille', proxyVille)
          ..add('proxyNom', proxyNom)
          ..add('proxyVilleId', proxyVilleId)
          ..add('proxyNomId', proxyNomId)
          ..add('proxySearch', proxySearch)
          ..add('proxyPage', proxyPage))
        .toString();
  }
}

class ListOfDoctorRequestBuilder
    implements Builder<ListOfDoctorRequest, ListOfDoctorRequestBuilder> {
  _$ListOfDoctorRequest? _$v;

  String? _proxyVille;
  String? get proxyVille => _$this._proxyVille;
  set proxyVille(String? proxyVille) => _$this._proxyVille = proxyVille;

  String? _proxyNom;
  String? get proxyNom => _$this._proxyNom;
  set proxyNom(String? proxyNom) => _$this._proxyNom = proxyNom;

  String? _proxyVilleId;
  String? get proxyVilleId => _$this._proxyVilleId;
  set proxyVilleId(String? proxyVilleId) => _$this._proxyVilleId = proxyVilleId;

  String? _proxyNomId;
  String? get proxyNomId => _$this._proxyNomId;
  set proxyNomId(String? proxyNomId) => _$this._proxyNomId = proxyNomId;

  String? _proxySearch;
  String? get proxySearch => _$this._proxySearch;
  set proxySearch(String? proxySearch) => _$this._proxySearch = proxySearch;

  String? _proxyPage;
  String? get proxyPage => _$this._proxyPage;
  set proxyPage(String? proxyPage) => _$this._proxyPage = proxyPage;

  ListOfDoctorRequestBuilder();

  ListOfDoctorRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _proxyVille = $v.proxyVille;
      _proxyNom = $v.proxyNom;
      _proxyVilleId = $v.proxyVilleId;
      _proxyNomId = $v.proxyNomId;
      _proxySearch = $v.proxySearch;
      _proxyPage = $v.proxyPage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListOfDoctorRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListOfDoctorRequest;
  }

  @override
  void update(void Function(ListOfDoctorRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListOfDoctorRequest build() => _build();

  _$ListOfDoctorRequest _build() {
    final _$result = _$v ??
        new _$ListOfDoctorRequest._(
            proxyVille: proxyVille,
            proxyNom: proxyNom,
            proxyVilleId: proxyVilleId,
            proxyNomId: proxyNomId,
            proxySearch: proxySearch,
            proxyPage: proxyPage);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
