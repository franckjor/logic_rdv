// GENERATED CODE - DO NOT MODIFY BY HAND

part of validate_rdv_summary_dto;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ValidateRdvSummaryDto> _$validateRdvSummaryDtoSerializer =
    new _$ValidateRdvSummaryDtoSerializer();
Serializer<ParamsValidateRdvSummaryDto>
    _$paramsValidateRdvSummaryDtoSerializer =
    new _$ParamsValidateRdvSummaryDtoSerializer();
Serializer<DataValidateRdvSummaryDto2> _$dataValidateRdvSummaryDto2Serializer =
    new _$DataValidateRdvSummaryDto2Serializer();
Serializer<AppointmentSummary> _$appointmentSummarySerializer =
    new _$AppointmentSummarySerializer();
Serializer<PaymentIntentSummary> _$paymentIntentSummarySerializer =
    new _$PaymentIntentSummarySerializer();
Serializer<DataValidateRdvSummaryDto> _$dataValidateRdvSummaryDtoSerializer =
    new _$DataValidateRdvSummaryDtoSerializer();

class _$ValidateRdvSummaryDtoSerializer
    implements StructuredSerializer<ValidateRdvSummaryDto> {
  @override
  final Iterable<Type> types = const [
    ValidateRdvSummaryDto,
    _$ValidateRdvSummaryDto
  ];
  @override
  final String wireName = 'ValidateRdvSummaryDto';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ValidateRdvSummaryDto object,
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
          specifiedType: const FullType(ParamsValidateRdvSummaryDto)),
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
          specifiedType: const FullType(DataValidateRdvSummaryDto)),
    ];

    return result;
  }

  @override
  ValidateRdvSummaryDto deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ValidateRdvSummaryDtoBuilder();

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
                  specifiedType: const FullType(ParamsValidateRdvSummaryDto))
              as ParamsValidateRdvSummaryDto);
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
        case 'data':
          result.data.replace(serializers.deserialize(value,
                  specifiedType: const FullType(DataValidateRdvSummaryDto))
              as DataValidateRdvSummaryDto);
          break;
      }
    }

    return result.build();
  }
}

class _$ParamsValidateRdvSummaryDtoSerializer
    implements StructuredSerializer<ParamsValidateRdvSummaryDto> {
  @override
  final Iterable<Type> types = const [
    ParamsValidateRdvSummaryDto,
    _$ParamsValidateRdvSummaryDto
  ];
  @override
  final String wireName = 'ParamsValidateRdvSummaryDto';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ParamsValidateRdvSummaryDto object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'tokenuser',
      serializers.serialize(object.tokenuser,
          specifiedType: const FullType(String)),
      'tokenappointment',
      serializers.serialize(object.tokenappointment,
          specifiedType: const FullType(String)),
      'week',
      serializers.serialize(object.week, specifiedType: const FullType(String)),
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
  ParamsValidateRdvSummaryDto deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ParamsValidateRdvSummaryDtoBuilder();

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

class _$DataValidateRdvSummaryDto2Serializer
    implements StructuredSerializer<DataValidateRdvSummaryDto2> {
  @override
  final Iterable<Type> types = const [
    DataValidateRdvSummaryDto2,
    _$DataValidateRdvSummaryDto2
  ];
  @override
  final String wireName = 'DataValidateRdvSummaryDto2';

  @override
  Iterable<Object> serialize(
      Serializers serializers, DataValidateRdvSummaryDto2 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.appointment;
    if (value != null) {
      result
        ..add('appointment')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.apptbuttonvalidation;
    if (value != null) {
      result
        ..add('apptbuttonvalidation')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(Apptbuttonvalidation)));
    }
    return result;
  }

  @override
  DataValidateRdvSummaryDto2 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DataValidateRdvSummaryDto2Builder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'appointment':
          result.appointment = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'apptbuttonvalidation':
          result.apptbuttonvalidation.replace(serializers.deserialize(value,
                  specifiedType: const FullType(Apptbuttonvalidation))
              as Apptbuttonvalidation);
          break;
      }
    }

    return result.build();
  }
}

class _$AppointmentSummarySerializer
    implements StructuredSerializer<AppointmentSummary> {
  @override
  final Iterable<Type> types = const [AppointmentSummary, _$AppointmentSummary];
  @override
  final String wireName = 'AppointmentSummary';

  @override
  Iterable<Object> serialize(Serializers serializers, AppointmentSummary object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.appointment;
    if (value != null) {
      result
        ..add('appointment')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  AppointmentSummary deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AppointmentSummaryBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'appointment':
          result.appointment = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$PaymentIntentSummarySerializer
    implements StructuredSerializer<PaymentIntentSummary> {
  @override
  final Iterable<Type> types = const [
    PaymentIntentSummary,
    _$PaymentIntentSummary
  ];
  @override
  final String wireName = 'PaymentIntentSummary';

  @override
  Iterable<Object> serialize(
      Serializers serializers, PaymentIntentSummary object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.stripeClientSecret;
    if (value != null) {
      result
        ..add('stripeClientSecret')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  PaymentIntentSummary deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PaymentIntentSummaryBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'stripeClientSecret':
          result.stripeClientSecret = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$DataValidateRdvSummaryDtoSerializer
    implements StructuredSerializer<DataValidateRdvSummaryDto> {
  @override
  final Iterable<Type> types = const [
    DataValidateRdvSummaryDto,
    _$DataValidateRdvSummaryDto
  ];
  @override
  final String wireName = 'DataValidateRdvSummaryDto';

  @override
  Iterable<Object> serialize(
      Serializers serializers, DataValidateRdvSummaryDto object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'session',
      serializers.serialize(object.session,
          specifiedType: const FullType(String)),
      'headermessage',
      serializers.serialize(object.headermessage,
          specifiedType: const FullType(String)),
      'type',
      serializers.serialize(object.type, specifiedType: const FullType(String)),
    ];
    Object value;
    value = object.data;
    if (value != null) {
      result
        ..add('data')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DataValidateRdvSummaryDto2)));
    }
    value = object.paymentIntent;
    if (value != null) {
      result
        ..add('payment_intent')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(PaymentIntentSummary)));
    }
    return result;
  }

  @override
  DataValidateRdvSummaryDto deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DataValidateRdvSummaryDtoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'session':
          result.session = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'headermessage':
          result.headermessage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'data':
          result.data.replace(serializers.deserialize(value,
                  specifiedType: const FullType(DataValidateRdvSummaryDto2))
              as DataValidateRdvSummaryDto2);
          break;
        case 'payment_intent':
          result.paymentIntent.replace(serializers.deserialize(value,
                  specifiedType: const FullType(PaymentIntentSummary))
              as PaymentIntentSummary);
          break;
      }
    }

    return result.build();
  }
}

class _$ValidateRdvSummaryDto extends ValidateRdvSummaryDto {
  @override
  final String version;
  @override
  final String request;
  @override
  final ParamsValidateRdvSummaryDto params;
  @override
  final String message;
  @override
  final int httpstatut;
  @override
  final String error;
  @override
  final DataValidateRdvSummaryDto data;

  factory _$ValidateRdvSummaryDto(
          [void Function(ValidateRdvSummaryDtoBuilder) updates]) =>
      (new ValidateRdvSummaryDtoBuilder()..update(updates)).build();

  _$ValidateRdvSummaryDto._(
      {this.version,
      this.request,
      this.params,
      this.message,
      this.httpstatut,
      this.error,
      this.data})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        version, 'ValidateRdvSummaryDto', 'version');
    BuiltValueNullFieldError.checkNotNull(
        request, 'ValidateRdvSummaryDto', 'request');
    BuiltValueNullFieldError.checkNotNull(
        params, 'ValidateRdvSummaryDto', 'params');
    BuiltValueNullFieldError.checkNotNull(
        message, 'ValidateRdvSummaryDto', 'message');
    BuiltValueNullFieldError.checkNotNull(
        httpstatut, 'ValidateRdvSummaryDto', 'httpstatut');
    BuiltValueNullFieldError.checkNotNull(
        error, 'ValidateRdvSummaryDto', 'error');
    BuiltValueNullFieldError.checkNotNull(
        data, 'ValidateRdvSummaryDto', 'data');
  }

  @override
  ValidateRdvSummaryDto rebuild(
          void Function(ValidateRdvSummaryDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ValidateRdvSummaryDtoBuilder toBuilder() =>
      new ValidateRdvSummaryDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ValidateRdvSummaryDto &&
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
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, version.hashCode), request.hashCode),
                        params.hashCode),
                    message.hashCode),
                httpstatut.hashCode),
            error.hashCode),
        data.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ValidateRdvSummaryDto')
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

class ValidateRdvSummaryDtoBuilder
    implements Builder<ValidateRdvSummaryDto, ValidateRdvSummaryDtoBuilder> {
  _$ValidateRdvSummaryDto _$v;

  String _version;
  String get version => _$this._version;
  set version(String version) => _$this._version = version;

  String _request;
  String get request => _$this._request;
  set request(String request) => _$this._request = request;

  ParamsValidateRdvSummaryDtoBuilder _params;
  ParamsValidateRdvSummaryDtoBuilder get params =>
      _$this._params ??= new ParamsValidateRdvSummaryDtoBuilder();
  set params(ParamsValidateRdvSummaryDtoBuilder params) =>
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

  DataValidateRdvSummaryDtoBuilder _data;
  DataValidateRdvSummaryDtoBuilder get data =>
      _$this._data ??= new DataValidateRdvSummaryDtoBuilder();
  set data(DataValidateRdvSummaryDtoBuilder data) => _$this._data = data;

  ValidateRdvSummaryDtoBuilder();

  ValidateRdvSummaryDtoBuilder get _$this {
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
  void replace(ValidateRdvSummaryDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ValidateRdvSummaryDto;
  }

  @override
  void update(void Function(ValidateRdvSummaryDtoBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ValidateRdvSummaryDto build() {
    _$ValidateRdvSummaryDto _$result;
    try {
      _$result = _$v ??
          new _$ValidateRdvSummaryDto._(
              version: BuiltValueNullFieldError.checkNotNull(
                  version, 'ValidateRdvSummaryDto', 'version'),
              request: BuiltValueNullFieldError.checkNotNull(
                  request, 'ValidateRdvSummaryDto', 'request'),
              params: params.build(),
              message: BuiltValueNullFieldError.checkNotNull(
                  message, 'ValidateRdvSummaryDto', 'message'),
              httpstatut: BuiltValueNullFieldError.checkNotNull(
                  httpstatut, 'ValidateRdvSummaryDto', 'httpstatut'),
              error: BuiltValueNullFieldError.checkNotNull(
                  error, 'ValidateRdvSummaryDto', 'error'),
              data: data.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'params';
        params.build();

        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ValidateRdvSummaryDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$ParamsValidateRdvSummaryDto extends ParamsValidateRdvSummaryDto {
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

  factory _$ParamsValidateRdvSummaryDto(
          [void Function(ParamsValidateRdvSummaryDtoBuilder) updates]) =>
      (new ParamsValidateRdvSummaryDtoBuilder()..update(updates)).build();

  _$ParamsValidateRdvSummaryDto._(
      {this.tokenuser,
      this.tokenappointment,
      this.week,
      this.data,
      this.action,
      this.session})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        tokenuser, 'ParamsValidateRdvSummaryDto', 'tokenuser');
    BuiltValueNullFieldError.checkNotNull(
        tokenappointment, 'ParamsValidateRdvSummaryDto', 'tokenappointment');
    BuiltValueNullFieldError.checkNotNull(
        week, 'ParamsValidateRdvSummaryDto', 'week');
    BuiltValueNullFieldError.checkNotNull(
        data, 'ParamsValidateRdvSummaryDto', 'data');
    BuiltValueNullFieldError.checkNotNull(
        action, 'ParamsValidateRdvSummaryDto', 'action');
    BuiltValueNullFieldError.checkNotNull(
        session, 'ParamsValidateRdvSummaryDto', 'session');
  }

  @override
  ParamsValidateRdvSummaryDto rebuild(
          void Function(ParamsValidateRdvSummaryDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ParamsValidateRdvSummaryDtoBuilder toBuilder() =>
      new ParamsValidateRdvSummaryDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ParamsValidateRdvSummaryDto &&
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
    return (newBuiltValueToStringHelper('ParamsValidateRdvSummaryDto')
          ..add('tokenuser', tokenuser)
          ..add('tokenappointment', tokenappointment)
          ..add('week', week)
          ..add('data', data)
          ..add('action', action)
          ..add('session', session))
        .toString();
  }
}

class ParamsValidateRdvSummaryDtoBuilder
    implements
        Builder<ParamsValidateRdvSummaryDto,
            ParamsValidateRdvSummaryDtoBuilder> {
  _$ParamsValidateRdvSummaryDto _$v;

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

  ParamsValidateRdvSummaryDtoBuilder();

  ParamsValidateRdvSummaryDtoBuilder get _$this {
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
  void replace(ParamsValidateRdvSummaryDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ParamsValidateRdvSummaryDto;
  }

  @override
  void update(void Function(ParamsValidateRdvSummaryDtoBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ParamsValidateRdvSummaryDto build() {
    final _$result = _$v ??
        new _$ParamsValidateRdvSummaryDto._(
            tokenuser: BuiltValueNullFieldError.checkNotNull(
                tokenuser, 'ParamsValidateRdvSummaryDto', 'tokenuser'),
            tokenappointment: BuiltValueNullFieldError.checkNotNull(
                tokenappointment,
                'ParamsValidateRdvSummaryDto',
                'tokenappointment'),
            week: BuiltValueNullFieldError.checkNotNull(
                week, 'ParamsValidateRdvSummaryDto', 'week'),
            data: BuiltValueNullFieldError.checkNotNull(
                data, 'ParamsValidateRdvSummaryDto', 'data'),
            action: BuiltValueNullFieldError.checkNotNull(
                action, 'ParamsValidateRdvSummaryDto', 'action'),
            session: BuiltValueNullFieldError.checkNotNull(
                session, 'ParamsValidateRdvSummaryDto', 'session'));
    replace(_$result);
    return _$result;
  }
}

class _$DataValidateRdvSummaryDto2 extends DataValidateRdvSummaryDto2 {
  @override
  final String appointment;
  @override
  final Apptbuttonvalidation apptbuttonvalidation;

  factory _$DataValidateRdvSummaryDto2(
          [void Function(DataValidateRdvSummaryDto2Builder) updates]) =>
      (new DataValidateRdvSummaryDto2Builder()..update(updates)).build();

  _$DataValidateRdvSummaryDto2._({this.appointment, this.apptbuttonvalidation})
      : super._();

  @override
  DataValidateRdvSummaryDto2 rebuild(
          void Function(DataValidateRdvSummaryDto2Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DataValidateRdvSummaryDto2Builder toBuilder() =>
      new DataValidateRdvSummaryDto2Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DataValidateRdvSummaryDto2 &&
        appointment == other.appointment &&
        apptbuttonvalidation == other.apptbuttonvalidation;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc(0, appointment.hashCode), apptbuttonvalidation.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DataValidateRdvSummaryDto2')
          ..add('appointment', appointment)
          ..add('apptbuttonvalidation', apptbuttonvalidation))
        .toString();
  }
}

class DataValidateRdvSummaryDto2Builder
    implements
        Builder<DataValidateRdvSummaryDto2, DataValidateRdvSummaryDto2Builder> {
  _$DataValidateRdvSummaryDto2 _$v;

  String _appointment;
  String get appointment => _$this._appointment;
  set appointment(String appointment) => _$this._appointment = appointment;

  ApptbuttonvalidationBuilder _apptbuttonvalidation;
  ApptbuttonvalidationBuilder get apptbuttonvalidation =>
      _$this._apptbuttonvalidation ??= new ApptbuttonvalidationBuilder();
  set apptbuttonvalidation(ApptbuttonvalidationBuilder apptbuttonvalidation) =>
      _$this._apptbuttonvalidation = apptbuttonvalidation;

  DataValidateRdvSummaryDto2Builder();

  DataValidateRdvSummaryDto2Builder get _$this {
    final $v = _$v;
    if ($v != null) {
      _appointment = $v.appointment;
      _apptbuttonvalidation = $v.apptbuttonvalidation?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DataValidateRdvSummaryDto2 other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DataValidateRdvSummaryDto2;
  }

  @override
  void update(void Function(DataValidateRdvSummaryDto2Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DataValidateRdvSummaryDto2 build() {
    _$DataValidateRdvSummaryDto2 _$result;
    try {
      _$result = _$v ??
          new _$DataValidateRdvSummaryDto2._(
              appointment: appointment,
              apptbuttonvalidation: _apptbuttonvalidation?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'apptbuttonvalidation';
        _apptbuttonvalidation?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'DataValidateRdvSummaryDto2', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$AppointmentSummary extends AppointmentSummary {
  @override
  final String appointment;

  factory _$AppointmentSummary(
          [void Function(AppointmentSummaryBuilder) updates]) =>
      (new AppointmentSummaryBuilder()..update(updates)).build();

  _$AppointmentSummary._({this.appointment}) : super._();

  @override
  AppointmentSummary rebuild(
          void Function(AppointmentSummaryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AppointmentSummaryBuilder toBuilder() =>
      new AppointmentSummaryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppointmentSummary && appointment == other.appointment;
  }

  @override
  int get hashCode {
    return $jf($jc(0, appointment.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AppointmentSummary')
          ..add('appointment', appointment))
        .toString();
  }
}

class AppointmentSummaryBuilder
    implements Builder<AppointmentSummary, AppointmentSummaryBuilder> {
  _$AppointmentSummary _$v;

  String _appointment;
  String get appointment => _$this._appointment;
  set appointment(String appointment) => _$this._appointment = appointment;

  AppointmentSummaryBuilder();

  AppointmentSummaryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _appointment = $v.appointment;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppointmentSummary other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AppointmentSummary;
  }

  @override
  void update(void Function(AppointmentSummaryBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AppointmentSummary build() {
    final _$result =
        _$v ?? new _$AppointmentSummary._(appointment: appointment);
    replace(_$result);
    return _$result;
  }
}

class _$PaymentIntentSummary extends PaymentIntentSummary {
  @override
  final String stripeClientSecret;

  factory _$PaymentIntentSummary(
          [void Function(PaymentIntentSummaryBuilder) updates]) =>
      (new PaymentIntentSummaryBuilder()..update(updates)).build();

  _$PaymentIntentSummary._({this.stripeClientSecret}) : super._();

  @override
  PaymentIntentSummary rebuild(
          void Function(PaymentIntentSummaryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PaymentIntentSummaryBuilder toBuilder() =>
      new PaymentIntentSummaryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PaymentIntentSummary &&
        stripeClientSecret == other.stripeClientSecret;
  }

  @override
  int get hashCode {
    return $jf($jc(0, stripeClientSecret.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PaymentIntentSummary')
          ..add('stripeClientSecret', stripeClientSecret))
        .toString();
  }
}

class PaymentIntentSummaryBuilder
    implements Builder<PaymentIntentSummary, PaymentIntentSummaryBuilder> {
  _$PaymentIntentSummary _$v;

  String _stripeClientSecret;
  String get stripeClientSecret => _$this._stripeClientSecret;
  set stripeClientSecret(String stripeClientSecret) =>
      _$this._stripeClientSecret = stripeClientSecret;

  PaymentIntentSummaryBuilder();

  PaymentIntentSummaryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _stripeClientSecret = $v.stripeClientSecret;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PaymentIntentSummary other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PaymentIntentSummary;
  }

  @override
  void update(void Function(PaymentIntentSummaryBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PaymentIntentSummary build() {
    final _$result = _$v ??
        new _$PaymentIntentSummary._(stripeClientSecret: stripeClientSecret);
    replace(_$result);
    return _$result;
  }
}

class _$DataValidateRdvSummaryDto extends DataValidateRdvSummaryDto {
  @override
  final String session;
  @override
  final String headermessage;
  @override
  final String type;
  @override
  final DataValidateRdvSummaryDto2 data;
  @override
  final PaymentIntentSummary paymentIntent;

  factory _$DataValidateRdvSummaryDto(
          [void Function(DataValidateRdvSummaryDtoBuilder) updates]) =>
      (new DataValidateRdvSummaryDtoBuilder()..update(updates)).build();

  _$DataValidateRdvSummaryDto._(
      {this.session,
      this.headermessage,
      this.type,
      this.data,
      this.paymentIntent})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        session, 'DataValidateRdvSummaryDto', 'session');
    BuiltValueNullFieldError.checkNotNull(
        headermessage, 'DataValidateRdvSummaryDto', 'headermessage');
    BuiltValueNullFieldError.checkNotNull(
        type, 'DataValidateRdvSummaryDto', 'type');
  }

  @override
  DataValidateRdvSummaryDto rebuild(
          void Function(DataValidateRdvSummaryDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DataValidateRdvSummaryDtoBuilder toBuilder() =>
      new DataValidateRdvSummaryDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DataValidateRdvSummaryDto &&
        session == other.session &&
        headermessage == other.headermessage &&
        type == other.type &&
        data == other.data &&
        paymentIntent == other.paymentIntent;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, session.hashCode), headermessage.hashCode),
                type.hashCode),
            data.hashCode),
        paymentIntent.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DataValidateRdvSummaryDto')
          ..add('session', session)
          ..add('headermessage', headermessage)
          ..add('type', type)
          ..add('data', data)
          ..add('paymentIntent', paymentIntent))
        .toString();
  }
}

class DataValidateRdvSummaryDtoBuilder
    implements
        Builder<DataValidateRdvSummaryDto, DataValidateRdvSummaryDtoBuilder> {
  _$DataValidateRdvSummaryDto _$v;

  String _session;
  String get session => _$this._session;
  set session(String session) => _$this._session = session;

  String _headermessage;
  String get headermessage => _$this._headermessage;
  set headermessage(String headermessage) =>
      _$this._headermessage = headermessage;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  DataValidateRdvSummaryDto2Builder _data;
  DataValidateRdvSummaryDto2Builder get data =>
      _$this._data ??= new DataValidateRdvSummaryDto2Builder();
  set data(DataValidateRdvSummaryDto2Builder data) => _$this._data = data;

  PaymentIntentSummaryBuilder _paymentIntent;
  PaymentIntentSummaryBuilder get paymentIntent =>
      _$this._paymentIntent ??= new PaymentIntentSummaryBuilder();
  set paymentIntent(PaymentIntentSummaryBuilder paymentIntent) =>
      _$this._paymentIntent = paymentIntent;

  DataValidateRdvSummaryDtoBuilder();

  DataValidateRdvSummaryDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _session = $v.session;
      _headermessage = $v.headermessage;
      _type = $v.type;
      _data = $v.data?.toBuilder();
      _paymentIntent = $v.paymentIntent?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DataValidateRdvSummaryDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DataValidateRdvSummaryDto;
  }

  @override
  void update(void Function(DataValidateRdvSummaryDtoBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DataValidateRdvSummaryDto build() {
    _$DataValidateRdvSummaryDto _$result;
    try {
      _$result = _$v ??
          new _$DataValidateRdvSummaryDto._(
              session: BuiltValueNullFieldError.checkNotNull(
                  session, 'DataValidateRdvSummaryDto', 'session'),
              headermessage: BuiltValueNullFieldError.checkNotNull(
                  headermessage, 'DataValidateRdvSummaryDto', 'headermessage'),
              type: BuiltValueNullFieldError.checkNotNull(
                  type, 'DataValidateRdvSummaryDto', 'type'),
              data: _data?.build(),
              paymentIntent: _paymentIntent?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
        _$failedField = 'paymentIntent';
        _paymentIntent?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'DataValidateRdvSummaryDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
