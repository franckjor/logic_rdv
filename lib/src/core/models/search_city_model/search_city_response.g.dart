// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_city_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SearchCityResponse> _$searchCityResponseSerializer =
    new _$SearchCityResponseSerializer();
Serializer<ParamsSearchCityResponse> _$paramsSearchCityResponseSerializer =
    new _$ParamsSearchCityResponseSerializer();
Serializer<DataSearchCityResponse> _$dataSearchCityResponseSerializer =
    new _$DataSearchCityResponseSerializer();
Serializer<ClientInfosResponseSearchCity>
    _$clientInfosResponseSearchCitySerializer =
    new _$ClientInfosResponseSearchCitySerializer();

class _$SearchCityResponseSerializer
    implements StructuredSerializer<SearchCityResponse> {
  @override
  final Iterable<Type> types = const [SearchCityResponse, _$SearchCityResponse];
  @override
  final String wireName = 'SearchCityResponse';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, SearchCityResponse object,
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
          specifiedType: const FullType(ParamsSearchCityResponse)),
      'error',
      serializers.serialize(object.error,
          specifiedType: const FullType(String)),
      'message',
      serializers.serialize(object.message,
          specifiedType: const FullType(String)),
      'data',
      serializers.serialize(object.data,
          specifiedType: const FullType(DataSearchCityResponse)),
    ];

    return result;
  }

  @override
  SearchCityResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SearchCityResponseBuilder();

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
                  specifiedType: const FullType(ParamsSearchCityResponse))!
              as ParamsSearchCityResponse);
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
                  specifiedType: const FullType(DataSearchCityResponse))!
              as DataSearchCityResponse);
          break;
      }
    }

    return result.build();
  }
}

class _$ParamsSearchCityResponseSerializer
    implements StructuredSerializer<ParamsSearchCityResponse> {
  @override
  final Iterable<Type> types = const [
    ParamsSearchCityResponse,
    _$ParamsSearchCityResponse
  ];
  @override
  final String wireName = 'ParamsSearchCityResponse';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, ParamsSearchCityResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'kind',
      serializers.serialize(object.kind, specifiedType: const FullType(String)),
      'proxy_istelecons',
      serializers.serialize(object.proxyIstelecons,
          specifiedType: const FullType(String)),
      'term',
      serializers.serialize(object.term, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  ParamsSearchCityResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ParamsSearchCityResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'kind':
          result.kind = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'proxy_istelecons':
          result.proxyIstelecons = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'term':
          result.term = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$DataSearchCityResponseSerializer
    implements StructuredSerializer<DataSearchCityResponse> {
  @override
  final Iterable<Type> types = const [
    DataSearchCityResponse,
    _$DataSearchCityResponse
  ];
  @override
  final String wireName = 'DataSearchCityResponse';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, DataSearchCityResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'kind',
      serializers.serialize(object.kind, specifiedType: const FullType(String)),
      'proxy_istelecons',
      serializers.serialize(object.proxyIstelecons,
          specifiedType: const FullType(String)),
      'term',
      serializers.serialize(object.term, specifiedType: const FullType(String)),
      'api',
      serializers.serialize(object.api, specifiedType: const FullType(String)),
      'list',
      serializers.serialize(object.list,
          specifiedType: const FullType(BuiltList,
              const [const FullType(ClientInfosResponseSearchCity)])),
    ];

    return result;
  }

  @override
  DataSearchCityResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DataSearchCityResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'kind':
          result.kind = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'proxy_istelecons':
          result.proxyIstelecons = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'term':
          result.term = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'api':
          result.api = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'list':
          result.list.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(ClientInfosResponseSearchCity)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$ClientInfosResponseSearchCitySerializer
    implements StructuredSerializer<ClientInfosResponseSearchCity> {
  @override
  final Iterable<Type> types = const [
    ClientInfosResponseSearchCity,
    _$ClientInfosResponseSearchCity
  ];
  @override
  final String wireName = 'ClientInfosResponseSearchCity';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, ClientInfosResponseSearchCity object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'clientinfos',
      serializers.serialize(object.clientinfos,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  ClientInfosResponseSearchCity deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ClientInfosResponseSearchCityBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'clientinfos':
          result.clientinfos = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$SearchCityResponse extends SearchCityResponse {
  @override
  final int httpstatut;
  @override
  final String version;
  @override
  final String request;
  @override
  final ParamsSearchCityResponse params;
  @override
  final String error;
  @override
  final String message;
  @override
  final DataSearchCityResponse data;

  factory _$SearchCityResponse(
          [void Function(SearchCityResponseBuilder)? updates]) =>
      (new SearchCityResponseBuilder()..update(updates))._build();

  _$SearchCityResponse._(
      {required this.httpstatut,
      required this.version,
      required this.request,
      required this.params,
      required this.error,
      required this.message,
      required this.data})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        httpstatut, r'SearchCityResponse', 'httpstatut');
    BuiltValueNullFieldError.checkNotNull(
        version, r'SearchCityResponse', 'version');
    BuiltValueNullFieldError.checkNotNull(
        request, r'SearchCityResponse', 'request');
    BuiltValueNullFieldError.checkNotNull(
        params, r'SearchCityResponse', 'params');
    BuiltValueNullFieldError.checkNotNull(
        error, r'SearchCityResponse', 'error');
    BuiltValueNullFieldError.checkNotNull(
        message, r'SearchCityResponse', 'message');
    BuiltValueNullFieldError.checkNotNull(data, r'SearchCityResponse', 'data');
  }

  @override
  SearchCityResponse rebuild(
          void Function(SearchCityResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SearchCityResponseBuilder toBuilder() =>
      new SearchCityResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SearchCityResponse &&
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
    return (newBuiltValueToStringHelper(r'SearchCityResponse')
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

class SearchCityResponseBuilder
    implements Builder<SearchCityResponse, SearchCityResponseBuilder> {
  _$SearchCityResponse? _$v;

  int? _httpstatut;
  int? get httpstatut => _$this._httpstatut;
  set httpstatut(int? httpstatut) => _$this._httpstatut = httpstatut;

  String? _version;
  String? get version => _$this._version;
  set version(String? version) => _$this._version = version;

  String? _request;
  String? get request => _$this._request;
  set request(String? request) => _$this._request = request;

  ParamsSearchCityResponseBuilder? _params;
  ParamsSearchCityResponseBuilder get params =>
      _$this._params ??= new ParamsSearchCityResponseBuilder();
  set params(ParamsSearchCityResponseBuilder? params) =>
      _$this._params = params;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  DataSearchCityResponseBuilder? _data;
  DataSearchCityResponseBuilder get data =>
      _$this._data ??= new DataSearchCityResponseBuilder();
  set data(DataSearchCityResponseBuilder? data) => _$this._data = data;

  SearchCityResponseBuilder();

  SearchCityResponseBuilder get _$this {
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
  void replace(SearchCityResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SearchCityResponse;
  }

  @override
  void update(void Function(SearchCityResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SearchCityResponse build() => _build();

  _$SearchCityResponse _build() {
    _$SearchCityResponse _$result;
    try {
      _$result = _$v ??
          new _$SearchCityResponse._(
              httpstatut: BuiltValueNullFieldError.checkNotNull(
                  httpstatut, r'SearchCityResponse', 'httpstatut'),
              version: BuiltValueNullFieldError.checkNotNull(
                  version, r'SearchCityResponse', 'version'),
              request: BuiltValueNullFieldError.checkNotNull(
                  request, r'SearchCityResponse', 'request'),
              params: params.build(),
              error: BuiltValueNullFieldError.checkNotNull(
                  error, r'SearchCityResponse', 'error'),
              message: BuiltValueNullFieldError.checkNotNull(
                  message, r'SearchCityResponse', 'message'),
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
            r'SearchCityResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$ParamsSearchCityResponse extends ParamsSearchCityResponse {
  @override
  final String kind;
  @override
  final String proxyIstelecons;
  @override
  final String term;

  factory _$ParamsSearchCityResponse(
          [void Function(ParamsSearchCityResponseBuilder)? updates]) =>
      (new ParamsSearchCityResponseBuilder()..update(updates))._build();

  _$ParamsSearchCityResponse._(
      {required this.kind, required this.proxyIstelecons, required this.term})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        kind, r'ParamsSearchCityResponse', 'kind');
    BuiltValueNullFieldError.checkNotNull(
        proxyIstelecons, r'ParamsSearchCityResponse', 'proxyIstelecons');
    BuiltValueNullFieldError.checkNotNull(
        term, r'ParamsSearchCityResponse', 'term');
  }

  @override
  ParamsSearchCityResponse rebuild(
          void Function(ParamsSearchCityResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ParamsSearchCityResponseBuilder toBuilder() =>
      new ParamsSearchCityResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ParamsSearchCityResponse &&
        kind == other.kind &&
        proxyIstelecons == other.proxyIstelecons &&
        term == other.term;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, kind.hashCode);
    _$hash = $jc(_$hash, proxyIstelecons.hashCode);
    _$hash = $jc(_$hash, term.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ParamsSearchCityResponse')
          ..add('kind', kind)
          ..add('proxyIstelecons', proxyIstelecons)
          ..add('term', term))
        .toString();
  }
}

class ParamsSearchCityResponseBuilder
    implements
        Builder<ParamsSearchCityResponse, ParamsSearchCityResponseBuilder> {
  _$ParamsSearchCityResponse? _$v;

  String? _kind;
  String? get kind => _$this._kind;
  set kind(String? kind) => _$this._kind = kind;

  String? _proxyIstelecons;
  String? get proxyIstelecons => _$this._proxyIstelecons;
  set proxyIstelecons(String? proxyIstelecons) =>
      _$this._proxyIstelecons = proxyIstelecons;

  String? _term;
  String? get term => _$this._term;
  set term(String? term) => _$this._term = term;

  ParamsSearchCityResponseBuilder();

  ParamsSearchCityResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _kind = $v.kind;
      _proxyIstelecons = $v.proxyIstelecons;
      _term = $v.term;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ParamsSearchCityResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ParamsSearchCityResponse;
  }

  @override
  void update(void Function(ParamsSearchCityResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ParamsSearchCityResponse build() => _build();

  _$ParamsSearchCityResponse _build() {
    final _$result = _$v ??
        new _$ParamsSearchCityResponse._(
            kind: BuiltValueNullFieldError.checkNotNull(
                kind, r'ParamsSearchCityResponse', 'kind'),
            proxyIstelecons: BuiltValueNullFieldError.checkNotNull(
                proxyIstelecons,
                r'ParamsSearchCityResponse',
                'proxyIstelecons'),
            term: BuiltValueNullFieldError.checkNotNull(
                term, r'ParamsSearchCityResponse', 'term'));
    replace(_$result);
    return _$result;
  }
}

class _$DataSearchCityResponse extends DataSearchCityResponse {
  @override
  final String kind;
  @override
  final String proxyIstelecons;
  @override
  final String term;
  @override
  final String api;
  @override
  final BuiltList<ClientInfosResponseSearchCity> list;

  factory _$DataSearchCityResponse(
          [void Function(DataSearchCityResponseBuilder)? updates]) =>
      (new DataSearchCityResponseBuilder()..update(updates))._build();

  _$DataSearchCityResponse._(
      {required this.kind,
      required this.proxyIstelecons,
      required this.term,
      required this.api,
      required this.list})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        kind, r'DataSearchCityResponse', 'kind');
    BuiltValueNullFieldError.checkNotNull(
        proxyIstelecons, r'DataSearchCityResponse', 'proxyIstelecons');
    BuiltValueNullFieldError.checkNotNull(
        term, r'DataSearchCityResponse', 'term');
    BuiltValueNullFieldError.checkNotNull(
        api, r'DataSearchCityResponse', 'api');
    BuiltValueNullFieldError.checkNotNull(
        list, r'DataSearchCityResponse', 'list');
  }

  @override
  DataSearchCityResponse rebuild(
          void Function(DataSearchCityResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DataSearchCityResponseBuilder toBuilder() =>
      new DataSearchCityResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DataSearchCityResponse &&
        kind == other.kind &&
        proxyIstelecons == other.proxyIstelecons &&
        term == other.term &&
        api == other.api &&
        list == other.list;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, kind.hashCode);
    _$hash = $jc(_$hash, proxyIstelecons.hashCode);
    _$hash = $jc(_$hash, term.hashCode);
    _$hash = $jc(_$hash, api.hashCode);
    _$hash = $jc(_$hash, list.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DataSearchCityResponse')
          ..add('kind', kind)
          ..add('proxyIstelecons', proxyIstelecons)
          ..add('term', term)
          ..add('api', api)
          ..add('list', list))
        .toString();
  }
}

class DataSearchCityResponseBuilder
    implements Builder<DataSearchCityResponse, DataSearchCityResponseBuilder> {
  _$DataSearchCityResponse? _$v;

  String? _kind;
  String? get kind => _$this._kind;
  set kind(String? kind) => _$this._kind = kind;

  String? _proxyIstelecons;
  String? get proxyIstelecons => _$this._proxyIstelecons;
  set proxyIstelecons(String? proxyIstelecons) =>
      _$this._proxyIstelecons = proxyIstelecons;

  String? _term;
  String? get term => _$this._term;
  set term(String? term) => _$this._term = term;

  String? _api;
  String? get api => _$this._api;
  set api(String? api) => _$this._api = api;

  ListBuilder<ClientInfosResponseSearchCity>? _list;
  ListBuilder<ClientInfosResponseSearchCity> get list =>
      _$this._list ??= new ListBuilder<ClientInfosResponseSearchCity>();
  set list(ListBuilder<ClientInfosResponseSearchCity>? list) =>
      _$this._list = list;

  DataSearchCityResponseBuilder();

  DataSearchCityResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _kind = $v.kind;
      _proxyIstelecons = $v.proxyIstelecons;
      _term = $v.term;
      _api = $v.api;
      _list = $v.list.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DataSearchCityResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DataSearchCityResponse;
  }

  @override
  void update(void Function(DataSearchCityResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DataSearchCityResponse build() => _build();

  _$DataSearchCityResponse _build() {
    _$DataSearchCityResponse _$result;
    try {
      _$result = _$v ??
          new _$DataSearchCityResponse._(
              kind: BuiltValueNullFieldError.checkNotNull(
                  kind, r'DataSearchCityResponse', 'kind'),
              proxyIstelecons: BuiltValueNullFieldError.checkNotNull(
                  proxyIstelecons,
                  r'DataSearchCityResponse',
                  'proxyIstelecons'),
              term: BuiltValueNullFieldError.checkNotNull(
                  term, r'DataSearchCityResponse', 'term'),
              api: BuiltValueNullFieldError.checkNotNull(
                  api, r'DataSearchCityResponse', 'api'),
              list: list.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'list';
        list.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DataSearchCityResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$ClientInfosResponseSearchCity extends ClientInfosResponseSearchCity {
  @override
  final String id;
  @override
  final String clientinfos;

  factory _$ClientInfosResponseSearchCity(
          [void Function(ClientInfosResponseSearchCityBuilder)? updates]) =>
      (new ClientInfosResponseSearchCityBuilder()..update(updates))._build();

  _$ClientInfosResponseSearchCity._(
      {required this.id, required this.clientinfos})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        id, r'ClientInfosResponseSearchCity', 'id');
    BuiltValueNullFieldError.checkNotNull(
        clientinfos, r'ClientInfosResponseSearchCity', 'clientinfos');
  }

  @override
  ClientInfosResponseSearchCity rebuild(
          void Function(ClientInfosResponseSearchCityBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ClientInfosResponseSearchCityBuilder toBuilder() =>
      new ClientInfosResponseSearchCityBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ClientInfosResponseSearchCity &&
        id == other.id &&
        clientinfos == other.clientinfos;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, clientinfos.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ClientInfosResponseSearchCity')
          ..add('id', id)
          ..add('clientinfos', clientinfos))
        .toString();
  }
}

class ClientInfosResponseSearchCityBuilder
    implements
        Builder<ClientInfosResponseSearchCity,
            ClientInfosResponseSearchCityBuilder> {
  _$ClientInfosResponseSearchCity? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _clientinfos;
  String? get clientinfos => _$this._clientinfos;
  set clientinfos(String? clientinfos) => _$this._clientinfos = clientinfos;

  ClientInfosResponseSearchCityBuilder();

  ClientInfosResponseSearchCityBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _clientinfos = $v.clientinfos;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ClientInfosResponseSearchCity other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ClientInfosResponseSearchCity;
  }

  @override
  void update(void Function(ClientInfosResponseSearchCityBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ClientInfosResponseSearchCity build() => _build();

  _$ClientInfosResponseSearchCity _build() {
    final _$result = _$v ??
        new _$ClientInfosResponseSearchCity._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'ClientInfosResponseSearchCity', 'id'),
            clientinfos: BuiltValueNullFieldError.checkNotNull(
                clientinfos, r'ClientInfosResponseSearchCity', 'clientinfos'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
