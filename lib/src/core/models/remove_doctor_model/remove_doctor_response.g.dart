// GENERATED CODE - DO NOT MODIFY BY HAND

part of remove_doctor_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RemoveDoctorResponse> _$removeDoctorResponseSerializer =
    new _$RemoveDoctorResponseSerializer();
Serializer<ParamsRemoveDoctorResponse> _$paramsRemoveDoctorResponseSerializer =
    new _$ParamsRemoveDoctorResponseSerializer();

class _$RemoveDoctorResponseSerializer
    implements StructuredSerializer<RemoveDoctorResponse> {
  @override
  final Iterable<Type> types = const [
    RemoveDoctorResponse,
    _$RemoveDoctorResponse
  ];
  @override
  final String wireName = 'RemoveDoctorResponse';

  @override
  Iterable<Object> serialize(
      Serializers serializers, RemoveDoctorResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'version',
      serializers.serialize(object.version,
          specifiedType: const FullType(String)),
      'request',
      serializers.serialize(object.request,
          specifiedType: const FullType(String)),
      'params',
      serializers.serialize(object.params,
          specifiedType: const FullType(ParamsRemoveDoctorResponse)),
      'message',
      serializers.serialize(object.message,
          specifiedType: const FullType(String)),
      'httpstatut',
      serializers.serialize(object.httpstatut,
          specifiedType: const FullType(int)),
      'error',
      serializers.serialize(object.error,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  RemoveDoctorResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RemoveDoctorResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
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
                  specifiedType: const FullType(ParamsRemoveDoctorResponse))
              as ParamsRemoveDoctorResponse);
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'httpstatut':
          result.httpstatut = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'error':
          result.error = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ParamsRemoveDoctorResponseSerializer
    implements StructuredSerializer<ParamsRemoveDoctorResponse> {
  @override
  final Iterable<Type> types = const [
    ParamsRemoveDoctorResponse,
    _$ParamsRemoveDoctorResponse
  ];
  @override
  final String wireName = 'ParamsRemoveDoctorResponse';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ParamsRemoveDoctorResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'tokenuser',
      serializers.serialize(object.tokenuser,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  ParamsRemoveDoctorResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ParamsRemoveDoctorResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'tokenuser':
          result.tokenuser = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$RemoveDoctorResponse extends RemoveDoctorResponse {
  @override
  final String version;
  @override
  final String request;
  @override
  final ParamsRemoveDoctorResponse params;
  @override
  final String message;
  @override
  final int httpstatut;
  @override
  final String error;

  factory _$RemoveDoctorResponse(
          [void Function(RemoveDoctorResponseBuilder) updates]) =>
      (new RemoveDoctorResponseBuilder()..update(updates)).build();

  _$RemoveDoctorResponse._(
      {this.version,
      this.request,
      this.params,
      this.message,
      this.httpstatut,
      this.error})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        version, 'RemoveDoctorResponse', 'version');
    BuiltValueNullFieldError.checkNotNull(
        request, 'RemoveDoctorResponse', 'request');
    BuiltValueNullFieldError.checkNotNull(
        params, 'RemoveDoctorResponse', 'params');
    BuiltValueNullFieldError.checkNotNull(
        message, 'RemoveDoctorResponse', 'message');
    BuiltValueNullFieldError.checkNotNull(
        httpstatut, 'RemoveDoctorResponse', 'httpstatut');
    BuiltValueNullFieldError.checkNotNull(
        error, 'RemoveDoctorResponse', 'error');
  }

  @override
  RemoveDoctorResponse rebuild(
          void Function(RemoveDoctorResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RemoveDoctorResponseBuilder toBuilder() =>
      new RemoveDoctorResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RemoveDoctorResponse &&
        version == other.version &&
        request == other.request &&
        params == other.params &&
        message == other.message &&
        httpstatut == other.httpstatut &&
        error == other.error;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, version.hashCode), request.hashCode),
                    params.hashCode),
                message.hashCode),
            httpstatut.hashCode),
        error.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RemoveDoctorResponse')
          ..add('version', version)
          ..add('request', request)
          ..add('params', params)
          ..add('message', message)
          ..add('httpstatut', httpstatut)
          ..add('error', error))
        .toString();
  }
}

class RemoveDoctorResponseBuilder
    implements Builder<RemoveDoctorResponse, RemoveDoctorResponseBuilder> {
  _$RemoveDoctorResponse _$v;

  String _version;
  String get version => _$this._version;
  set version(String version) => _$this._version = version;

  String _request;
  String get request => _$this._request;
  set request(String request) => _$this._request = request;

  ParamsRemoveDoctorResponseBuilder _params;
  ParamsRemoveDoctorResponseBuilder get params =>
      _$this._params ??= new ParamsRemoveDoctorResponseBuilder();
  set params(ParamsRemoveDoctorResponseBuilder params) =>
      _$this._params = params;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  int _httpstatut;
  int get httpstatut => _$this._httpstatut;
  set httpstatut(int httpstatut) => _$this._httpstatut = httpstatut;

  String _error;
  String get error => _$this._error;
  set error(String error) => _$this._error = error;

  RemoveDoctorResponseBuilder();

  RemoveDoctorResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _version = $v.version;
      _request = $v.request;
      _params = $v.params.toBuilder();
      _message = $v.message;
      _httpstatut = $v.httpstatut;
      _error = $v.error;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RemoveDoctorResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RemoveDoctorResponse;
  }

  @override
  void update(void Function(RemoveDoctorResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RemoveDoctorResponse build() {
    _$RemoveDoctorResponse _$result;
    try {
      _$result = _$v ??
          new _$RemoveDoctorResponse._(
              version: BuiltValueNullFieldError.checkNotNull(
                  version, 'RemoveDoctorResponse', 'version'),
              request: BuiltValueNullFieldError.checkNotNull(
                  request, 'RemoveDoctorResponse', 'request'),
              params: params.build(),
              message: BuiltValueNullFieldError.checkNotNull(
                  message, 'RemoveDoctorResponse', 'message'),
              httpstatut: BuiltValueNullFieldError.checkNotNull(
                  httpstatut, 'RemoveDoctorResponse', 'httpstatut'),
              error: BuiltValueNullFieldError.checkNotNull(
                  error, 'RemoveDoctorResponse', 'error'));
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'params';
        params.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'RemoveDoctorResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$ParamsRemoveDoctorResponse extends ParamsRemoveDoctorResponse {
  @override
  final String tokenuser;
  @override
  final String id;

  factory _$ParamsRemoveDoctorResponse(
          [void Function(ParamsRemoveDoctorResponseBuilder) updates]) =>
      (new ParamsRemoveDoctorResponseBuilder()..update(updates)).build();

  _$ParamsRemoveDoctorResponse._({this.tokenuser, this.id}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        tokenuser, 'ParamsRemoveDoctorResponse', 'tokenuser');
    BuiltValueNullFieldError.checkNotNull(
        id, 'ParamsRemoveDoctorResponse', 'id');
  }

  @override
  ParamsRemoveDoctorResponse rebuild(
          void Function(ParamsRemoveDoctorResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ParamsRemoveDoctorResponseBuilder toBuilder() =>
      new ParamsRemoveDoctorResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ParamsRemoveDoctorResponse &&
        tokenuser == other.tokenuser &&
        id == other.id;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, tokenuser.hashCode), id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ParamsRemoveDoctorResponse')
          ..add('tokenuser', tokenuser)
          ..add('id', id))
        .toString();
  }
}

class ParamsRemoveDoctorResponseBuilder
    implements
        Builder<ParamsRemoveDoctorResponse, ParamsRemoveDoctorResponseBuilder> {
  _$ParamsRemoveDoctorResponse _$v;

  String _tokenuser;
  String get tokenuser => _$this._tokenuser;
  set tokenuser(String tokenuser) => _$this._tokenuser = tokenuser;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  ParamsRemoveDoctorResponseBuilder();

  ParamsRemoveDoctorResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tokenuser = $v.tokenuser;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ParamsRemoveDoctorResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ParamsRemoveDoctorResponse;
  }

  @override
  void update(void Function(ParamsRemoveDoctorResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ParamsRemoveDoctorResponse build() {
    final _$result = _$v ??
        new _$ParamsRemoveDoctorResponse._(
            tokenuser: BuiltValueNullFieldError.checkNotNull(
                tokenuser, 'ParamsRemoveDoctorResponse', 'tokenuser'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'ParamsRemoveDoctorResponse', 'id'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
