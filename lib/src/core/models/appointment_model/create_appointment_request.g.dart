// GENERATED CODE - DO NOT MODIFY BY HAND

part of create_appointment_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CreateAppointmentRequest> _$createAppointmentRequestSerializer =
    new _$CreateAppointmentRequestSerializer();

class _$CreateAppointmentRequestSerializer
    implements StructuredSerializer<CreateAppointmentRequest> {
  @override
  final Iterable<Type> types = const [
    CreateAppointmentRequest,
    _$CreateAppointmentRequest
  ];
  @override
  final String wireName = 'CreateAppointmentRequest';

  @override
  Iterable<Object> serialize(
      Serializers serializers, CreateAppointmentRequest object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.tokenuser;
    if (value != null) {
      result
        ..add('tokenuser')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.tokenappointment;
    if (value != null) {
      result
        ..add('tokenappointment')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.week;
    if (value != null) {
      result
        ..add('week')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.data;
    if (value != null) {
      result
        ..add('data')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.action;
    if (value != null) {
      result
        ..add('action')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.session;
    if (value != null) {
      result
        ..add('session')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  CreateAppointmentRequest deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CreateAppointmentRequestBuilder();

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
        case 'tokenappointment':
          result.tokenappointment = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'week':
          result.week = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
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

class _$CreateAppointmentRequest extends CreateAppointmentRequest {
  @override
  final String tokenuser;
  @override
  final String tokenappointment;
  @override
  final String week;
  @override
  final String data;
  @override
  final String action;
  @override
  final String session;

  factory _$CreateAppointmentRequest(
          [void Function(CreateAppointmentRequestBuilder) updates]) =>
      (new CreateAppointmentRequestBuilder()..update(updates)).build();

  _$CreateAppointmentRequest._(
      {this.tokenuser,
      this.tokenappointment,
      this.week,
      this.data,
      this.action,
      this.session})
      : super._();

  @override
  CreateAppointmentRequest rebuild(
          void Function(CreateAppointmentRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateAppointmentRequestBuilder toBuilder() =>
      new CreateAppointmentRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateAppointmentRequest &&
        tokenuser == other.tokenuser &&
        tokenappointment == other.tokenappointment &&
        week == other.week &&
        data == other.data &&
        action == other.action &&
        session == other.session;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, tokenuser.hashCode), tokenappointment.hashCode),
                    week.hashCode),
                data.hashCode),
            action.hashCode),
        session.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CreateAppointmentRequest')
          ..add('tokenuser', tokenuser)
          ..add('tokenappointment', tokenappointment)
          ..add('week', week)
          ..add('data', data)
          ..add('action', action)
          ..add('session', session))
        .toString();
  }
}

class CreateAppointmentRequestBuilder
    implements
        Builder<CreateAppointmentRequest, CreateAppointmentRequestBuilder> {
  _$CreateAppointmentRequest _$v;

  String _tokenuser;
  String get tokenuser => _$this._tokenuser;
  set tokenuser(String tokenuser) => _$this._tokenuser = tokenuser;

  String _tokenappointment;
  String get tokenappointment => _$this._tokenappointment;
  set tokenappointment(String tokenappointment) =>
      _$this._tokenappointment = tokenappointment;

  String _week;
  String get week => _$this._week;
  set week(String week) => _$this._week = week;

  String _data;
  String get data => _$this._data;
  set data(String data) => _$this._data = data;

  String _action;
  String get action => _$this._action;
  set action(String action) => _$this._action = action;

  String _session;
  String get session => _$this._session;
  set session(String session) => _$this._session = session;

  CreateAppointmentRequestBuilder();

  CreateAppointmentRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tokenuser = $v.tokenuser;
      _tokenappointment = $v.tokenappointment;
      _week = $v.week;
      _data = $v.data;
      _action = $v.action;
      _session = $v.session;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateAppointmentRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateAppointmentRequest;
  }

  @override
  void update(void Function(CreateAppointmentRequestBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CreateAppointmentRequest build() {
    final _$result = _$v ??
        new _$CreateAppointmentRequest._(
            tokenuser: tokenuser,
            tokenappointment: tokenappointment,
            week: week,
            data: data,
            action: action,
            session: session);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
