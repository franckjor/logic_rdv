// GENERATED CODE - DO NOT MODIFY BY HAND

part of login_started_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LoginStartedRequest> _$loginStartedRequestSerializer =
    new _$LoginStartedRequestSerializer();

class _$LoginStartedRequestSerializer
    implements StructuredSerializer<LoginStartedRequest> {
  @override
  final Iterable<Type> types = const [
    LoginStartedRequest,
    _$LoginStartedRequest
  ];
  @override
  final String wireName = 'LoginStartedRequest';

  @override
  Iterable<Object> serialize(
      Serializers serializers, LoginStartedRequest object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'data',
      serializers.serialize(object.data, specifiedType: const FullType(String)),
      'action',
      serializers.serialize(object.action,
          specifiedType: const FullType(String)),
      'session',
      serializers.serialize(object.session,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  LoginStartedRequest deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LoginStartedRequestBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'data':
          result.data = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'action':
          result.action = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'session':
          result.session = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$LoginStartedRequest extends LoginStartedRequest {
  @override
  final String data;
  @override
  final String action;
  @override
  final String session;

  factory _$LoginStartedRequest(
          [void Function(LoginStartedRequestBuilder) updates]) =>
      (new LoginStartedRequestBuilder()..update(updates)).build();

  _$LoginStartedRequest._({this.data, this.action, this.session}) : super._() {
    BuiltValueNullFieldError.checkNotNull(data, 'LoginStartedRequest', 'data');
    BuiltValueNullFieldError.checkNotNull(
        action, 'LoginStartedRequest', 'action');
    BuiltValueNullFieldError.checkNotNull(
        session, 'LoginStartedRequest', 'session');
  }

  @override
  LoginStartedRequest rebuild(
          void Function(LoginStartedRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LoginStartedRequestBuilder toBuilder() =>
      new LoginStartedRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LoginStartedRequest &&
        data == other.data &&
        action == other.action &&
        session == other.session;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, data.hashCode), action.hashCode), session.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('LoginStartedRequest')
          ..add('data', data)
          ..add('action', action)
          ..add('session', session))
        .toString();
  }
}

class LoginStartedRequestBuilder
    implements Builder<LoginStartedRequest, LoginStartedRequestBuilder> {
  _$LoginStartedRequest _$v;

  String _data;
  String get data => _$this._data;
  set data(String data) => _$this._data = data;

  String _action;
  String get action => _$this._action;
  set action(String action) => _$this._action = action;

  String _session;
  String get session => _$this._session;
  set session(String session) => _$this._session = session;

  LoginStartedRequestBuilder();

  LoginStartedRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data;
      _action = $v.action;
      _session = $v.session;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LoginStartedRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LoginStartedRequest;
  }

  @override
  void update(void Function(LoginStartedRequestBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$LoginStartedRequest build() {
    final _$result = _$v ??
        new _$LoginStartedRequest._(
            data: BuiltValueNullFieldError.checkNotNull(
                data, 'LoginStartedRequest', 'data'),
            action: BuiltValueNullFieldError.checkNotNull(
                action, 'LoginStartedRequest', 'action'),
            session: BuiltValueNullFieldError.checkNotNull(
                session, 'LoginStartedRequest', 'session'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
