// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_name_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SearchNameResponse> _$searchNameResponseSerializer =
    new _$SearchNameResponseSerializer();
Serializer<ParamsSearchNameResponse> _$paramsSearchNameResponseSerializer =
    new _$ParamsSearchNameResponseSerializer();
Serializer<DataSearchNameResponse> _$dataSearchNameResponseSerializer =
    new _$DataSearchNameResponseSerializer();
Serializer<ObjectNameOfSearch> _$objectNameOfSearchSerializer =
    new _$ObjectNameOfSearchSerializer();
Serializer<AppointmentSearchNameResponse>
    _$appointmentSearchNameResponseSerializer =
    new _$AppointmentSearchNameResponseSerializer();

class _$SearchNameResponseSerializer
    implements StructuredSerializer<SearchNameResponse> {
  @override
  final Iterable<Type> types = const [SearchNameResponse, _$SearchNameResponse];
  @override
  final String wireName = 'SearchNameResponse';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, SearchNameResponse object,
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
          specifiedType: const FullType(ParamsSearchNameResponse)),
      'error',
      serializers.serialize(object.error,
          specifiedType: const FullType(String)),
      'message',
      serializers.serialize(object.message,
          specifiedType: const FullType(String)),
      'data',
      serializers.serialize(object.data,
          specifiedType: const FullType(DataSearchNameResponse)),
    ];

    return result;
  }

  @override
  SearchNameResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SearchNameResponseBuilder();

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
                  specifiedType: const FullType(ParamsSearchNameResponse))!
              as ParamsSearchNameResponse);
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
                  specifiedType: const FullType(DataSearchNameResponse))!
              as DataSearchNameResponse);
          break;
      }
    }

    return result.build();
  }
}

class _$ParamsSearchNameResponseSerializer
    implements StructuredSerializer<ParamsSearchNameResponse> {
  @override
  final Iterable<Type> types = const [
    ParamsSearchNameResponse,
    _$ParamsSearchNameResponse
  ];
  @override
  final String wireName = 'ParamsSearchNameResponse';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, ParamsSearchNameResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'kind',
      serializers.serialize(object.kind, specifiedType: const FullType(String)),
      'cp',
      serializers.serialize(object.cp, specifiedType: const FullType(String)),
      'proxy_istelecons',
      serializers.serialize(object.proxyIstelecons,
          specifiedType: const FullType(String)),
      'term',
      serializers.serialize(object.term, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  ParamsSearchNameResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ParamsSearchNameResponseBuilder();

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
        case 'cp':
          result.cp = serializers.deserialize(value,
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

class _$DataSearchNameResponseSerializer
    implements StructuredSerializer<DataSearchNameResponse> {
  @override
  final Iterable<Type> types = const [
    DataSearchNameResponse,
    _$DataSearchNameResponse
  ];
  @override
  final String wireName = 'DataSearchNameResponse';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, DataSearchNameResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'kind',
      serializers.serialize(object.kind, specifiedType: const FullType(String)),
      'cp',
      serializers.serialize(object.cp, specifiedType: const FullType(String)),
      'proxy_istelecons',
      serializers.serialize(object.proxyIstelecons,
          specifiedType: const FullType(String)),
      'term',
      serializers.serialize(object.term, specifiedType: const FullType(String)),
      'api',
      serializers.serialize(object.api, specifiedType: const FullType(String)),
      'list',
      serializers.serialize(object.list,
          specifiedType: const FullType(
              BuiltList, const [const FullType(ObjectNameOfSearch)])),
    ];

    return result;
  }

  @override
  DataSearchNameResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DataSearchNameResponseBuilder();

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
        case 'cp':
          result.cp = serializers.deserialize(value,
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
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(ObjectNameOfSearch)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$ObjectNameOfSearchSerializer
    implements StructuredSerializer<ObjectNameOfSearch> {
  @override
  final Iterable<Type> types = const [ObjectNameOfSearch, _$ObjectNameOfSearch];
  @override
  final String wireName = 'ObjectNameOfSearch';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, ObjectNameOfSearch object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'appointment',
      serializers.serialize(object.appointment,
          specifiedType: const FullType(AppointmentSearchNameResponse)),
    ];
    Object? value;
    value = object.nom;
    if (value != null) {
      result
        ..add('nom')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.prenom;
    if (value != null) {
      result
        ..add('prenom')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.idCity;
    if (value != null) {
      result
        ..add('id_city')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.kmDiff;
    if (value != null) {
      result
        ..add('km_diff')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.address;
    if (value != null) {
      result
        ..add('address')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.zip;
    if (value != null) {
      result
        ..add('zip')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.city;
    if (value != null) {
      result
        ..add('city')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.category;
    if (value != null) {
      result
        ..add('category')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.tel;
    if (value != null) {
      result
        ..add('tel')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.telnospace;
    if (value != null) {
      result
        ..add('telnospace')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.lat;
    if (value != null) {
      result
        ..add('lat')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.lng;
    if (value != null) {
      result
        ..add('lng')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.icon;
    if (value != null) {
      result
        ..add('icon')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.idCategory;
    if (value != null) {
      result
        ..add('id_category')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.idAgenda;
    if (value != null) {
      result
        ..add('id_agenda')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.civility;
    if (value != null) {
      result
        ..add('civility')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isOther;
    if (value != null) {
      result
        ..add('isother')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ObjectNameOfSearch deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ObjectNameOfSearchBuilder();

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
        case 'nom':
          result.nom = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'prenom':
          result.prenom = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'id_city':
          result.idCity = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'km_diff':
          result.kmDiff = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'address':
          result.address = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'zip':
          result.zip = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'city':
          result.city = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'category':
          result.category = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'tel':
          result.tel = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'telnospace':
          result.telnospace = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'lat':
          result.lat = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'lng':
          result.lng = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'icon':
          result.icon = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'id_category':
          result.idCategory = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'id_agenda':
          result.idAgenda = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'civility':
          result.civility = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'isother':
          result.isOther = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'appointment':
          result.appointment.replace(serializers.deserialize(value,
                  specifiedType: const FullType(AppointmentSearchNameResponse))!
              as AppointmentSearchNameResponse);
          break;
      }
    }

    return result.build();
  }
}

class _$AppointmentSearchNameResponseSerializer
    implements StructuredSerializer<AppointmentSearchNameResponse> {
  @override
  final Iterable<Type> types = const [
    AppointmentSearchNameResponse,
    _$AppointmentSearchNameResponse
  ];
  @override
  final String wireName = 'AppointmentSearchNameResponse';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, AppointmentSearchNameResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.token;
    if (value != null) {
      result
        ..add('token')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  AppointmentSearchNameResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AppointmentSearchNameResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'token':
          result.token = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$SearchNameResponse extends SearchNameResponse {
  @override
  final int httpstatut;
  @override
  final String version;
  @override
  final String request;
  @override
  final ParamsSearchNameResponse params;
  @override
  final String error;
  @override
  final String message;
  @override
  final DataSearchNameResponse data;

  factory _$SearchNameResponse(
          [void Function(SearchNameResponseBuilder)? updates]) =>
      (new SearchNameResponseBuilder()..update(updates))._build();

  _$SearchNameResponse._(
      {required this.httpstatut,
      required this.version,
      required this.request,
      required this.params,
      required this.error,
      required this.message,
      required this.data})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        httpstatut, r'SearchNameResponse', 'httpstatut');
    BuiltValueNullFieldError.checkNotNull(
        version, r'SearchNameResponse', 'version');
    BuiltValueNullFieldError.checkNotNull(
        request, r'SearchNameResponse', 'request');
    BuiltValueNullFieldError.checkNotNull(
        params, r'SearchNameResponse', 'params');
    BuiltValueNullFieldError.checkNotNull(
        error, r'SearchNameResponse', 'error');
    BuiltValueNullFieldError.checkNotNull(
        message, r'SearchNameResponse', 'message');
    BuiltValueNullFieldError.checkNotNull(data, r'SearchNameResponse', 'data');
  }

  @override
  SearchNameResponse rebuild(
          void Function(SearchNameResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SearchNameResponseBuilder toBuilder() =>
      new SearchNameResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SearchNameResponse &&
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
    return (newBuiltValueToStringHelper(r'SearchNameResponse')
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

class SearchNameResponseBuilder
    implements Builder<SearchNameResponse, SearchNameResponseBuilder> {
  _$SearchNameResponse? _$v;

  int? _httpstatut;
  int? get httpstatut => _$this._httpstatut;
  set httpstatut(int? httpstatut) => _$this._httpstatut = httpstatut;

  String? _version;
  String? get version => _$this._version;
  set version(String? version) => _$this._version = version;

  String? _request;
  String? get request => _$this._request;
  set request(String? request) => _$this._request = request;

  ParamsSearchNameResponseBuilder? _params;
  ParamsSearchNameResponseBuilder get params =>
      _$this._params ??= new ParamsSearchNameResponseBuilder();
  set params(ParamsSearchNameResponseBuilder? params) =>
      _$this._params = params;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  DataSearchNameResponseBuilder? _data;
  DataSearchNameResponseBuilder get data =>
      _$this._data ??= new DataSearchNameResponseBuilder();
  set data(DataSearchNameResponseBuilder? data) => _$this._data = data;

  SearchNameResponseBuilder();

  SearchNameResponseBuilder get _$this {
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
  void replace(SearchNameResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SearchNameResponse;
  }

  @override
  void update(void Function(SearchNameResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SearchNameResponse build() => _build();

  _$SearchNameResponse _build() {
    _$SearchNameResponse _$result;
    try {
      _$result = _$v ??
          new _$SearchNameResponse._(
              httpstatut: BuiltValueNullFieldError.checkNotNull(
                  httpstatut, r'SearchNameResponse', 'httpstatut'),
              version: BuiltValueNullFieldError.checkNotNull(
                  version, r'SearchNameResponse', 'version'),
              request: BuiltValueNullFieldError.checkNotNull(
                  request, r'SearchNameResponse', 'request'),
              params: params.build(),
              error: BuiltValueNullFieldError.checkNotNull(
                  error, r'SearchNameResponse', 'error'),
              message: BuiltValueNullFieldError.checkNotNull(
                  message, r'SearchNameResponse', 'message'),
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
            r'SearchNameResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$ParamsSearchNameResponse extends ParamsSearchNameResponse {
  @override
  final String kind;
  @override
  final String cp;
  @override
  final String proxyIstelecons;
  @override
  final String term;

  factory _$ParamsSearchNameResponse(
          [void Function(ParamsSearchNameResponseBuilder)? updates]) =>
      (new ParamsSearchNameResponseBuilder()..update(updates))._build();

  _$ParamsSearchNameResponse._(
      {required this.kind,
      required this.cp,
      required this.proxyIstelecons,
      required this.term})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        kind, r'ParamsSearchNameResponse', 'kind');
    BuiltValueNullFieldError.checkNotNull(
        cp, r'ParamsSearchNameResponse', 'cp');
    BuiltValueNullFieldError.checkNotNull(
        proxyIstelecons, r'ParamsSearchNameResponse', 'proxyIstelecons');
    BuiltValueNullFieldError.checkNotNull(
        term, r'ParamsSearchNameResponse', 'term');
  }

  @override
  ParamsSearchNameResponse rebuild(
          void Function(ParamsSearchNameResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ParamsSearchNameResponseBuilder toBuilder() =>
      new ParamsSearchNameResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ParamsSearchNameResponse &&
        kind == other.kind &&
        cp == other.cp &&
        proxyIstelecons == other.proxyIstelecons &&
        term == other.term;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, kind.hashCode);
    _$hash = $jc(_$hash, cp.hashCode);
    _$hash = $jc(_$hash, proxyIstelecons.hashCode);
    _$hash = $jc(_$hash, term.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ParamsSearchNameResponse')
          ..add('kind', kind)
          ..add('cp', cp)
          ..add('proxyIstelecons', proxyIstelecons)
          ..add('term', term))
        .toString();
  }
}

class ParamsSearchNameResponseBuilder
    implements
        Builder<ParamsSearchNameResponse, ParamsSearchNameResponseBuilder> {
  _$ParamsSearchNameResponse? _$v;

  String? _kind;
  String? get kind => _$this._kind;
  set kind(String? kind) => _$this._kind = kind;

  String? _cp;
  String? get cp => _$this._cp;
  set cp(String? cp) => _$this._cp = cp;

  String? _proxyIstelecons;
  String? get proxyIstelecons => _$this._proxyIstelecons;
  set proxyIstelecons(String? proxyIstelecons) =>
      _$this._proxyIstelecons = proxyIstelecons;

  String? _term;
  String? get term => _$this._term;
  set term(String? term) => _$this._term = term;

  ParamsSearchNameResponseBuilder();

  ParamsSearchNameResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _kind = $v.kind;
      _cp = $v.cp;
      _proxyIstelecons = $v.proxyIstelecons;
      _term = $v.term;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ParamsSearchNameResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ParamsSearchNameResponse;
  }

  @override
  void update(void Function(ParamsSearchNameResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ParamsSearchNameResponse build() => _build();

  _$ParamsSearchNameResponse _build() {
    final _$result = _$v ??
        new _$ParamsSearchNameResponse._(
            kind: BuiltValueNullFieldError.checkNotNull(
                kind, r'ParamsSearchNameResponse', 'kind'),
            cp: BuiltValueNullFieldError.checkNotNull(
                cp, r'ParamsSearchNameResponse', 'cp'),
            proxyIstelecons: BuiltValueNullFieldError.checkNotNull(
                proxyIstelecons,
                r'ParamsSearchNameResponse',
                'proxyIstelecons'),
            term: BuiltValueNullFieldError.checkNotNull(
                term, r'ParamsSearchNameResponse', 'term'));
    replace(_$result);
    return _$result;
  }
}

class _$DataSearchNameResponse extends DataSearchNameResponse {
  @override
  final String kind;
  @override
  final String cp;
  @override
  final String proxyIstelecons;
  @override
  final String term;
  @override
  final String api;
  @override
  final BuiltList<ObjectNameOfSearch> list;

  factory _$DataSearchNameResponse(
          [void Function(DataSearchNameResponseBuilder)? updates]) =>
      (new DataSearchNameResponseBuilder()..update(updates))._build();

  _$DataSearchNameResponse._(
      {required this.kind,
      required this.cp,
      required this.proxyIstelecons,
      required this.term,
      required this.api,
      required this.list})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        kind, r'DataSearchNameResponse', 'kind');
    BuiltValueNullFieldError.checkNotNull(cp, r'DataSearchNameResponse', 'cp');
    BuiltValueNullFieldError.checkNotNull(
        proxyIstelecons, r'DataSearchNameResponse', 'proxyIstelecons');
    BuiltValueNullFieldError.checkNotNull(
        term, r'DataSearchNameResponse', 'term');
    BuiltValueNullFieldError.checkNotNull(
        api, r'DataSearchNameResponse', 'api');
    BuiltValueNullFieldError.checkNotNull(
        list, r'DataSearchNameResponse', 'list');
  }

  @override
  DataSearchNameResponse rebuild(
          void Function(DataSearchNameResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DataSearchNameResponseBuilder toBuilder() =>
      new DataSearchNameResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DataSearchNameResponse &&
        kind == other.kind &&
        cp == other.cp &&
        proxyIstelecons == other.proxyIstelecons &&
        term == other.term &&
        api == other.api &&
        list == other.list;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, kind.hashCode);
    _$hash = $jc(_$hash, cp.hashCode);
    _$hash = $jc(_$hash, proxyIstelecons.hashCode);
    _$hash = $jc(_$hash, term.hashCode);
    _$hash = $jc(_$hash, api.hashCode);
    _$hash = $jc(_$hash, list.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DataSearchNameResponse')
          ..add('kind', kind)
          ..add('cp', cp)
          ..add('proxyIstelecons', proxyIstelecons)
          ..add('term', term)
          ..add('api', api)
          ..add('list', list))
        .toString();
  }
}

class DataSearchNameResponseBuilder
    implements Builder<DataSearchNameResponse, DataSearchNameResponseBuilder> {
  _$DataSearchNameResponse? _$v;

  String? _kind;
  String? get kind => _$this._kind;
  set kind(String? kind) => _$this._kind = kind;

  String? _cp;
  String? get cp => _$this._cp;
  set cp(String? cp) => _$this._cp = cp;

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

  ListBuilder<ObjectNameOfSearch>? _list;
  ListBuilder<ObjectNameOfSearch> get list =>
      _$this._list ??= new ListBuilder<ObjectNameOfSearch>();
  set list(ListBuilder<ObjectNameOfSearch>? list) => _$this._list = list;

  DataSearchNameResponseBuilder();

  DataSearchNameResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _kind = $v.kind;
      _cp = $v.cp;
      _proxyIstelecons = $v.proxyIstelecons;
      _term = $v.term;
      _api = $v.api;
      _list = $v.list.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DataSearchNameResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DataSearchNameResponse;
  }

  @override
  void update(void Function(DataSearchNameResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DataSearchNameResponse build() => _build();

  _$DataSearchNameResponse _build() {
    _$DataSearchNameResponse _$result;
    try {
      _$result = _$v ??
          new _$DataSearchNameResponse._(
              kind: BuiltValueNullFieldError.checkNotNull(
                  kind, r'DataSearchNameResponse', 'kind'),
              cp: BuiltValueNullFieldError.checkNotNull(
                  cp, r'DataSearchNameResponse', 'cp'),
              proxyIstelecons: BuiltValueNullFieldError.checkNotNull(
                  proxyIstelecons,
                  r'DataSearchNameResponse',
                  'proxyIstelecons'),
              term: BuiltValueNullFieldError.checkNotNull(
                  term, r'DataSearchNameResponse', 'term'),
              api: BuiltValueNullFieldError.checkNotNull(
                  api, r'DataSearchNameResponse', 'api'),
              list: list.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'list';
        list.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DataSearchNameResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$ObjectNameOfSearch extends ObjectNameOfSearch {
  @override
  final String id;
  @override
  final String? nom;
  @override
  final String? prenom;
  @override
  final String? idCity;
  @override
  final String? kmDiff;
  @override
  final String? address;
  @override
  final String? zip;
  @override
  final String? city;
  @override
  final String? category;
  @override
  final String? tel;
  @override
  final String? telnospace;
  @override
  final String? lat;
  @override
  final String? lng;
  @override
  final String? icon;
  @override
  final String? idCategory;
  @override
  final String? idAgenda;
  @override
  final String? civility;
  @override
  final String? isOther;
  @override
  final AppointmentSearchNameResponse appointment;

  factory _$ObjectNameOfSearch(
          [void Function(ObjectNameOfSearchBuilder)? updates]) =>
      (new ObjectNameOfSearchBuilder()..update(updates))._build();

  _$ObjectNameOfSearch._(
      {required this.id,
      this.nom,
      this.prenom,
      this.idCity,
      this.kmDiff,
      this.address,
      this.zip,
      this.city,
      this.category,
      this.tel,
      this.telnospace,
      this.lat,
      this.lng,
      this.icon,
      this.idCategory,
      this.idAgenda,
      this.civility,
      this.isOther,
      required this.appointment})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'ObjectNameOfSearch', 'id');
    BuiltValueNullFieldError.checkNotNull(
        appointment, r'ObjectNameOfSearch', 'appointment');
  }

  @override
  ObjectNameOfSearch rebuild(
          void Function(ObjectNameOfSearchBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ObjectNameOfSearchBuilder toBuilder() =>
      new ObjectNameOfSearchBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ObjectNameOfSearch &&
        id == other.id &&
        nom == other.nom &&
        prenom == other.prenom &&
        idCity == other.idCity &&
        kmDiff == other.kmDiff &&
        address == other.address &&
        zip == other.zip &&
        city == other.city &&
        category == other.category &&
        tel == other.tel &&
        telnospace == other.telnospace &&
        lat == other.lat &&
        lng == other.lng &&
        icon == other.icon &&
        idCategory == other.idCategory &&
        idAgenda == other.idAgenda &&
        civility == other.civility &&
        isOther == other.isOther &&
        appointment == other.appointment;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, nom.hashCode);
    _$hash = $jc(_$hash, prenom.hashCode);
    _$hash = $jc(_$hash, idCity.hashCode);
    _$hash = $jc(_$hash, kmDiff.hashCode);
    _$hash = $jc(_$hash, address.hashCode);
    _$hash = $jc(_$hash, zip.hashCode);
    _$hash = $jc(_$hash, city.hashCode);
    _$hash = $jc(_$hash, category.hashCode);
    _$hash = $jc(_$hash, tel.hashCode);
    _$hash = $jc(_$hash, telnospace.hashCode);
    _$hash = $jc(_$hash, lat.hashCode);
    _$hash = $jc(_$hash, lng.hashCode);
    _$hash = $jc(_$hash, icon.hashCode);
    _$hash = $jc(_$hash, idCategory.hashCode);
    _$hash = $jc(_$hash, idAgenda.hashCode);
    _$hash = $jc(_$hash, civility.hashCode);
    _$hash = $jc(_$hash, isOther.hashCode);
    _$hash = $jc(_$hash, appointment.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ObjectNameOfSearch')
          ..add('id', id)
          ..add('nom', nom)
          ..add('prenom', prenom)
          ..add('idCity', idCity)
          ..add('kmDiff', kmDiff)
          ..add('address', address)
          ..add('zip', zip)
          ..add('city', city)
          ..add('category', category)
          ..add('tel', tel)
          ..add('telnospace', telnospace)
          ..add('lat', lat)
          ..add('lng', lng)
          ..add('icon', icon)
          ..add('idCategory', idCategory)
          ..add('idAgenda', idAgenda)
          ..add('civility', civility)
          ..add('isOther', isOther)
          ..add('appointment', appointment))
        .toString();
  }
}

class ObjectNameOfSearchBuilder
    implements Builder<ObjectNameOfSearch, ObjectNameOfSearchBuilder> {
  _$ObjectNameOfSearch? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _nom;
  String? get nom => _$this._nom;
  set nom(String? nom) => _$this._nom = nom;

  String? _prenom;
  String? get prenom => _$this._prenom;
  set prenom(String? prenom) => _$this._prenom = prenom;

  String? _idCity;
  String? get idCity => _$this._idCity;
  set idCity(String? idCity) => _$this._idCity = idCity;

  String? _kmDiff;
  String? get kmDiff => _$this._kmDiff;
  set kmDiff(String? kmDiff) => _$this._kmDiff = kmDiff;

  String? _address;
  String? get address => _$this._address;
  set address(String? address) => _$this._address = address;

  String? _zip;
  String? get zip => _$this._zip;
  set zip(String? zip) => _$this._zip = zip;

  String? _city;
  String? get city => _$this._city;
  set city(String? city) => _$this._city = city;

  String? _category;
  String? get category => _$this._category;
  set category(String? category) => _$this._category = category;

  String? _tel;
  String? get tel => _$this._tel;
  set tel(String? tel) => _$this._tel = tel;

  String? _telnospace;
  String? get telnospace => _$this._telnospace;
  set telnospace(String? telnospace) => _$this._telnospace = telnospace;

  String? _lat;
  String? get lat => _$this._lat;
  set lat(String? lat) => _$this._lat = lat;

  String? _lng;
  String? get lng => _$this._lng;
  set lng(String? lng) => _$this._lng = lng;

  String? _icon;
  String? get icon => _$this._icon;
  set icon(String? icon) => _$this._icon = icon;

  String? _idCategory;
  String? get idCategory => _$this._idCategory;
  set idCategory(String? idCategory) => _$this._idCategory = idCategory;

  String? _idAgenda;
  String? get idAgenda => _$this._idAgenda;
  set idAgenda(String? idAgenda) => _$this._idAgenda = idAgenda;

  String? _civility;
  String? get civility => _$this._civility;
  set civility(String? civility) => _$this._civility = civility;

  String? _isOther;
  String? get isOther => _$this._isOther;
  set isOther(String? isOther) => _$this._isOther = isOther;

  AppointmentSearchNameResponseBuilder? _appointment;
  AppointmentSearchNameResponseBuilder get appointment =>
      _$this._appointment ??= new AppointmentSearchNameResponseBuilder();
  set appointment(AppointmentSearchNameResponseBuilder? appointment) =>
      _$this._appointment = appointment;

  ObjectNameOfSearchBuilder();

  ObjectNameOfSearchBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _nom = $v.nom;
      _prenom = $v.prenom;
      _idCity = $v.idCity;
      _kmDiff = $v.kmDiff;
      _address = $v.address;
      _zip = $v.zip;
      _city = $v.city;
      _category = $v.category;
      _tel = $v.tel;
      _telnospace = $v.telnospace;
      _lat = $v.lat;
      _lng = $v.lng;
      _icon = $v.icon;
      _idCategory = $v.idCategory;
      _idAgenda = $v.idAgenda;
      _civility = $v.civility;
      _isOther = $v.isOther;
      _appointment = $v.appointment.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ObjectNameOfSearch other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ObjectNameOfSearch;
  }

  @override
  void update(void Function(ObjectNameOfSearchBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ObjectNameOfSearch build() => _build();

  _$ObjectNameOfSearch _build() {
    _$ObjectNameOfSearch _$result;
    try {
      _$result = _$v ??
          new _$ObjectNameOfSearch._(
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'ObjectNameOfSearch', 'id'),
              nom: nom,
              prenom: prenom,
              idCity: idCity,
              kmDiff: kmDiff,
              address: address,
              zip: zip,
              city: city,
              category: category,
              tel: tel,
              telnospace: telnospace,
              lat: lat,
              lng: lng,
              icon: icon,
              idCategory: idCategory,
              idAgenda: idAgenda,
              civility: civility,
              isOther: isOther,
              appointment: appointment.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'appointment';
        appointment.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ObjectNameOfSearch', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$AppointmentSearchNameResponse extends AppointmentSearchNameResponse {
  @override
  final String? token;

  factory _$AppointmentSearchNameResponse(
          [void Function(AppointmentSearchNameResponseBuilder)? updates]) =>
      (new AppointmentSearchNameResponseBuilder()..update(updates))._build();

  _$AppointmentSearchNameResponse._({this.token}) : super._();

  @override
  AppointmentSearchNameResponse rebuild(
          void Function(AppointmentSearchNameResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AppointmentSearchNameResponseBuilder toBuilder() =>
      new AppointmentSearchNameResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppointmentSearchNameResponse && token == other.token;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, token.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AppointmentSearchNameResponse')
          ..add('token', token))
        .toString();
  }
}

class AppointmentSearchNameResponseBuilder
    implements
        Builder<AppointmentSearchNameResponse,
            AppointmentSearchNameResponseBuilder> {
  _$AppointmentSearchNameResponse? _$v;

  String? _token;
  String? get token => _$this._token;
  set token(String? token) => _$this._token = token;

  AppointmentSearchNameResponseBuilder();

  AppointmentSearchNameResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _token = $v.token;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppointmentSearchNameResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AppointmentSearchNameResponse;
  }

  @override
  void update(void Function(AppointmentSearchNameResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AppointmentSearchNameResponse build() => _build();

  _$AppointmentSearchNameResponse _build() {
    final _$result = _$v ?? new _$AppointmentSearchNameResponse._(token: token);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
