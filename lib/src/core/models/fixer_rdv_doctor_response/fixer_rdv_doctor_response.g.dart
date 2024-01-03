// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fixer_rdv_doctor_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<FixerRdvDoctorResponse> _$fixerRdvDoctorResponseSerializer =
    new _$FixerRdvDoctorResponseSerializer();
Serializer<ParamsFixerRdvDoctorResponse>
    _$paramsFixerRdvDoctorResponseSerializer =
    new _$ParamsFixerRdvDoctorResponseSerializer();
Serializer<DataFixerRdvDoctorResponse> _$dataFixerRdvDoctorResponseSerializer =
    new _$DataFixerRdvDoctorResponseSerializer();

class _$FixerRdvDoctorResponseSerializer
    implements StructuredSerializer<FixerRdvDoctorResponse> {
  @override
  final Iterable<Type> types = const [
    FixerRdvDoctorResponse,
    _$FixerRdvDoctorResponse
  ];
  @override
  final String wireName = 'FixerRdvDoctorResponse';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, FixerRdvDoctorResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'version',
      serializers.serialize(object.version,
          specifiedType: const FullType(String)),
      'request',
      serializers.serialize(object.request,
          specifiedType: const FullType(String)),
      'params',
      serializers.serialize(object.params,
          specifiedType: const FullType(ParamsFixerRdvDoctorResponse)),
      'message',
      serializers.serialize(object.message,
          specifiedType: const FullType(String)),
      'httpstatut',
      serializers.serialize(object.httpstatut,
          specifiedType: const FullType(int)),
      'error',
      serializers.serialize(object.error,
          specifiedType: const FullType(String)),
      'data',
      serializers.serialize(object.data,
          specifiedType: const FullType(DataFixerRdvDoctorResponse)),
    ];

    return result;
  }

  @override
  FixerRdvDoctorResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FixerRdvDoctorResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
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
                  specifiedType: const FullType(ParamsFixerRdvDoctorResponse))!
              as ParamsFixerRdvDoctorResponse);
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'httpstatut':
          result.httpstatut = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'error':
          result.error = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'data':
          result.data.replace(serializers.deserialize(value,
                  specifiedType: const FullType(DataFixerRdvDoctorResponse))!
              as DataFixerRdvDoctorResponse);
          break;
      }
    }

    return result.build();
  }
}

class _$ParamsFixerRdvDoctorResponseSerializer
    implements StructuredSerializer<ParamsFixerRdvDoctorResponse> {
  @override
  final Iterable<Type> types = const [
    ParamsFixerRdvDoctorResponse,
    _$ParamsFixerRdvDoctorResponse
  ];
  @override
  final String wireName = 'ParamsFixerRdvDoctorResponse';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, ParamsFixerRdvDoctorResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'tokenuser',
      serializers.serialize(object.tokenuser,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  ParamsFixerRdvDoctorResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ParamsFixerRdvDoctorResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'tokenuser':
          result.tokenuser = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$DataFixerRdvDoctorResponseSerializer
    implements StructuredSerializer<DataFixerRdvDoctorResponse> {
  @override
  final Iterable<Type> types = const [
    DataFixerRdvDoctorResponse,
    _$DataFixerRdvDoctorResponse
  ];
  @override
  final String wireName = 'DataFixerRdvDoctorResponse';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, DataFixerRdvDoctorResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'activeEtabs',
      serializers.serialize(object.activeEtabs,
          specifiedType: const FullType(
              BuiltList, const [const FullType(ObjectNameOfSearch)])),
      'sameCabinetEtabs',
      serializers.serialize(object.sameCabinetEtabs,
          specifiedType: const FullType(
              BuiltList, const [const FullType(ObjectNameOfSearch)])),
    ];

    return result;
  }

  @override
  DataFixerRdvDoctorResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DataFixerRdvDoctorResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'activeEtabs':
          result.activeEtabs.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(ObjectNameOfSearch)]))!
              as BuiltList<Object?>);
          break;
        case 'sameCabinetEtabs':
          result.sameCabinetEtabs.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(ObjectNameOfSearch)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$FixerRdvDoctorResponse extends FixerRdvDoctorResponse {
  @override
  final String version;
  @override
  final String request;
  @override
  final ParamsFixerRdvDoctorResponse params;
  @override
  final String message;
  @override
  final int httpstatut;
  @override
  final String error;
  @override
  final DataFixerRdvDoctorResponse data;

  factory _$FixerRdvDoctorResponse(
          [void Function(FixerRdvDoctorResponseBuilder)? updates]) =>
      (new FixerRdvDoctorResponseBuilder()..update(updates))._build();

  _$FixerRdvDoctorResponse._(
      {required this.version,
      required this.request,
      required this.params,
      required this.message,
      required this.httpstatut,
      required this.error,
      required this.data})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        version, r'FixerRdvDoctorResponse', 'version');
    BuiltValueNullFieldError.checkNotNull(
        request, r'FixerRdvDoctorResponse', 'request');
    BuiltValueNullFieldError.checkNotNull(
        params, r'FixerRdvDoctorResponse', 'params');
    BuiltValueNullFieldError.checkNotNull(
        message, r'FixerRdvDoctorResponse', 'message');
    BuiltValueNullFieldError.checkNotNull(
        httpstatut, r'FixerRdvDoctorResponse', 'httpstatut');
    BuiltValueNullFieldError.checkNotNull(
        error, r'FixerRdvDoctorResponse', 'error');
    BuiltValueNullFieldError.checkNotNull(
        data, r'FixerRdvDoctorResponse', 'data');
  }

  @override
  FixerRdvDoctorResponse rebuild(
          void Function(FixerRdvDoctorResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FixerRdvDoctorResponseBuilder toBuilder() =>
      new FixerRdvDoctorResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FixerRdvDoctorResponse &&
        version == other.version &&
        request == other.request &&
        params == other.params &&
        message == other.message &&
        httpstatut == other.httpstatut &&
        error == other.error &&
        data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jc(_$hash, request.hashCode);
    _$hash = $jc(_$hash, params.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, httpstatut.hashCode);
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FixerRdvDoctorResponse')
          ..add('version', version)
          ..add('request', request)
          ..add('params', params)
          ..add('message', message)
          ..add('httpstatut', httpstatut)
          ..add('error', error)
          ..add('data', data))
        .toString();
  }
}

class FixerRdvDoctorResponseBuilder
    implements Builder<FixerRdvDoctorResponse, FixerRdvDoctorResponseBuilder> {
  _$FixerRdvDoctorResponse? _$v;

  String? _version;
  String? get version => _$this._version;
  set version(String? version) => _$this._version = version;

  String? _request;
  String? get request => _$this._request;
  set request(String? request) => _$this._request = request;

  ParamsFixerRdvDoctorResponseBuilder? _params;
  ParamsFixerRdvDoctorResponseBuilder get params =>
      _$this._params ??= new ParamsFixerRdvDoctorResponseBuilder();
  set params(ParamsFixerRdvDoctorResponseBuilder? params) =>
      _$this._params = params;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  int? _httpstatut;
  int? get httpstatut => _$this._httpstatut;
  set httpstatut(int? httpstatut) => _$this._httpstatut = httpstatut;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  DataFixerRdvDoctorResponseBuilder? _data;
  DataFixerRdvDoctorResponseBuilder get data =>
      _$this._data ??= new DataFixerRdvDoctorResponseBuilder();
  set data(DataFixerRdvDoctorResponseBuilder? data) => _$this._data = data;

  FixerRdvDoctorResponseBuilder();

  FixerRdvDoctorResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _version = $v.version;
      _request = $v.request;
      _params = $v.params.toBuilder();
      _message = $v.message;
      _httpstatut = $v.httpstatut;
      _error = $v.error;
      _data = $v.data.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FixerRdvDoctorResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FixerRdvDoctorResponse;
  }

  @override
  void update(void Function(FixerRdvDoctorResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FixerRdvDoctorResponse build() => _build();

  _$FixerRdvDoctorResponse _build() {
    _$FixerRdvDoctorResponse _$result;
    try {
      _$result = _$v ??
          new _$FixerRdvDoctorResponse._(
              version: BuiltValueNullFieldError.checkNotNull(
                  version, r'FixerRdvDoctorResponse', 'version'),
              request: BuiltValueNullFieldError.checkNotNull(
                  request, r'FixerRdvDoctorResponse', 'request'),
              params: params.build(),
              message: BuiltValueNullFieldError.checkNotNull(
                  message, r'FixerRdvDoctorResponse', 'message'),
              httpstatut: BuiltValueNullFieldError.checkNotNull(
                  httpstatut, r'FixerRdvDoctorResponse', 'httpstatut'),
              error: BuiltValueNullFieldError.checkNotNull(
                  error, r'FixerRdvDoctorResponse', 'error'),
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
            r'FixerRdvDoctorResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$ParamsFixerRdvDoctorResponse extends ParamsFixerRdvDoctorResponse {
  @override
  final String tokenuser;

  factory _$ParamsFixerRdvDoctorResponse(
          [void Function(ParamsFixerRdvDoctorResponseBuilder)? updates]) =>
      (new ParamsFixerRdvDoctorResponseBuilder()..update(updates))._build();

  _$ParamsFixerRdvDoctorResponse._({required this.tokenuser}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        tokenuser, r'ParamsFixerRdvDoctorResponse', 'tokenuser');
  }

  @override
  ParamsFixerRdvDoctorResponse rebuild(
          void Function(ParamsFixerRdvDoctorResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ParamsFixerRdvDoctorResponseBuilder toBuilder() =>
      new ParamsFixerRdvDoctorResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ParamsFixerRdvDoctorResponse &&
        tokenuser == other.tokenuser;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, tokenuser.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ParamsFixerRdvDoctorResponse')
          ..add('tokenuser', tokenuser))
        .toString();
  }
}

class ParamsFixerRdvDoctorResponseBuilder
    implements
        Builder<ParamsFixerRdvDoctorResponse,
            ParamsFixerRdvDoctorResponseBuilder> {
  _$ParamsFixerRdvDoctorResponse? _$v;

  String? _tokenuser;
  String? get tokenuser => _$this._tokenuser;
  set tokenuser(String? tokenuser) => _$this._tokenuser = tokenuser;

  ParamsFixerRdvDoctorResponseBuilder();

  ParamsFixerRdvDoctorResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tokenuser = $v.tokenuser;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ParamsFixerRdvDoctorResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ParamsFixerRdvDoctorResponse;
  }

  @override
  void update(void Function(ParamsFixerRdvDoctorResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ParamsFixerRdvDoctorResponse build() => _build();

  _$ParamsFixerRdvDoctorResponse _build() {
    final _$result = _$v ??
        new _$ParamsFixerRdvDoctorResponse._(
            tokenuser: BuiltValueNullFieldError.checkNotNull(
                tokenuser, r'ParamsFixerRdvDoctorResponse', 'tokenuser'));
    replace(_$result);
    return _$result;
  }
}

class _$DataFixerRdvDoctorResponse extends DataFixerRdvDoctorResponse {
  @override
  final BuiltList<ObjectNameOfSearch> activeEtabs;
  @override
  final BuiltList<ObjectNameOfSearch> sameCabinetEtabs;

  factory _$DataFixerRdvDoctorResponse(
          [void Function(DataFixerRdvDoctorResponseBuilder)? updates]) =>
      (new DataFixerRdvDoctorResponseBuilder()..update(updates))._build();

  _$DataFixerRdvDoctorResponse._(
      {required this.activeEtabs, required this.sameCabinetEtabs})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        activeEtabs, r'DataFixerRdvDoctorResponse', 'activeEtabs');
    BuiltValueNullFieldError.checkNotNull(
        sameCabinetEtabs, r'DataFixerRdvDoctorResponse', 'sameCabinetEtabs');
  }

  @override
  DataFixerRdvDoctorResponse rebuild(
          void Function(DataFixerRdvDoctorResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DataFixerRdvDoctorResponseBuilder toBuilder() =>
      new DataFixerRdvDoctorResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DataFixerRdvDoctorResponse &&
        activeEtabs == other.activeEtabs &&
        sameCabinetEtabs == other.sameCabinetEtabs;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, activeEtabs.hashCode);
    _$hash = $jc(_$hash, sameCabinetEtabs.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DataFixerRdvDoctorResponse')
          ..add('activeEtabs', activeEtabs)
          ..add('sameCabinetEtabs', sameCabinetEtabs))
        .toString();
  }
}

class DataFixerRdvDoctorResponseBuilder
    implements
        Builder<DataFixerRdvDoctorResponse, DataFixerRdvDoctorResponseBuilder> {
  _$DataFixerRdvDoctorResponse? _$v;

  ListBuilder<ObjectNameOfSearch>? _activeEtabs;
  ListBuilder<ObjectNameOfSearch> get activeEtabs =>
      _$this._activeEtabs ??= new ListBuilder<ObjectNameOfSearch>();
  set activeEtabs(ListBuilder<ObjectNameOfSearch>? activeEtabs) =>
      _$this._activeEtabs = activeEtabs;

  ListBuilder<ObjectNameOfSearch>? _sameCabinetEtabs;
  ListBuilder<ObjectNameOfSearch> get sameCabinetEtabs =>
      _$this._sameCabinetEtabs ??= new ListBuilder<ObjectNameOfSearch>();
  set sameCabinetEtabs(ListBuilder<ObjectNameOfSearch>? sameCabinetEtabs) =>
      _$this._sameCabinetEtabs = sameCabinetEtabs;

  DataFixerRdvDoctorResponseBuilder();

  DataFixerRdvDoctorResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _activeEtabs = $v.activeEtabs.toBuilder();
      _sameCabinetEtabs = $v.sameCabinetEtabs.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DataFixerRdvDoctorResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DataFixerRdvDoctorResponse;
  }

  @override
  void update(void Function(DataFixerRdvDoctorResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DataFixerRdvDoctorResponse build() => _build();

  _$DataFixerRdvDoctorResponse _build() {
    _$DataFixerRdvDoctorResponse _$result;
    try {
      _$result = _$v ??
          new _$DataFixerRdvDoctorResponse._(
              activeEtabs: activeEtabs.build(),
              sameCabinetEtabs: sameCabinetEtabs.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'activeEtabs';
        activeEtabs.build();
        _$failedField = 'sameCabinetEtabs';
        sameCabinetEtabs.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DataFixerRdvDoctorResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
