// GENERATED CODE - DO NOT MODIFY BY HAND

part of verify_notif_subscribtion;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<VerifyNotifSubscribtion> _$verifyNotifSubscribtionSerializer =
    new _$VerifyNotifSubscribtionSerializer();
Serializer<ParamsVerifyNotifSubscribtion>
    _$paramsVerifyNotifSubscribtionSerializer =
    new _$ParamsVerifyNotifSubscribtionSerializer();
Serializer<DataVerifyNotifSubscribtion>
    _$dataVerifyNotifSubscribtionSerializer =
    new _$DataVerifyNotifSubscribtionSerializer();

class _$VerifyNotifSubscribtionSerializer
    implements StructuredSerializer<VerifyNotifSubscribtion> {
  @override
  final Iterable<Type> types = const [
    VerifyNotifSubscribtion,
    _$VerifyNotifSubscribtion
  ];
  @override
  final String wireName = 'VerifyNotifSubscribtion';

  @override
  Iterable<Object> serialize(
      Serializers serializers, VerifyNotifSubscribtion object,
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
          specifiedType: const FullType(ParamsVerifyNotifSubscribtion))!,
      'error',
      serializers.serialize(object.error,
          specifiedType: const FullType(String))!,
      'message',
      serializers.serialize(object.message,
          specifiedType: const FullType(String))!,
      'data',
      serializers.serialize(object.data,
          specifiedType: const FullType(DataVerifyNotifSubscribtion))!,
    ];

    return result;
  }

  @override
  VerifyNotifSubscribtion deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new VerifyNotifSubscribtionBuilder();

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
                  specifiedType: const FullType(ParamsVerifyNotifSubscribtion))
              as ParamsVerifyNotifSubscribtion);
          break;
        case 'error':
          result.error = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'data':
          result.data.replace(serializers.deserialize(value,
                  specifiedType: const FullType(DataVerifyNotifSubscribtion))
              as DataVerifyNotifSubscribtion);
          break;
      }
    }

    return result.build();
  }
}

class _$ParamsVerifyNotifSubscribtionSerializer
    implements StructuredSerializer<ParamsVerifyNotifSubscribtion> {
  @override
  final Iterable<Type> types = const [
    ParamsVerifyNotifSubscribtion,
    _$ParamsVerifyNotifSubscribtion
  ];
  @override
  final String wireName = 'ParamsVerifyNotifSubscribtion';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ParamsVerifyNotifSubscribtion object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'tokenuser',
      serializers.serialize(object.tokenuser,
          specifiedType: const FullType(String))!,
      'installationkey',
      serializers.serialize(object.installationkey,
          specifiedType: const FullType(String))!,
    ];

    return result;
  }

  @override
  ParamsVerifyNotifSubscribtion deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ParamsVerifyNotifSubscribtionBuilder();

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
        case 'installationkey':
          result.installationkey = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$DataVerifyNotifSubscribtionSerializer
    implements StructuredSerializer<DataVerifyNotifSubscribtion> {
  @override
  final Iterable<Type> types = const [
    DataVerifyNotifSubscribtion,
    _$DataVerifyNotifSubscribtion
  ];
  @override
  final String wireName = 'DataVerifyNotifSubscribtion';

  @override
  Iterable<Object> serialize(
      Serializers serializers, DataVerifyNotifSubscribtion object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'issubscribed',
      serializers.serialize(object.issubscribed,
          specifiedType: const FullType(String))!,
      'total',
      serializers.serialize(object.total,
          specifiedType: const FullType(String))!,
    ];

    return result;
  }

  @override
  DataVerifyNotifSubscribtion deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DataVerifyNotifSubscribtionBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current!;
      switch (key) {
        case 'issubscribed':
          result.issubscribed = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'total':
          result.total = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$VerifyNotifSubscribtion extends VerifyNotifSubscribtion {
  @override
  final int httpstatut;
  @override
  final String version;
  @override
  final String request;
  @override
  final ParamsVerifyNotifSubscribtion params;
  @override
  final String error;
  @override
  final String message;
  @override
  final DataVerifyNotifSubscribtion data;

  factory _$VerifyNotifSubscribtion(
          [void Function(VerifyNotifSubscribtionBuilder)? updates]) =>
      (new VerifyNotifSubscribtionBuilder()..update(updates!)).build();

  _$VerifyNotifSubscribtion._(
      {
      required this.httpstatut,
      required this.version,
      required this.request,
      required this.params,
      required this.error,
      required this.message,
      required this.data})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        httpstatut, 'VerifyNotifSubscribtion', 'httpstatut');
    BuiltValueNullFieldError.checkNotNull(
        version, 'VerifyNotifSubscribtion', 'version');
    BuiltValueNullFieldError.checkNotNull(
        request, 'VerifyNotifSubscribtion', 'request');
    BuiltValueNullFieldError.checkNotNull(
        params, 'VerifyNotifSubscribtion', 'params');
    BuiltValueNullFieldError.checkNotNull(
        error, 'VerifyNotifSubscribtion', 'error');
    BuiltValueNullFieldError.checkNotNull(
        message, 'VerifyNotifSubscribtion', 'message');
    BuiltValueNullFieldError.checkNotNull(
        data, 'VerifyNotifSubscribtion', 'data');
  }

  @override
  VerifyNotifSubscribtion rebuild(
          void Function(VerifyNotifSubscribtionBuilder) updates) =>
      (toBuilder()..update(updates!)).build();

  @override
  VerifyNotifSubscribtionBuilder toBuilder() =>
      new VerifyNotifSubscribtionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VerifyNotifSubscribtion &&
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
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, httpstatut.hashCode), version.hashCode),
                        request.hashCode),
                    params.hashCode),
                error.hashCode),
            message.hashCode),
        data.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('VerifyNotifSubscribtion')
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

class VerifyNotifSubscribtionBuilder
    implements
        Builder<VerifyNotifSubscribtion, VerifyNotifSubscribtionBuilder> {
  _$VerifyNotifSubscribtion? _$v = _$VerifyNotifSubscribtion();

  int _httpstatut = 0;
  int get httpstatut => _$this._httpstatut;
  set httpstatut(int httpstatut) => _$this._httpstatut = httpstatut;

  String _version = '';
  String get version => _$this._version;
  set version(String version) => _$this._version = version;

  String _request = '';
  String get request => _$this._request;
  set request(String request) => _$this._request = request;

  ParamsVerifyNotifSubscribtionBuilder _params = ParamsVerifyNotifSubscribtionBuilder();
  ParamsVerifyNotifSubscribtionBuilder get params =>
      _$this._params ??= new ParamsVerifyNotifSubscribtionBuilder();
  set params(ParamsVerifyNotifSubscribtionBuilder params) =>
      _$this._params = params;

  String _error = '';
  String get error => _$this._error;
  set error(String error) => _$this._error = error;

  String _message = '';
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  DataVerifyNotifSubscribtionBuilder _data =DataVerifyNotifSubscribtionBuilder();
  DataVerifyNotifSubscribtionBuilder get data =>
      _$this._data ??= new DataVerifyNotifSubscribtionBuilder();
  set data(DataVerifyNotifSubscribtionBuilder data) => _$this._data = data;

  VerifyNotifSubscribtionBuilder();

  VerifyNotifSubscribtionBuilder get _$this {
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
  void replace(VerifyNotifSubscribtion other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$VerifyNotifSubscribtion;
  }

  @override
  void update(void Function(VerifyNotifSubscribtionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$VerifyNotifSubscribtion build() {
    _$VerifyNotifSubscribtion _$result;
    try {
      _$result = _$v ??
          new _$VerifyNotifSubscribtion._(
              httpstatut: BuiltValueNullFieldError.checkNotNull(
                  httpstatut, 'VerifyNotifSubscribtion', 'httpstatut'),
              version: BuiltValueNullFieldError.checkNotNull(
                  version, 'VerifyNotifSubscribtion', 'version'),
              request: BuiltValueNullFieldError.checkNotNull(
                  request, 'VerifyNotifSubscribtion', 'request'),
              params: params.build(),
              error: BuiltValueNullFieldError.checkNotNull(
                  error, 'VerifyNotifSubscribtion', 'error'),
              message: BuiltValueNullFieldError.checkNotNull(
                  message, 'VerifyNotifSubscribtion', 'message'),
              data: data.build());
    } catch (_) {
      String _$failedField = '';
      try {
        _$failedField = 'params';
        params.build();

        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'VerifyNotifSubscribtion', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$ParamsVerifyNotifSubscribtion extends ParamsVerifyNotifSubscribtion {
  @override
  final String tokenuser;
  @override
  final String installationkey;

  factory _$ParamsVerifyNotifSubscribtion(
          [void Function(ParamsVerifyNotifSubscribtionBuilder)? updates]) =>
      (new ParamsVerifyNotifSubscribtionBuilder()..update(updates!)).build();

  _$ParamsVerifyNotifSubscribtion._({required this.tokenuser,required this.installationkey})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        tokenuser, 'ParamsVerifyNotifSubscribtion', 'tokenuser');
    BuiltValueNullFieldError.checkNotNull(
        installationkey, 'ParamsVerifyNotifSubscribtion', 'installationkey');
  }

  @override
  ParamsVerifyNotifSubscribtion rebuild(
          void Function(ParamsVerifyNotifSubscribtionBuilder) updates) =>
      (toBuilder()..update(updates!)).build();

  @override
  ParamsVerifyNotifSubscribtionBuilder toBuilder() =>
      new ParamsVerifyNotifSubscribtionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ParamsVerifyNotifSubscribtion &&
        tokenuser == other.tokenuser &&
        installationkey == other.installationkey;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, tokenuser.hashCode), installationkey.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ParamsVerifyNotifSubscribtion')
          ..add('tokenuser', tokenuser)
          ..add('installationkey', installationkey))
        .toString();
  }
}

class ParamsVerifyNotifSubscribtionBuilder
    implements
        Builder<ParamsVerifyNotifSubscribtion,
            ParamsVerifyNotifSubscribtionBuilder> {
  _$ParamsVerifyNotifSubscribtion? _$v = _$ParamsVerifyNotifSubscribtion();

  String _tokenuser = '';
  String get tokenuser => _$this._tokenuser;
  set tokenuser(String tokenuser) => _$this._tokenuser = tokenuser;

  String _installationkey = '';
  String get installationkey => _$this._installationkey;
  set installationkey(String installationkey) =>
      _$this._installationkey = installationkey;

  ParamsVerifyNotifSubscribtionBuilder();

  ParamsVerifyNotifSubscribtionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tokenuser = $v.tokenuser;
      _installationkey = $v.installationkey;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ParamsVerifyNotifSubscribtion other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ParamsVerifyNotifSubscribtion;
  }

  @override
  void update(void Function(ParamsVerifyNotifSubscribtionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ParamsVerifyNotifSubscribtion build() {
    final _$result = _$v ??
        new _$ParamsVerifyNotifSubscribtion._(
            tokenuser: BuiltValueNullFieldError.checkNotNull(
                tokenuser, 'ParamsVerifyNotifSubscribtion', 'tokenuser'),
            installationkey: BuiltValueNullFieldError.checkNotNull(
                installationkey,
                'ParamsVerifyNotifSubscribtion',
                'installationkey'));
    replace(_$result);
    return _$result;
  }
}

class _$DataVerifyNotifSubscribtion extends DataVerifyNotifSubscribtion {
  @override
  final String issubscribed;
  @override
  final String total;

  factory _$DataVerifyNotifSubscribtion(
          [void Function(DataVerifyNotifSubscribtionBuilder)? updates]) =>
      (new DataVerifyNotifSubscribtionBuilder()..update(updates!)).build();

  _$DataVerifyNotifSubscribtion._({required this.issubscribed,required this.total}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        issubscribed, 'DataVerifyNotifSubscribtion', 'issubscribed');
    BuiltValueNullFieldError.checkNotNull(
        total, 'DataVerifyNotifSubscribtion', 'total');
  }

  @override
  DataVerifyNotifSubscribtion rebuild(
          void Function(DataVerifyNotifSubscribtionBuilder) updates) =>
      (toBuilder()..update(updates!)).build();

  @override
  DataVerifyNotifSubscribtionBuilder toBuilder() =>
      new DataVerifyNotifSubscribtionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DataVerifyNotifSubscribtion &&
        issubscribed == other.issubscribed &&
        total == other.total;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, issubscribed.hashCode), total.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DataVerifyNotifSubscribtion')
          ..add('issubscribed', issubscribed)
          ..add('total', total))
        .toString();
  }
}

class DataVerifyNotifSubscribtionBuilder
    implements
        Builder<DataVerifyNotifSubscribtion,
            DataVerifyNotifSubscribtionBuilder> {
  _$DataVerifyNotifSubscribtion? _$v = _$DataVerifyNotifSubscribtion();

  String _issubscribed = '';
  String get issubscribed => _$this._issubscribed;
  set issubscribed(String issubscribed) => _$this._issubscribed = issubscribed;

  String _total = '';
  String get total => _$this._total;
  set total(String total) => _$this._total = total;

  DataVerifyNotifSubscribtionBuilder();

  DataVerifyNotifSubscribtionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _issubscribed = $v.issubscribed;
      _total = $v.total;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DataVerifyNotifSubscribtion other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DataVerifyNotifSubscribtion;
  }

  @override
  void update(void Function(DataVerifyNotifSubscribtionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DataVerifyNotifSubscribtion build() {
    final _$result = _$v ??
        new _$DataVerifyNotifSubscribtion._(
            issubscribed: BuiltValueNullFieldError.checkNotNull(
                issubscribed, 'DataVerifyNotifSubscribtion', 'issubscribed'),
            total: BuiltValueNullFieldError.checkNotNull(
                total, 'DataVerifyNotifSubscribtion', 'total'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
