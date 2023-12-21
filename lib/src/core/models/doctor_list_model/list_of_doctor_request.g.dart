// GENERATED CODE - DO NOT MODIFY BY HAND

part of list_of_doctor_request;

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
  Iterable<Object> serialize(
      Serializers serializers, ListOfDoctorRequest object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.proxyVille;
    if (value != null) {
      result
        ..add('proxy_ville')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String))!);
    }
    value = object.proxyNom;
    if (value != null) {
      result
        ..add('proxy_nom')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String))!);
    }
    value = object.proxyVilleId;
    if (value != null) {
      result
        ..add('proxy_ville_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String))!);
    }
    value = object.proxyNomId;
    if (value != null) {
      result
        ..add('proxy_nom_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String))!);
    }
    value = object.proxySearch;
    if (value != null) {
      result
        ..add('proxy_search')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String))!);
    }
    value = object.proxyPage;
    if (value != null) {
      result
        ..add('proxy_page')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String))!);
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
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current!;
      switch (key) {
        case 'proxy_ville':
          result.proxyVille = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'proxy_nom':
          result.proxyNom = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'proxy_ville_id':
          result.proxyVilleId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'proxy_nom_id':
          result.proxyNomId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'proxy_search':
          result.proxySearch = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'proxy_page':
          result.proxyPage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ListOfDoctorRequest extends ListOfDoctorRequest {
  @override
  final String proxyVille;
  @override
  final String proxyNom;
  @override
  final String proxyVilleId;
  @override
  final String proxyNomId;
  @override
  final String proxySearch;
  @override
  final String proxyPage;

  factory _$ListOfDoctorRequest(
          [void Function(ListOfDoctorRequestBuilder)? updates]) =>
      (new ListOfDoctorRequestBuilder()..update(updates!)).build();

  _$ListOfDoctorRequest._(
      {
      required this.proxyVille,
      required this.proxyNom,
      required this.proxyVilleId,
      required this.proxyNomId,
      required this.proxySearch,
      required this.proxyPage})
      : super._();

  @override
  ListOfDoctorRequest rebuild(
          void Function(ListOfDoctorRequestBuilder) updates) =>
      (toBuilder()..update(updates!)).build();

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
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, proxyVille.hashCode), proxyNom.hashCode),
                    proxyVilleId.hashCode),
                proxyNomId.hashCode),
            proxySearch.hashCode),
        proxyPage.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ListOfDoctorRequest')
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

  String _proxyVille = '';
  String get proxyVille => _$this._proxyVille;
  set proxyVille(String proxyVille) => _$this._proxyVille = proxyVille;

  String _proxyNom = '';
  String get proxyNom => _$this._proxyNom;
  set proxyNom(String proxyNom) => _$this._proxyNom = proxyNom;

  String _proxyVilleId = '';
  String get proxyVilleId => _$this._proxyVilleId;
  set proxyVilleId(String proxyVilleId) => _$this._proxyVilleId = proxyVilleId;

  String _proxyNomId = '';
  String get proxyNomId => _$this._proxyNomId;
  set proxyNomId(String proxyNomId) => _$this._proxyNomId = proxyNomId;

  String _proxySearch = '';
  String get proxySearch => _$this._proxySearch;
  set proxySearch(String proxySearch) => _$this._proxySearch = proxySearch;

  String _proxyPage ='';
  String get proxyPage => _$this._proxyPage;
  set proxyPage(String proxyPage) => _$this._proxyPage = proxyPage;

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
  _$ListOfDoctorRequest build() {
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
