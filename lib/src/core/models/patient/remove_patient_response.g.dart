// GENERATED CODE - DO NOT MODIFY BY HAND

part of remove_patient_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RemovePatientResponse> _$removePatientResponseSerializer =
    new _$RemovePatientResponseSerializer();
Serializer<ParamsRemovePatientResponse>
    _$paramsRemovePatientResponseSerializer =
    new _$ParamsRemovePatientResponseSerializer();

class _$RemovePatientResponseSerializer
    implements StructuredSerializer<RemovePatientResponse> {
  @override
  final Iterable<Type> types = const [
    RemovePatientResponse,
    _$RemovePatientResponse
  ];
  @override
  final String wireName = 'RemovePatientResponse';

  @override
  Iterable<Object> serialize(
      Serializers serializers, RemovePatientResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'httpstatut',
      serializers.serialize(object.httpstatut,
          specifiedType: const FullType(int))!,
      'version',
      serializers.serialize(object.version,
          specifiedType: const FullType(String))!,
      'request',
      serializers.serialize(object.request,
          specifiedType: const FullType(String))!,
      'params',
      serializers.serialize(object.params,
          specifiedType: const FullType(ParamsRemovePatientResponse))!,
      'error',
      serializers.serialize(object.error,
          specifiedType: const FullType(String))!,
      'message',
      serializers.serialize(object.message,
          specifiedType: const FullType(String))!,
    ];

    return result;
  }

  @override
  RemovePatientResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RemovePatientResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current!;
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
                  specifiedType: const FullType(ParamsRemovePatientResponse))
              as ParamsRemovePatientResponse);
          break;
        case 'error':
          result.error = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ParamsRemovePatientResponseSerializer
    implements StructuredSerializer<ParamsRemovePatientResponse> {
  @override
  final Iterable<Type> types = const [
    ParamsRemovePatientResponse,
    _$ParamsRemovePatientResponse
  ];
  @override
  final String wireName = 'ParamsRemovePatientResponse';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ParamsRemovePatientResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'tokenuser',
      serializers.serialize(object.tokenuser,
          specifiedType: const FullType(String))!,
      'tokenappt',
      serializers.serialize(object.tokenappt,
          specifiedType: const FullType(String))!,
    ];
    Object value;
    value = object.tokenpatient;
    if (value != null) {
      result
        ..add('tokenpatient')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String))!);
    }
    return result;
  }

  @override
  ParamsRemovePatientResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ParamsRemovePatientResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current!;
      switch (key) {
        case 'tokenuser':
          result.tokenuser = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'tokenappt':
          result.tokenappt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'tokenpatient':
          result.tokenpatient = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$RemovePatientResponse extends RemovePatientResponse {
  @override
  final int httpstatut;
  @override
  final String version;
  @override
  final String request;
  @override
  final ParamsRemovePatientResponse params;
  @override
  final String error;
  @override
  final String message;

  factory _$RemovePatientResponse(
          [void Function(RemovePatientResponseBuilder)? updates]) =>
      (new RemovePatientResponseBuilder()..update(updates!)).build();

  _$RemovePatientResponse._(
      {
      required this.httpstatut,
      required this.version,
      required this.request,
      required this.params,
      required this.error,
      required this.message})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        httpstatut, 'RemovePatientResponse', 'httpstatut');
    BuiltValueNullFieldError.checkNotNull(
        version, 'RemovePatientResponse', 'version');
    BuiltValueNullFieldError.checkNotNull(
        request, 'RemovePatientResponse', 'request');
    BuiltValueNullFieldError.checkNotNull(
        params, 'RemovePatientResponse', 'params');
    BuiltValueNullFieldError.checkNotNull(
        error, 'RemovePatientResponse', 'error');
    BuiltValueNullFieldError.checkNotNull(
        message, 'RemovePatientResponse', 'message');
  }

  @override
  RemovePatientResponse rebuild(
          void Function(RemovePatientResponseBuilder) updates) =>
      (toBuilder()..update(updates!)).build();

  @override
  RemovePatientResponseBuilder toBuilder() =>
      new RemovePatientResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RemovePatientResponse &&
        httpstatut == other.httpstatut &&
        version == other.version &&
        request == other.request &&
        params == other.params &&
        error == other.error &&
        message == other.message;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, httpstatut.hashCode), version.hashCode),
                    request.hashCode),
                params.hashCode),
            error.hashCode),
        message.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RemovePatientResponse')
          ..add('httpstatut', httpstatut)
          ..add('version', version)
          ..add('request', request)
          ..add('params', params)
          ..add('error', error)
          ..add('message', message))
        .toString();
  }
}

class RemovePatientResponseBuilder
    implements Builder<RemovePatientResponse, RemovePatientResponseBuilder> {
  _$RemovePatientResponse? _$v =_$RemovePatientResponse();

  int _httpstatut = 0;
  int get httpstatut => _$this._httpstatut;
  set httpstatut(int httpstatut) => _$this._httpstatut = httpstatut;

  String _version = '';
  String get version => _$this._version;
  set version(String version) => _$this._version = version;

  String _request = '';
  String get request => _$this._request;
  set request(String request) => _$this._request = request;

  ParamsRemovePatientResponseBuilder _params =ParamsRemovePatientResponseBuilder();
  ParamsRemovePatientResponseBuilder get params =>
      _$this._params ??= new ParamsRemovePatientResponseBuilder();
  set params(ParamsRemovePatientResponseBuilder params) =>
      _$this._params = params;

  String _error = '';
  String get error => _$this._error;
  set error(String error) => _$this._error = error;

  String _message = '';
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  RemovePatientResponseBuilder();

  RemovePatientResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _httpstatut = $v.httpstatut;
      _version = $v.version;
      _request = $v.request;
      _params = $v.params.toBuilder();
      _error = $v.error;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RemovePatientResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RemovePatientResponse;
  }

  @override
  void update(void Function(RemovePatientResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RemovePatientResponse build() {
    _$RemovePatientResponse _$result;
    try {
      _$result = _$v ??
          new _$RemovePatientResponse._(
              httpstatut: BuiltValueNullFieldError.checkNotNull(
                  httpstatut, 'RemovePatientResponse', 'httpstatut'),
              version: BuiltValueNullFieldError.checkNotNull(
                  version, 'RemovePatientResponse', 'version'),
              request: BuiltValueNullFieldError.checkNotNull(
                  request, 'RemovePatientResponse', 'request'),
              params: params.build(),
              error: BuiltValueNullFieldError.checkNotNull(
                  error, 'RemovePatientResponse', 'error'),
              message: BuiltValueNullFieldError.checkNotNull(
                  message, 'RemovePatientResponse', 'message'));
    } catch (_) {
      String _$failedField = '';
      try {
        _$failedField = 'params';
        params.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'RemovePatientResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$ParamsRemovePatientResponse extends ParamsRemovePatientResponse {
  @override
  final String tokenuser;
  @override
  final String tokenappt;
  @override
  final String tokenpatient;

  factory _$ParamsRemovePatientResponse(
          [void Function(ParamsRemovePatientResponseBuilder)? updates]) =>
      (new ParamsRemovePatientResponseBuilder()..update(updates!)).build();

  _$ParamsRemovePatientResponse._(
      {required this.tokenuser,required this.tokenappt,required this.tokenpatient})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        tokenuser, 'ParamsRemovePatientResponse', 'tokenuser');
    BuiltValueNullFieldError.checkNotNull(
        tokenappt, 'ParamsRemovePatientResponse', 'tokenappt');
  }

  @override
  ParamsRemovePatientResponse rebuild(
          void Function(ParamsRemovePatientResponseBuilder) updates) =>
      (toBuilder()..update(updates!)).build();

  @override
  ParamsRemovePatientResponseBuilder toBuilder() =>
      new ParamsRemovePatientResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ParamsRemovePatientResponse &&
        tokenuser == other.tokenuser &&
        tokenappt == other.tokenappt &&
        tokenpatient == other.tokenpatient;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, tokenuser.hashCode), tokenappt.hashCode),
        tokenpatient.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ParamsRemovePatientResponse')
          ..add('tokenuser', tokenuser)
          ..add('tokenappt', tokenappt)
          ..add('tokenpatient', tokenpatient))
        .toString();
  }
}

class ParamsRemovePatientResponseBuilder
    implements
        Builder<ParamsRemovePatientResponse,
            ParamsRemovePatientResponseBuilder> {
  _$ParamsRemovePatientResponse? _$v =_$ParamsRemovePatientResponse();

  String _tokenuser = '';
  String get tokenuser => _$this._tokenuser;
  set tokenuser(String tokenuser) => _$this._tokenuser = tokenuser;

  String _tokenappt = '';
  String get tokenappt => _$this._tokenappt;
  set tokenappt(String tokenappt) => _$this._tokenappt = tokenappt;

  String _tokenpatient = '';
  String get tokenpatient => _$this._tokenpatient;
  set tokenpatient(String tokenpatient) => _$this._tokenpatient = tokenpatient;

  ParamsRemovePatientResponseBuilder();

  ParamsRemovePatientResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tokenuser = $v.tokenuser;
      _tokenappt = $v.tokenappt;
      _tokenpatient = $v.tokenpatient;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ParamsRemovePatientResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ParamsRemovePatientResponse;
  }

  @override
  void update(void Function(ParamsRemovePatientResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ParamsRemovePatientResponse build() {
    final _$result = _$v ??
        new _$ParamsRemovePatientResponse._(
            tokenuser: BuiltValueNullFieldError.checkNotNull(
                tokenuser, 'ParamsRemovePatientResponse', 'tokenuser'),
            tokenappt: BuiltValueNullFieldError.checkNotNull(
                tokenappt, 'ParamsRemovePatientResponse', 'tokenappt'),
            tokenpatient: tokenpatient);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
