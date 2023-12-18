// GENERATED CODE - DO NOT MODIFY BY HAND

part of search_dialog_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SearchDialogResponse> _$searchDialogResponseSerializer =
    new _$SearchDialogResponseSerializer();
Serializer<ParamsSearchDialogResponse> _$paramsSearchDialogResponseSerializer =
    new _$ParamsSearchDialogResponseSerializer();

class _$SearchDialogResponseSerializer
    implements StructuredSerializer<SearchDialogResponse> {
  @override
  final Iterable<Type> types = const [
    SearchDialogResponse,
    _$SearchDialogResponse
  ];
  @override
  final String wireName = 'SearchDialogResponse';

  @override
  Iterable<Object> serialize(
      Serializers serializers, SearchDialogResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
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
          specifiedType: const FullType(ParamsSearchDialogResponse)),
      'error',
      serializers.serialize(object.error,
          specifiedType: const FullType(String)),
      'message',
      serializers.serialize(object.message,
          specifiedType: const FullType(String)),
      'localisation',
      serializers.serialize(object.localisation,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  SearchDialogResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SearchDialogResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'httpstatut':
          result.httpstatut = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'version':
          result.version = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'request':
          result.request = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'params':
          result.params.replace(serializers.deserialize(value,
                  specifiedType: const FullType(ParamsSearchDialogResponse))
              as ParamsSearchDialogResponse);
          break;
        case 'error':
          result.error = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'localisation':
          result.localisation = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ParamsSearchDialogResponseSerializer
    implements StructuredSerializer<ParamsSearchDialogResponse> {
  @override
  final Iterable<Type> types = const [
    ParamsSearchDialogResponse,
    _$ParamsSearchDialogResponse
  ];
  @override
  final String wireName = 'ParamsSearchDialogResponse';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ParamsSearchDialogResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'address',
      serializers.serialize(object.address,
          specifiedType: const FullType(String)),
      'zip',
      serializers.serialize(object.zip, specifiedType: const FullType(String)),
      'city',
      serializers.serialize(object.city, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  ParamsSearchDialogResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ParamsSearchDialogResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'address':
          result.address = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'zip':
          result.zip = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'city':
          result.city = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$SearchDialogResponse extends SearchDialogResponse {
  @override
  final int httpstatut;
  @override
  final String version;
  @override
  final String request;
  @override
  final ParamsSearchDialogResponse params;
  @override
  final String error;
  @override
  final String message;
  @override
  final String localisation;

  factory _$SearchDialogResponse(
          [void Function(SearchDialogResponseBuilder) updates]) =>
      (new SearchDialogResponseBuilder()..update(updates)).build();

  _$SearchDialogResponse._(
      {this.httpstatut,
      this.version,
      this.request,
      this.params,
      this.error,
      this.message,
      this.localisation})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        httpstatut, 'SearchDialogResponse', 'httpstatut');
    BuiltValueNullFieldError.checkNotNull(
        version, 'SearchDialogResponse', 'version');
    BuiltValueNullFieldError.checkNotNull(
        request, 'SearchDialogResponse', 'request');
    BuiltValueNullFieldError.checkNotNull(
        params, 'SearchDialogResponse', 'params');
    BuiltValueNullFieldError.checkNotNull(
        error, 'SearchDialogResponse', 'error');
    BuiltValueNullFieldError.checkNotNull(
        message, 'SearchDialogResponse', 'message');
    BuiltValueNullFieldError.checkNotNull(
        localisation, 'SearchDialogResponse', 'localisation');
  }

  @override
  SearchDialogResponse rebuild(
          void Function(SearchDialogResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SearchDialogResponseBuilder toBuilder() =>
      new SearchDialogResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SearchDialogResponse &&
        httpstatut == other.httpstatut &&
        version == other.version &&
        request == other.request &&
        params == other.params &&
        error == other.error &&
        message == other.message &&
        localisation == other.localisation;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, httpstatut.hashCode), version.hashCode),
                        request.hashCode),
                    params.hashCode),
                error.hashCode),
            message.hashCode),
        localisation.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SearchDialogResponse')
          ..add('httpstatut', httpstatut)
          ..add('version', version)
          ..add('request', request)
          ..add('params', params)
          ..add('error', error)
          ..add('message', message)
          ..add('localisation', localisation))
        .toString();
  }
}

class SearchDialogResponseBuilder
    implements Builder<SearchDialogResponse, SearchDialogResponseBuilder> {
  _$SearchDialogResponse _$v;

  int _httpstatut;
  int get httpstatut => _$this._httpstatut;
  set httpstatut(int httpstatut) => _$this._httpstatut = httpstatut;

  String _version;
  String get version => _$this._version;
  set version(String version) => _$this._version = version;

  String _request;
  String get request => _$this._request;
  set request(String request) => _$this._request = request;

  ParamsSearchDialogResponseBuilder _params;
  ParamsSearchDialogResponseBuilder get params =>
      _$this._params ??= new ParamsSearchDialogResponseBuilder();
  set params(ParamsSearchDialogResponseBuilder params) =>
      _$this._params = params;

  String _error;
  String get error => _$this._error;
  set error(String error) => _$this._error = error;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  String _localisation;
  String get localisation => _$this._localisation;
  set localisation(String localisation) => _$this._localisation = localisation;

  SearchDialogResponseBuilder();

  SearchDialogResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _httpstatut = $v.httpstatut;
      _version = $v.version;
      _request = $v.request;
      _params = $v.params.toBuilder();
      _error = $v.error;
      _message = $v.message;
      _localisation = $v.localisation;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SearchDialogResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SearchDialogResponse;
  }

  @override
  void update(void Function(SearchDialogResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SearchDialogResponse build() {
    _$SearchDialogResponse _$result;
    try {
      _$result = _$v ??
          new _$SearchDialogResponse._(
              httpstatut: BuiltValueNullFieldError.checkNotNull(
                  httpstatut, 'SearchDialogResponse', 'httpstatut'),
              version: BuiltValueNullFieldError.checkNotNull(
                  version, 'SearchDialogResponse', 'version'),
              request: BuiltValueNullFieldError.checkNotNull(
                  request, 'SearchDialogResponse', 'request'),
              params: params.build(),
              error: BuiltValueNullFieldError.checkNotNull(
                  error, 'SearchDialogResponse', 'error'),
              message: BuiltValueNullFieldError.checkNotNull(
                  message, 'SearchDialogResponse', 'message'),
              localisation: BuiltValueNullFieldError.checkNotNull(
                  localisation, 'SearchDialogResponse', 'localisation'));
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'params';
        params.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'SearchDialogResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$ParamsSearchDialogResponse extends ParamsSearchDialogResponse {
  @override
  final String address;
  @override
  final String zip;
  @override
  final String city;

  factory _$ParamsSearchDialogResponse(
          [void Function(ParamsSearchDialogResponseBuilder) updates]) =>
      (new ParamsSearchDialogResponseBuilder()..update(updates)).build();

  _$ParamsSearchDialogResponse._({this.address, this.zip, this.city})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        address, 'ParamsSearchDialogResponse', 'address');
    BuiltValueNullFieldError.checkNotNull(
        zip, 'ParamsSearchDialogResponse', 'zip');
    BuiltValueNullFieldError.checkNotNull(
        city, 'ParamsSearchDialogResponse', 'city');
  }

  @override
  ParamsSearchDialogResponse rebuild(
          void Function(ParamsSearchDialogResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ParamsSearchDialogResponseBuilder toBuilder() =>
      new ParamsSearchDialogResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ParamsSearchDialogResponse &&
        address == other.address &&
        zip == other.zip &&
        city == other.city;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, address.hashCode), zip.hashCode), city.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ParamsSearchDialogResponse')
          ..add('address', address)
          ..add('zip', zip)
          ..add('city', city))
        .toString();
  }
}

class ParamsSearchDialogResponseBuilder
    implements
        Builder<ParamsSearchDialogResponse, ParamsSearchDialogResponseBuilder> {
  _$ParamsSearchDialogResponse _$v;

  String _address;
  String get address => _$this._address;
  set address(String address) => _$this._address = address;

  String _zip;
  String get zip => _$this._zip;
  set zip(String zip) => _$this._zip = zip;

  String _city;
  String get city => _$this._city;
  set city(String city) => _$this._city = city;

  ParamsSearchDialogResponseBuilder();

  ParamsSearchDialogResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _address = $v.address;
      _zip = $v.zip;
      _city = $v.city;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ParamsSearchDialogResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ParamsSearchDialogResponse;
  }

  @override
  void update(void Function(ParamsSearchDialogResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ParamsSearchDialogResponse build() {
    final _$result = _$v ??
        new _$ParamsSearchDialogResponse._(
            address: BuiltValueNullFieldError.checkNotNull(
                address, 'ParamsSearchDialogResponse', 'address'),
            zip: BuiltValueNullFieldError.checkNotNull(
                zip, 'ParamsSearchDialogResponse', 'zip'),
            city: BuiltValueNullFieldError.checkNotNull(
                city, 'ParamsSearchDialogResponse', 'city'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
