// GENERATED CODE - DO NOT MODIFY BY HAND

part of create_appointment_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CreateAppointmentResponse> _$createAppointmentResponseSerializer =
    new _$CreateAppointmentResponseSerializer();
Serializer<ParamsCreateAppointmentResponse>
    _$paramsCreateAppointmentResponseSerializer =
    new _$ParamsCreateAppointmentResponseSerializer();
Serializer<DataCreateAppointmentResponse>
    _$dataCreateAppointmentResponseSerializer =
    new _$DataCreateAppointmentResponseSerializer();
Serializer<AppointmentTypeResponse> _$appointmentTypeResponseSerializer =
    new _$AppointmentTypeResponseSerializer();
Serializer<AppointmentNavigation> _$appointmentNavigationSerializer =
    new _$AppointmentNavigationSerializer();

class _$CreateAppointmentResponseSerializer
    implements StructuredSerializer<CreateAppointmentResponse> {
  @override
  final Iterable<Type> types = const [
    CreateAppointmentResponse,
    _$CreateAppointmentResponse
  ];
  @override
  final String wireName = 'CreateAppointmentResponse';

  @override
  Iterable<Object> serialize(
      Serializers serializers, CreateAppointmentResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.version;
    if (value != null) {
      result
        ..add('version')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String))!);
    }
    value = object.request;
    if (value != null) {
      result
        ..add('request')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String))!);
    }
    value = object.params;
    if (value != null) {
      result
        ..add('params')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(ParamsCreateAppointmentResponse))!);
    }
    value = object.message;
    if (value != null) {
      result
        ..add('message')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String))!);
    }
    value = object.httpstatut;
    if (value != null) {
      result
        ..add('httpstatut')
        ..add(serializers.serialize(value, specifiedType: const FullType(int))!);
    }
    value = object.error;
    if (value != null) {
      result
        ..add('error')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String))!);
    }
    value = object.data;
    if (value != null) {
      result
        ..add('data')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DataCreateAppointmentResponse))!);
    }
    return result;
  }

  @override
  CreateAppointmentResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CreateAppointmentResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current!;
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
                  specifiedType:
                      const FullType(ParamsCreateAppointmentResponse))
              as ParamsCreateAppointmentResponse);
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
                  specifiedType: const FullType(DataCreateAppointmentResponse))
              as DataCreateAppointmentResponse);
          break;
      }
    }

    return result.build();
  }
}

class _$ParamsCreateAppointmentResponseSerializer
    implements StructuredSerializer<ParamsCreateAppointmentResponse> {
  @override
  final Iterable<Type> types = const [
    ParamsCreateAppointmentResponse,
    _$ParamsCreateAppointmentResponse
  ];
  @override
  final String wireName = 'ParamsCreateAppointmentResponse';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ParamsCreateAppointmentResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.tokenuser;
    if (value != null) {
      result
        ..add('tokenuser')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String))!);
    }
    value = object.tokenappointment;
    if (value != null) {
      result
        ..add('tokenappointment')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String))!);
    }
    value = object.week;
    if (value != null) {
      result
        ..add('week')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String))!);
    }
    value = object.data;
    if (value != null) {
      result
        ..add('data')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String))!);
    }
    value = object.action;
    if (value != null) {
      result
        ..add('action')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String))!);
    }
    value = object.session;
    if (value != null) {
      result
        ..add('session')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String))!);
    }
    return result;
  }

  @override
  ParamsCreateAppointmentResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ParamsCreateAppointmentResponseBuilder();

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

class _$DataCreateAppointmentResponseSerializer
    implements StructuredSerializer<DataCreateAppointmentResponse> {
  @override
  final Iterable<Type> types = const [
    DataCreateAppointmentResponse,
    _$DataCreateAppointmentResponse
  ];
  @override
  final String wireName = 'DataCreateAppointmentResponse';

  @override
  Iterable<Object> serialize(
      Serializers serializers, DataCreateAppointmentResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.session;
    if (value != null) {
      result
        ..add('session')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String))!);
    }
    value = object.navigation;
    if (value != null) {
      result
        ..add('navigation')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(AppointmentNavigation)]))!);
    }
    value = object.headermessage;
    if (value != null) {
      result
        ..add('headermessage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String))!);
    }
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String))!);
    }
    value = object.data;
    if (value != null) {
      result
        ..add('data')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(AppointmentTypeResponse)]))!);
    }
    return result;
  }

  @override
  DataCreateAppointmentResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DataCreateAppointmentResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current!;
      switch (key) {
        case 'session':
          result.session = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'navigation':
          result.navigation.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(AppointmentNavigation)]))
              as BuiltList<Object>);
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
              specifiedType: const FullType(BuiltList, const [
                const FullType(AppointmentTypeResponse)
              ])) as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$AppointmentTypeResponseSerializer
    implements StructuredSerializer<AppointmentTypeResponse> {
  @override
  final Iterable<Type> types = const [
    AppointmentTypeResponse,
    _$AppointmentTypeResponse
  ];
  @override
  final String wireName = 'AppointmentTypeResponse';

  @override
  Iterable<Object> serialize(
      Serializers serializers, AppointmentTypeResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.labelplace;
    if (value != null) {
      result
        ..add('labelplace')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String))!);
    }
    value = object.color;
    if (value != null) {
      result
        ..add('color')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String))!);
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String))!);
    }
    value = object.onclickData;
    if (value != null) {
      result
        ..add('onclick_data')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String))!);
    }
    value = object.onclickAction;
    if (value != null) {
      result
        ..add('onclick_action')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String))!);
    }
    value = object.onclickWeek;
    if (value != null) {
      result
        ..add('onclick_week')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String))!);
    }
    return result;
  }

  @override
  AppointmentTypeResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AppointmentTypeResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current!;
      switch (key) {
        case 'labelplace':
          result.labelplace = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'color':
          result.color = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'onclick_data':
          result.onclickData = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'onclick_action':
          result.onclickAction = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'onclick_week':
          result.onclickWeek = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$AppointmentNavigationSerializer
    implements StructuredSerializer<AppointmentNavigation> {
  @override
  final Iterable<Type> types = const [
    AppointmentNavigation,
    _$AppointmentNavigation
  ];
  @override
  final String wireName = 'AppointmentNavigation';

  @override
  Iterable<Object> serialize(
      Serializers serializers, AppointmentNavigation object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.labelplace;
    if (value != null) {
      result
        ..add('labelplace')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String))!);
    }
    value = object.color;
    if (value != null) {
      result
        ..add('color')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String))!);
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String))!);
    }
    value = object.onclickData;
    if (value != null) {
      result
        ..add('onclick_data')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String))!);
    }
    value = object.onclickAction;
    if (value != null) {
      result
        ..add('onclick_action')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String))!);
    }
    value = object.onclickWeek;
    if (value != null) {
      result
        ..add('onclick_week')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String))!);
    }
    return result;
  }

  @override
  AppointmentNavigation deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AppointmentNavigationBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current!;
      switch (key) {
        case 'labelplace':
          result.labelplace = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'color':
          result.color = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'onclick_data':
          result.onclickData = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'onclick_action':
          result.onclickAction = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'onclick_week':
          result.onclickWeek = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$CreateAppointmentResponse extends CreateAppointmentResponse {
  @override
  final String version;
  @override
  final String request;
  @override
  final ParamsCreateAppointmentResponse params;
  @override
  final String message;
  @override
  final int httpstatut;
  @override
  final String error;
  @override
  final DataCreateAppointmentResponse data;

  factory _$CreateAppointmentResponse(
          [void Function(CreateAppointmentResponseBuilder)? updates]) =>
      (new CreateAppointmentResponseBuilder()..update(updates!)).build();

  _$CreateAppointmentResponse._(
      {
      required this.version,
      required this.request,
      required this.params,
      required this.message,
      required this.httpstatut,
      required this.error,
      required this.data})
      : super._();

  @override
  CreateAppointmentResponse rebuild(
          void Function(CreateAppointmentResponseBuilder) updates) =>
      (toBuilder()..update(updates!)).build();

  @override
  CreateAppointmentResponseBuilder toBuilder() =>
      new CreateAppointmentResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateAppointmentResponse &&
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
    return (newBuiltValueToStringHelper('CreateAppointmentResponse')
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

class CreateAppointmentResponseBuilder
    implements
        Builder<CreateAppointmentResponse, CreateAppointmentResponseBuilder> {
  _$CreateAppointmentResponse? _$v = _$CreateAppointmentResponse();

  String _version = '';
  String get version => _$this._version;
  set version(String version) => _$this._version = version;

  String _request = '';
  String get request => _$this._request;
  set request(String request) => _$this._request = request;

  ParamsCreateAppointmentResponseBuilder _params = ParamsCreateAppointmentResponseBuilder();
  ParamsCreateAppointmentResponseBuilder get params =>
      _$this._params ??= new ParamsCreateAppointmentResponseBuilder();
  set params(ParamsCreateAppointmentResponseBuilder params) =>
      _$this._params = params;

  String _message = '';
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  int _httpstatut = 0;
  int get httpstatut => _$this._httpstatut;
  set httpstatut(int httpstatut) => _$this._httpstatut = httpstatut;

  String _error = '';
  String get error => _$this._error;
  set error(String error) => _$this._error = error;

  DataCreateAppointmentResponseBuilder _data = DataCreateAppointmentResponseBuilder();
  DataCreateAppointmentResponseBuilder get data =>
      _$this._data ??= new DataCreateAppointmentResponseBuilder();
  set data(DataCreateAppointmentResponseBuilder data) => _$this._data = data;

  CreateAppointmentResponseBuilder();

  CreateAppointmentResponseBuilder get _$this {
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
  void replace(CreateAppointmentResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateAppointmentResponse;
  }

  @override
  void update(void Function(CreateAppointmentResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CreateAppointmentResponse build() {
    _$CreateAppointmentResponse _$result;
    try {
      _$result = _$v ??
          new _$CreateAppointmentResponse._(
              version: version,
              request: request,
              params: _params.build(),
              message: message,
              httpstatut: httpstatut,
              error: error,
              data: _data.build());
    } catch (_) {
      String _$failedField = '';
      try {
        _$failedField = 'params';
        _params?.build();

        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CreateAppointmentResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$ParamsCreateAppointmentResponse
    extends ParamsCreateAppointmentResponse {
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

  factory _$ParamsCreateAppointmentResponse(
          [void Function(ParamsCreateAppointmentResponseBuilder)? updates]) =>
      (new ParamsCreateAppointmentResponseBuilder()..update(updates!)).build();

  _$ParamsCreateAppointmentResponse._(
      {
      required this.tokenuser,
      required this.tokenappointment,
      required this.week,
      required this.data,
      required this.action,
      required this.session})
      : super._();

  @override
  ParamsCreateAppointmentResponse rebuild(
          void Function(ParamsCreateAppointmentResponseBuilder) updates) =>
      (toBuilder()..update(updates!)).build();

  @override
  ParamsCreateAppointmentResponseBuilder toBuilder() =>
      new ParamsCreateAppointmentResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ParamsCreateAppointmentResponse &&
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
    return (newBuiltValueToStringHelper('ParamsCreateAppointmentResponse')
          ..add('tokenuser', tokenuser)
          ..add('tokenappointment', tokenappointment)
          ..add('week', week)
          ..add('data', data)
          ..add('action', action)
          ..add('session', session))
        .toString();
  }
}

class ParamsCreateAppointmentResponseBuilder
    implements
        Builder<ParamsCreateAppointmentResponse,
            ParamsCreateAppointmentResponseBuilder> {
  _$ParamsCreateAppointmentResponse? _$v = _$ParamsCreateAppointmentResponse();

  String _tokenuser = '';
  String get tokenuser => _$this._tokenuser;
  set tokenuser(String tokenuser) => _$this._tokenuser = tokenuser;

  String _tokenappointment ='';
  String get tokenappointment => _$this._tokenappointment;
  set tokenappointment(String tokenappointment) =>
      _$this._tokenappointment = tokenappointment;

  String _week = '';
  String get week => _$this._week;
  set week(String week) => _$this._week = week;

  String _data ='';
  String get data => _$this._data;
  set data(String data) => _$this._data = data;

  String _action ='';
  String get action => _$this._action;
  set action(String action) => _$this._action = action;

  String _session = '';
  String get session => _$this._session;
  set session(String session) => _$this._session = session;

  ParamsCreateAppointmentResponseBuilder();

  ParamsCreateAppointmentResponseBuilder get _$this {
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
  void replace(ParamsCreateAppointmentResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ParamsCreateAppointmentResponse;
  }

  @override
  void update(void Function(ParamsCreateAppointmentResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ParamsCreateAppointmentResponse build() {
    final _$result = _$v ??
        new _$ParamsCreateAppointmentResponse._(
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

class _$DataCreateAppointmentResponse extends DataCreateAppointmentResponse {
  @override
  final String session;
  @override
  final BuiltList<AppointmentNavigation> navigation;
  @override
  final String headermessage;
  @override
  final String type;
  @override
  final BuiltList<AppointmentTypeResponse> data;

  factory _$DataCreateAppointmentResponse(
          [void Function(DataCreateAppointmentResponseBuilder)? updates]) =>
      (new DataCreateAppointmentResponseBuilder()..update(updates!)).build();

  _$DataCreateAppointmentResponse._(
      {required this.session,required this.navigation,required this.headermessage,required this.type,required this.data})
      : super._();

  @override
  DataCreateAppointmentResponse rebuild(
          void Function(DataCreateAppointmentResponseBuilder) updates) =>
      (toBuilder()..update(updates!)).build();

  @override
  DataCreateAppointmentResponseBuilder toBuilder() =>
      new DataCreateAppointmentResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DataCreateAppointmentResponse &&
        session == other.session &&
        navigation == other.navigation &&
        headermessage == other.headermessage &&
        type == other.type &&
        data == other.data;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, session.hashCode), navigation.hashCode),
                headermessage.hashCode),
            type.hashCode),
        data.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DataCreateAppointmentResponse')
          ..add('session', session)
          ..add('navigation', navigation)
          ..add('headermessage', headermessage)
          ..add('type', type)
          ..add('data', data))
        .toString();
  }
}

class DataCreateAppointmentResponseBuilder
    implements
        Builder<DataCreateAppointmentResponse,
            DataCreateAppointmentResponseBuilder> {
  _$DataCreateAppointmentResponse? _$v = _$DataCreateAppointmentResponse();

  String _session = '';
  String get session => _$this._session;
  set session(String session) => _$this._session = session;

  ListBuilder<AppointmentNavigation> _navigation = ListBuilder();
  ListBuilder<AppointmentNavigation> get navigation =>
      _$this._navigation ??= new ListBuilder<AppointmentNavigation>();
  set navigation(ListBuilder<AppointmentNavigation> navigation) =>
      _$this._navigation = navigation;

  String _headermessage ='';
  String get headermessage => _$this._headermessage;
  set headermessage(String headermessage) =>
      _$this._headermessage = headermessage;

  String _type ='';
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  ListBuilder<AppointmentTypeResponse> _data = ListBuilder();
  ListBuilder<AppointmentTypeResponse> get data =>
      _$this._data ??= new ListBuilder<AppointmentTypeResponse>();
  set data(ListBuilder<AppointmentTypeResponse> data) => _$this._data = data;

  DataCreateAppointmentResponseBuilder();

  DataCreateAppointmentResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _session = $v.session;
      _navigation = $v.navigation.toBuilder();
      _headermessage = $v.headermessage;
      _type = $v.type;
      _data = $v.data.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DataCreateAppointmentResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DataCreateAppointmentResponse;
  }

  @override
  void update(void Function(DataCreateAppointmentResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DataCreateAppointmentResponse build() {
    _$DataCreateAppointmentResponse _$result;
    try {
      _$result = _$v ??
          new _$DataCreateAppointmentResponse._(
              session: session,
              navigation: _navigation.build(),
              headermessage: headermessage,
              type: type,
              data: _data.build());
    } catch (_) {
      String _$failedField = '';
      try {
        _$failedField = 'navigation';
        _navigation?.build();

        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'DataCreateAppointmentResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$AppointmentTypeResponse extends AppointmentTypeResponse {
  @override
  final String labelplace;
  @override
  final String color;
  @override
  final String description;
  @override
  final String onclickData;
  @override
  final String onclickAction;
  @override
  final String onclickWeek;

  factory _$AppointmentTypeResponse(
          [void Function(AppointmentTypeResponseBuilder)? updates]) =>
      (new AppointmentTypeResponseBuilder()..update(updates!)).build();

  _$AppointmentTypeResponse._(
      {
      required this.labelplace,
      required this.color,
      required this.description,
      required this.onclickData,
      required this.onclickAction,
      required this.onclickWeek})
      : super._();

  @override
  AppointmentTypeResponse rebuild(
          void Function(AppointmentTypeResponseBuilder) updates) =>
      (toBuilder()..update(updates!)).build();

  @override
  AppointmentTypeResponseBuilder toBuilder() =>
      new AppointmentTypeResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppointmentTypeResponse &&
        labelplace == other.labelplace &&
        color == other.color &&
        description == other.description &&
        onclickData == other.onclickData &&
        onclickAction == other.onclickAction &&
        onclickWeek == other.onclickWeek;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, labelplace.hashCode), color.hashCode),
                    description.hashCode),
                onclickData.hashCode),
            onclickAction.hashCode),
        onclickWeek.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AppointmentTypeResponse')
          ..add('labelplace', labelplace)
          ..add('color', color)
          ..add('description', description)
          ..add('onclickData', onclickData)
          ..add('onclickAction', onclickAction)
          ..add('onclickWeek', onclickWeek))
        .toString();
  }
}

class AppointmentTypeResponseBuilder
    implements
        Builder<AppointmentTypeResponse, AppointmentTypeResponseBuilder> {
  _$AppointmentTypeResponse? _$v =_$AppointmentTypeResponse();

  String _labelplace ='';
  String get labelplace => _$this._labelplace;
  set labelplace(String labelplace) => _$this._labelplace = labelplace;

  String _color ='';
  String get color => _$this._color;
  set color(String color) => _$this._color = color;

  String _description = '';
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  String _onclickData = '';
  String get onclickData => _$this._onclickData;
  set onclickData(String onclickData) => _$this._onclickData = onclickData;

  String _onclickAction = '';
  String get onclickAction => _$this._onclickAction;
  set onclickAction(String onclickAction) =>
      _$this._onclickAction = onclickAction;

  String _onclickWeek ='';
  String get onclickWeek => _$this._onclickWeek;
  set onclickWeek(String onclickWeek) => _$this._onclickWeek = onclickWeek;

  AppointmentTypeResponseBuilder();

  AppointmentTypeResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _labelplace = $v.labelplace;
      _color = $v.color;
      _description = $v.description;
      _onclickData = $v.onclickData;
      _onclickAction = $v.onclickAction;
      _onclickWeek = $v.onclickWeek;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppointmentTypeResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AppointmentTypeResponse;
  }

  @override
  void update(void Function(AppointmentTypeResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AppointmentTypeResponse build() {
    final _$result = _$v ??
        new _$AppointmentTypeResponse._(
            labelplace: labelplace,
            color: color,
            description: description,
            onclickData: onclickData,
            onclickAction: onclickAction,
            onclickWeek: onclickWeek);
    replace(_$result);
    return _$result;
  }
}

class _$AppointmentNavigation extends AppointmentNavigation {
  @override
  final String labelplace;
  @override
  final String color;
  @override
  final String description;
  @override
  final String onclickData;
  @override
  final String onclickAction;
  @override
  final String onclickWeek;

  factory _$AppointmentNavigation(
          [void Function(AppointmentNavigationBuilder)? updates]) =>
      (new AppointmentNavigationBuilder()..update(updates!)).build();

  _$AppointmentNavigation._(
      {
      required this.labelplace,
      required this.color,
      required this.description,
      required this.onclickData,
      required this.onclickAction,
      required this.onclickWeek})
      : super._();

  @override
  AppointmentNavigation rebuild(
          void Function(AppointmentNavigationBuilder) updates) =>
      (toBuilder()..update(updates!)).build();

  @override
  AppointmentNavigationBuilder toBuilder() =>
      new AppointmentNavigationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppointmentNavigation &&
        labelplace == other.labelplace &&
        color == other.color &&
        description == other.description &&
        onclickData == other.onclickData &&
        onclickAction == other.onclickAction &&
        onclickWeek == other.onclickWeek;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, labelplace.hashCode), color.hashCode),
                    description.hashCode),
                onclickData.hashCode),
            onclickAction.hashCode),
        onclickWeek.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AppointmentNavigation')
          ..add('labelplace', labelplace)
          ..add('color', color)
          ..add('description', description)
          ..add('onclickData', onclickData)
          ..add('onclickAction', onclickAction)
          ..add('onclickWeek', onclickWeek))
        .toString();
  }
}

class AppointmentNavigationBuilder
    implements Builder<AppointmentNavigation, AppointmentNavigationBuilder> {
  _$AppointmentNavigation? _$v = _$AppointmentNavigation();

  String _labelplace = '';
  String get labelplace => _$this._labelplace;
  set labelplace(String labelplace) => _$this._labelplace = labelplace;

  String _color = '';
  String get color => _$this._color;
  set color(String color) => _$this._color = color;

  String _description = '';
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  String _onclickData = '';
  String get onclickData => _$this._onclickData;
  set onclickData(String onclickData) => _$this._onclickData = onclickData;

  String _onclickAction = '';
  String get onclickAction => _$this._onclickAction;
  set onclickAction(String onclickAction) =>
      _$this._onclickAction = onclickAction;

  String _onclickWeek ='';
  String get onclickWeek => _$this._onclickWeek;
  set onclickWeek(String onclickWeek) => _$this._onclickWeek = onclickWeek;

  AppointmentNavigationBuilder();

  AppointmentNavigationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _labelplace = $v.labelplace;
      _color = $v.color;
      _description = $v.description;
      _onclickData = $v.onclickData;
      _onclickAction = $v.onclickAction;
      _onclickWeek = $v.onclickWeek;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppointmentNavigation other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AppointmentNavigation;
  }

  @override
  void update(void Function(AppointmentNavigationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AppointmentNavigation build() {
    final _$result = _$v ??
        new _$AppointmentNavigation._(
            labelplace: labelplace,
            color: color,
            description: description,
            onclickData: onclickData,
            onclickAction: onclickAction,
            onclickWeek: onclickWeek);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
