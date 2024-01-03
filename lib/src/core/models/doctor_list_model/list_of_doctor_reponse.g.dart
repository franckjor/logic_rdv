// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_of_doctor_reponse.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ListOfDoctorReponse> _$listOfDoctorReponseSerializer =
    new _$ListOfDoctorReponseSerializer();
Serializer<ParamsListOfDoctor> _$paramsListOfDoctorSerializer =
    new _$ParamsListOfDoctorSerializer();
Serializer<DataListOfDoctor> _$dataListOfDoctorSerializer =
    new _$DataListOfDoctorSerializer();
Serializer<SearchListOfDoctor> _$searchListOfDoctorSerializer =
    new _$SearchListOfDoctorSerializer();
Serializer<PaginationListOfDoctor> _$paginationListOfDoctorSerializer =
    new _$PaginationListOfDoctorSerializer();

class _$ListOfDoctorReponseSerializer
    implements StructuredSerializer<ListOfDoctorReponse> {
  @override
  final Iterable<Type> types = const [
    ListOfDoctorReponse,
    _$ListOfDoctorReponse
  ];
  @override
  final String wireName = 'ListOfDoctorReponse';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, ListOfDoctorReponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'httpstatut',
      serializers.serialize(object.httpstatut,
          specifiedType: const FullType(int)),
      'version',
      serializers.serialize(object.version,
          specifiedType: const FullType(String)),
      'request',
      serializers.serialize(object.request,
          specifiedType: const FullType(String)),
      'params',
      serializers.serialize(object.params,
          specifiedType: const FullType(ParamsListOfDoctor)),
      'error',
      serializers.serialize(object.error,
          specifiedType: const FullType(String)),
      'message',
      serializers.serialize(object.message,
          specifiedType: const FullType(String)),
      'data',
      serializers.serialize(object.data,
          specifiedType: const FullType(DataListOfDoctor)),
    ];

    return result;
  }

  @override
  ListOfDoctorReponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ListOfDoctorReponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'httpstatut':
          result.httpstatut = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'version':
          result.version = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'request':
          result.request = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'params':
          result.params.replace(serializers.deserialize(value,
                  specifiedType: const FullType(ParamsListOfDoctor))!
              as ParamsListOfDoctor);
          break;
        case 'error':
          result.error = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'data':
          result.data.replace(serializers.deserialize(value,
                  specifiedType: const FullType(DataListOfDoctor))!
              as DataListOfDoctor);
          break;
      }
    }

    return result.build();
  }
}

class _$ParamsListOfDoctorSerializer
    implements StructuredSerializer<ParamsListOfDoctor> {
  @override
  final Iterable<Type> types = const [ParamsListOfDoctor, _$ParamsListOfDoctor];
  @override
  final String wireName = 'ParamsListOfDoctor';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, ParamsListOfDoctor object,
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
  ParamsListOfDoctor deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ParamsListOfDoctorBuilder();

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

class _$DataListOfDoctorSerializer
    implements StructuredSerializer<DataListOfDoctor> {
  @override
  final Iterable<Type> types = const [DataListOfDoctor, _$DataListOfDoctor];
  @override
  final String wireName = 'DataListOfDoctor';

  @override
  Iterable<Object?> serialize(Serializers serializers, DataListOfDoctor object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'list',
      serializers.serialize(object.list,
          specifiedType: const FullType(
              BuiltList, const [const FullType(ObjectNameOfSearch)])),
      'search',
      serializers.serialize(object.search,
          specifiedType: const FullType(SearchListOfDoctor)),
      'pagination',
      serializers.serialize(object.pagination,
          specifiedType: const FullType(PaginationListOfDoctor)),
    ];

    return result;
  }

  @override
  DataListOfDoctor deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DataListOfDoctorBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'list':
          result.list.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(ObjectNameOfSearch)]))!
              as BuiltList<Object?>);
          break;
        case 'search':
          result.search.replace(serializers.deserialize(value,
                  specifiedType: const FullType(SearchListOfDoctor))!
              as SearchListOfDoctor);
          break;
        case 'pagination':
          result.pagination.replace(serializers.deserialize(value,
                  specifiedType: const FullType(PaginationListOfDoctor))!
              as PaginationListOfDoctor);
          break;
      }
    }

    return result.build();
  }
}

class _$SearchListOfDoctorSerializer
    implements StructuredSerializer<SearchListOfDoctor> {
  @override
  final Iterable<Type> types = const [SearchListOfDoctor, _$SearchListOfDoctor];
  @override
  final String wireName = 'SearchListOfDoctor';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, SearchListOfDoctor object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'ville',
      serializers.serialize(object.ville,
          specifiedType: const FullType(String)),
      'ville_id',
      serializers.serialize(object.villeId,
          specifiedType: const FullType(String)),
      'nom',
      serializers.serialize(object.nom, specifiedType: const FullType(String)),
      'nom_id',
      serializers.serialize(object.nomId,
          specifiedType: const FullType(String)),
      'gps_lat',
      serializers.serialize(object.gpsLat,
          specifiedType: const FullType(String)),
      'gps_lng',
      serializers.serialize(object.gpsLng,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  SearchListOfDoctor deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SearchListOfDoctorBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'ville':
          result.ville = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'ville_id':
          result.villeId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'nom':
          result.nom = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'nom_id':
          result.nomId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'gps_lat':
          result.gpsLat = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'gps_lng':
          result.gpsLng = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$PaginationListOfDoctorSerializer
    implements StructuredSerializer<PaginationListOfDoctor> {
  @override
  final Iterable<Type> types = const [
    PaginationListOfDoctor,
    _$PaginationListOfDoctor
  ];
  @override
  final String wireName = 'PaginationListOfDoctor';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, PaginationListOfDoctor object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'result',
      serializers.serialize(object.result,
          specifiedType: const FullType(String)),
      'current',
      serializers.serialize(object.current,
          specifiedType: const FullType(String)),
      'maxpage',
      serializers.serialize(object.maxpage,
          specifiedType: const FullType(String)),
      'perpage',
      serializers.serialize(object.perpage,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  PaginationListOfDoctor deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PaginationListOfDoctorBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'result':
          result.result = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'current':
          result.current = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'maxpage':
          result.maxpage = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'perpage':
          result.perpage = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ListOfDoctorReponse extends ListOfDoctorReponse {
  @override
  final int httpstatut;
  @override
  final String version;
  @override
  final String request;
  @override
  final ParamsListOfDoctor params;
  @override
  final String error;
  @override
  final String message;
  @override
  final DataListOfDoctor data;

  factory _$ListOfDoctorReponse(
          [void Function(ListOfDoctorReponseBuilder)? updates]) =>
      (new ListOfDoctorReponseBuilder()..update(updates))._build();

  _$ListOfDoctorReponse._(
      {required this.httpstatut,
      required this.version,
      required this.request,
      required this.params,
      required this.error,
      required this.message,
      required this.data})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        httpstatut, r'ListOfDoctorReponse', 'httpstatut');
    BuiltValueNullFieldError.checkNotNull(
        version, r'ListOfDoctorReponse', 'version');
    BuiltValueNullFieldError.checkNotNull(
        request, r'ListOfDoctorReponse', 'request');
    BuiltValueNullFieldError.checkNotNull(
        params, r'ListOfDoctorReponse', 'params');
    BuiltValueNullFieldError.checkNotNull(
        error, r'ListOfDoctorReponse', 'error');
    BuiltValueNullFieldError.checkNotNull(
        message, r'ListOfDoctorReponse', 'message');
    BuiltValueNullFieldError.checkNotNull(data, r'ListOfDoctorReponse', 'data');
  }

  @override
  ListOfDoctorReponse rebuild(
          void Function(ListOfDoctorReponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListOfDoctorReponseBuilder toBuilder() =>
      new ListOfDoctorReponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListOfDoctorReponse &&
        httpstatut == other.httpstatut &&
        version == other.version &&
        request == other.request &&
        params == other.params &&
        error == other.error &&
        message == other.message &&
        data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, httpstatut.hashCode);
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jc(_$hash, request.hashCode);
    _$hash = $jc(_$hash, params.hashCode);
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ListOfDoctorReponse')
          ..add('httpstatut', httpstatut)
          ..add('version', version)
          ..add('request', request)
          ..add('params', params)
          ..add('error', error)
          ..add('message', message)
          ..add('data', data))
        .toString();
  }
}

class ListOfDoctorReponseBuilder
    implements Builder<ListOfDoctorReponse, ListOfDoctorReponseBuilder> {
  _$ListOfDoctorReponse? _$v;

  int? _httpstatut;
  int? get httpstatut => _$this._httpstatut;
  set httpstatut(int? httpstatut) => _$this._httpstatut = httpstatut;

  String? _version;
  String? get version => _$this._version;
  set version(String? version) => _$this._version = version;

  String? _request;
  String? get request => _$this._request;
  set request(String? request) => _$this._request = request;

  ParamsListOfDoctorBuilder? _params;
  ParamsListOfDoctorBuilder get params =>
      _$this._params ??= new ParamsListOfDoctorBuilder();
  set params(ParamsListOfDoctorBuilder? params) => _$this._params = params;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  DataListOfDoctorBuilder? _data;
  DataListOfDoctorBuilder get data =>
      _$this._data ??= new DataListOfDoctorBuilder();
  set data(DataListOfDoctorBuilder? data) => _$this._data = data;

  ListOfDoctorReponseBuilder();

  ListOfDoctorReponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _httpstatut = $v.httpstatut;
      _version = $v.version;
      _request = $v.request;
      _params = $v.params.toBuilder();
      _error = $v.error;
      _message = $v.message;
      _data = $v.data.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListOfDoctorReponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListOfDoctorReponse;
  }

  @override
  void update(void Function(ListOfDoctorReponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListOfDoctorReponse build() => _build();

  _$ListOfDoctorReponse _build() {
    _$ListOfDoctorReponse _$result;
    try {
      _$result = _$v ??
          new _$ListOfDoctorReponse._(
              httpstatut: BuiltValueNullFieldError.checkNotNull(
                  httpstatut, r'ListOfDoctorReponse', 'httpstatut'),
              version: BuiltValueNullFieldError.checkNotNull(
                  version, r'ListOfDoctorReponse', 'version'),
              request: BuiltValueNullFieldError.checkNotNull(
                  request, r'ListOfDoctorReponse', 'request'),
              params: params.build(),
              error: BuiltValueNullFieldError.checkNotNull(
                  error, r'ListOfDoctorReponse', 'error'),
              message: BuiltValueNullFieldError.checkNotNull(
                  message, r'ListOfDoctorReponse', 'message'),
              data: data.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'params';
        params.build();

        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ListOfDoctorReponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$ParamsListOfDoctor extends ParamsListOfDoctor {
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

  factory _$ParamsListOfDoctor(
          [void Function(ParamsListOfDoctorBuilder)? updates]) =>
      (new ParamsListOfDoctorBuilder()..update(updates))._build();

  _$ParamsListOfDoctor._(
      {this.proxyVille,
      this.proxyNom,
      this.proxyVilleId,
      this.proxyNomId,
      this.proxySearch,
      this.proxyPage})
      : super._();

  @override
  ParamsListOfDoctor rebuild(
          void Function(ParamsListOfDoctorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ParamsListOfDoctorBuilder toBuilder() =>
      new ParamsListOfDoctorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ParamsListOfDoctor &&
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
    return (newBuiltValueToStringHelper(r'ParamsListOfDoctor')
          ..add('proxyVille', proxyVille)
          ..add('proxyNom', proxyNom)
          ..add('proxyVilleId', proxyVilleId)
          ..add('proxyNomId', proxyNomId)
          ..add('proxySearch', proxySearch)
          ..add('proxyPage', proxyPage))
        .toString();
  }
}

class ParamsListOfDoctorBuilder
    implements Builder<ParamsListOfDoctor, ParamsListOfDoctorBuilder> {
  _$ParamsListOfDoctor? _$v;

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

  ParamsListOfDoctorBuilder();

  ParamsListOfDoctorBuilder get _$this {
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
  void replace(ParamsListOfDoctor other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ParamsListOfDoctor;
  }

  @override
  void update(void Function(ParamsListOfDoctorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ParamsListOfDoctor build() => _build();

  _$ParamsListOfDoctor _build() {
    final _$result = _$v ??
        new _$ParamsListOfDoctor._(
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

class _$DataListOfDoctor extends DataListOfDoctor {
  @override
  final BuiltList<ObjectNameOfSearch> list;
  @override
  final SearchListOfDoctor search;
  @override
  final PaginationListOfDoctor pagination;

  factory _$DataListOfDoctor(
          [void Function(DataListOfDoctorBuilder)? updates]) =>
      (new DataListOfDoctorBuilder()..update(updates))._build();

  _$DataListOfDoctor._(
      {required this.list, required this.search, required this.pagination})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(list, r'DataListOfDoctor', 'list');
    BuiltValueNullFieldError.checkNotNull(
        search, r'DataListOfDoctor', 'search');
    BuiltValueNullFieldError.checkNotNull(
        pagination, r'DataListOfDoctor', 'pagination');
  }

  @override
  DataListOfDoctor rebuild(void Function(DataListOfDoctorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DataListOfDoctorBuilder toBuilder() =>
      new DataListOfDoctorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DataListOfDoctor &&
        list == other.list &&
        search == other.search &&
        pagination == other.pagination;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, list.hashCode);
    _$hash = $jc(_$hash, search.hashCode);
    _$hash = $jc(_$hash, pagination.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DataListOfDoctor')
          ..add('list', list)
          ..add('search', search)
          ..add('pagination', pagination))
        .toString();
  }
}

class DataListOfDoctorBuilder
    implements Builder<DataListOfDoctor, DataListOfDoctorBuilder> {
  _$DataListOfDoctor? _$v;

  ListBuilder<ObjectNameOfSearch>? _list;
  ListBuilder<ObjectNameOfSearch> get list =>
      _$this._list ??= new ListBuilder<ObjectNameOfSearch>();
  set list(ListBuilder<ObjectNameOfSearch>? list) => _$this._list = list;

  SearchListOfDoctorBuilder? _search;
  SearchListOfDoctorBuilder get search =>
      _$this._search ??= new SearchListOfDoctorBuilder();
  set search(SearchListOfDoctorBuilder? search) => _$this._search = search;

  PaginationListOfDoctorBuilder? _pagination;
  PaginationListOfDoctorBuilder get pagination =>
      _$this._pagination ??= new PaginationListOfDoctorBuilder();
  set pagination(PaginationListOfDoctorBuilder? pagination) =>
      _$this._pagination = pagination;

  DataListOfDoctorBuilder();

  DataListOfDoctorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _list = $v.list.toBuilder();
      _search = $v.search.toBuilder();
      _pagination = $v.pagination.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DataListOfDoctor other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DataListOfDoctor;
  }

  @override
  void update(void Function(DataListOfDoctorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DataListOfDoctor build() => _build();

  _$DataListOfDoctor _build() {
    _$DataListOfDoctor _$result;
    try {
      _$result = _$v ??
          new _$DataListOfDoctor._(
              list: list.build(),
              search: search.build(),
              pagination: pagination.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'list';
        list.build();
        _$failedField = 'search';
        search.build();
        _$failedField = 'pagination';
        pagination.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DataListOfDoctor', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$SearchListOfDoctor extends SearchListOfDoctor {
  @override
  final String ville;
  @override
  final String villeId;
  @override
  final String nom;
  @override
  final String nomId;
  @override
  final String gpsLat;
  @override
  final String gpsLng;

  factory _$SearchListOfDoctor(
          [void Function(SearchListOfDoctorBuilder)? updates]) =>
      (new SearchListOfDoctorBuilder()..update(updates))._build();

  _$SearchListOfDoctor._(
      {required this.ville,
      required this.villeId,
      required this.nom,
      required this.nomId,
      required this.gpsLat,
      required this.gpsLng})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        ville, r'SearchListOfDoctor', 'ville');
    BuiltValueNullFieldError.checkNotNull(
        villeId, r'SearchListOfDoctor', 'villeId');
    BuiltValueNullFieldError.checkNotNull(nom, r'SearchListOfDoctor', 'nom');
    BuiltValueNullFieldError.checkNotNull(
        nomId, r'SearchListOfDoctor', 'nomId');
    BuiltValueNullFieldError.checkNotNull(
        gpsLat, r'SearchListOfDoctor', 'gpsLat');
    BuiltValueNullFieldError.checkNotNull(
        gpsLng, r'SearchListOfDoctor', 'gpsLng');
  }

  @override
  SearchListOfDoctor rebuild(
          void Function(SearchListOfDoctorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SearchListOfDoctorBuilder toBuilder() =>
      new SearchListOfDoctorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SearchListOfDoctor &&
        ville == other.ville &&
        villeId == other.villeId &&
        nom == other.nom &&
        nomId == other.nomId &&
        gpsLat == other.gpsLat &&
        gpsLng == other.gpsLng;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ville.hashCode);
    _$hash = $jc(_$hash, villeId.hashCode);
    _$hash = $jc(_$hash, nom.hashCode);
    _$hash = $jc(_$hash, nomId.hashCode);
    _$hash = $jc(_$hash, gpsLat.hashCode);
    _$hash = $jc(_$hash, gpsLng.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SearchListOfDoctor')
          ..add('ville', ville)
          ..add('villeId', villeId)
          ..add('nom', nom)
          ..add('nomId', nomId)
          ..add('gpsLat', gpsLat)
          ..add('gpsLng', gpsLng))
        .toString();
  }
}

class SearchListOfDoctorBuilder
    implements Builder<SearchListOfDoctor, SearchListOfDoctorBuilder> {
  _$SearchListOfDoctor? _$v;

  String? _ville;
  String? get ville => _$this._ville;
  set ville(String? ville) => _$this._ville = ville;

  String? _villeId;
  String? get villeId => _$this._villeId;
  set villeId(String? villeId) => _$this._villeId = villeId;

  String? _nom;
  String? get nom => _$this._nom;
  set nom(String? nom) => _$this._nom = nom;

  String? _nomId;
  String? get nomId => _$this._nomId;
  set nomId(String? nomId) => _$this._nomId = nomId;

  String? _gpsLat;
  String? get gpsLat => _$this._gpsLat;
  set gpsLat(String? gpsLat) => _$this._gpsLat = gpsLat;

  String? _gpsLng;
  String? get gpsLng => _$this._gpsLng;
  set gpsLng(String? gpsLng) => _$this._gpsLng = gpsLng;

  SearchListOfDoctorBuilder();

  SearchListOfDoctorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ville = $v.ville;
      _villeId = $v.villeId;
      _nom = $v.nom;
      _nomId = $v.nomId;
      _gpsLat = $v.gpsLat;
      _gpsLng = $v.gpsLng;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SearchListOfDoctor other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SearchListOfDoctor;
  }

  @override
  void update(void Function(SearchListOfDoctorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SearchListOfDoctor build() => _build();

  _$SearchListOfDoctor _build() {
    final _$result = _$v ??
        new _$SearchListOfDoctor._(
            ville: BuiltValueNullFieldError.checkNotNull(
                ville, r'SearchListOfDoctor', 'ville'),
            villeId: BuiltValueNullFieldError.checkNotNull(
                villeId, r'SearchListOfDoctor', 'villeId'),
            nom: BuiltValueNullFieldError.checkNotNull(
                nom, r'SearchListOfDoctor', 'nom'),
            nomId: BuiltValueNullFieldError.checkNotNull(
                nomId, r'SearchListOfDoctor', 'nomId'),
            gpsLat: BuiltValueNullFieldError.checkNotNull(
                gpsLat, r'SearchListOfDoctor', 'gpsLat'),
            gpsLng: BuiltValueNullFieldError.checkNotNull(
                gpsLng, r'SearchListOfDoctor', 'gpsLng'));
    replace(_$result);
    return _$result;
  }
}

class _$PaginationListOfDoctor extends PaginationListOfDoctor {
  @override
  final String result;
  @override
  final String current;
  @override
  final String maxpage;
  @override
  final String perpage;

  factory _$PaginationListOfDoctor(
          [void Function(PaginationListOfDoctorBuilder)? updates]) =>
      (new PaginationListOfDoctorBuilder()..update(updates))._build();

  _$PaginationListOfDoctor._(
      {required this.result,
      required this.current,
      required this.maxpage,
      required this.perpage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        result, r'PaginationListOfDoctor', 'result');
    BuiltValueNullFieldError.checkNotNull(
        current, r'PaginationListOfDoctor', 'current');
    BuiltValueNullFieldError.checkNotNull(
        maxpage, r'PaginationListOfDoctor', 'maxpage');
    BuiltValueNullFieldError.checkNotNull(
        perpage, r'PaginationListOfDoctor', 'perpage');
  }

  @override
  PaginationListOfDoctor rebuild(
          void Function(PaginationListOfDoctorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PaginationListOfDoctorBuilder toBuilder() =>
      new PaginationListOfDoctorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PaginationListOfDoctor &&
        result == other.result &&
        current == other.current &&
        maxpage == other.maxpage &&
        perpage == other.perpage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, result.hashCode);
    _$hash = $jc(_$hash, current.hashCode);
    _$hash = $jc(_$hash, maxpage.hashCode);
    _$hash = $jc(_$hash, perpage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PaginationListOfDoctor')
          ..add('result', result)
          ..add('current', current)
          ..add('maxpage', maxpage)
          ..add('perpage', perpage))
        .toString();
  }
}

class PaginationListOfDoctorBuilder
    implements Builder<PaginationListOfDoctor, PaginationListOfDoctorBuilder> {
  _$PaginationListOfDoctor? _$v;

  String? _result;
  String? get result => _$this._result;
  set result(String? result) => _$this._result = result;

  String? _current;
  String? get current => _$this._current;
  set current(String? current) => _$this._current = current;

  String? _maxpage;
  String? get maxpage => _$this._maxpage;
  set maxpage(String? maxpage) => _$this._maxpage = maxpage;

  String? _perpage;
  String? get perpage => _$this._perpage;
  set perpage(String? perpage) => _$this._perpage = perpage;

  PaginationListOfDoctorBuilder();

  PaginationListOfDoctorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _result = $v.result;
      _current = $v.current;
      _maxpage = $v.maxpage;
      _perpage = $v.perpage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PaginationListOfDoctor other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PaginationListOfDoctor;
  }

  @override
  void update(void Function(PaginationListOfDoctorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PaginationListOfDoctor build() => _build();

  _$PaginationListOfDoctor _build() {
    final _$result = _$v ??
        new _$PaginationListOfDoctor._(
            result: BuiltValueNullFieldError.checkNotNull(
                result, r'PaginationListOfDoctor', 'result'),
            current: BuiltValueNullFieldError.checkNotNull(
                current, r'PaginationListOfDoctor', 'current'),
            maxpage: BuiltValueNullFieldError.checkNotNull(
                maxpage, r'PaginationListOfDoctor', 'maxpage'),
            perpage: BuiltValueNullFieldError.checkNotNull(
                perpage, r'PaginationListOfDoctor', 'perpage'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
