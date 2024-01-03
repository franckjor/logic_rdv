// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appointment_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AppointmentResponse> _$appointmentResponseSerializer =
    new _$AppointmentResponseSerializer();
Serializer<ParamsAppointmentResponse> _$paramsAppointmentResponseSerializer =
    new _$ParamsAppointmentResponseSerializer();
Serializer<DataAppointmentResponse> _$dataAppointmentResponseSerializer =
    new _$DataAppointmentResponseSerializer();
Serializer<CabinetResponse> _$cabinetResponseSerializer =
    new _$CabinetResponseSerializer();
Serializer<PatientResponse> _$patientResponseSerializer =
    new _$PatientResponseSerializer();
Serializer<AppointmentDataResponse> _$appointmentDataResponseSerializer =
    new _$AppointmentDataResponseSerializer();
Serializer<AllAppoinmentResponse> _$allAppoinmentResponseSerializer =
    new _$AllAppoinmentResponseSerializer();

class _$AppointmentResponseSerializer
    implements StructuredSerializer<AppointmentResponse> {
  @override
  final Iterable<Type> types = const [
    AppointmentResponse,
    _$AppointmentResponse
  ];
  @override
  final String wireName = 'AppointmentResponse';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, AppointmentResponse object,
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
          specifiedType: const FullType(ParamsAppointmentResponse)),
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
          specifiedType: const FullType(DataAppointmentResponse)),
    ];

    return result;
  }

  @override
  AppointmentResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AppointmentResponseBuilder();

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
                  specifiedType: const FullType(ParamsAppointmentResponse))!
              as ParamsAppointmentResponse);
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
                  specifiedType: const FullType(DataAppointmentResponse))!
              as DataAppointmentResponse);
          break;
      }
    }

    return result.build();
  }
}

class _$ParamsAppointmentResponseSerializer
    implements StructuredSerializer<ParamsAppointmentResponse> {
  @override
  final Iterable<Type> types = const [
    ParamsAppointmentResponse,
    _$ParamsAppointmentResponse
  ];
  @override
  final String wireName = 'ParamsAppointmentResponse';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, ParamsAppointmentResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'tokenuser',
      serializers.serialize(object.tokenuser,
          specifiedType: const FullType(String)),
      'page',
      serializers.serialize(object.page, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  ParamsAppointmentResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ParamsAppointmentResponseBuilder();

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
        case 'page':
          result.page = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$DataAppointmentResponseSerializer
    implements StructuredSerializer<DataAppointmentResponse> {
  @override
  final Iterable<Type> types = const [
    DataAppointmentResponse,
    _$DataAppointmentResponse
  ];
  @override
  final String wireName = 'DataAppointmentResponse';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, DataAppointmentResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'list',
      serializers.serialize(object.list,
          specifiedType: const FullType(
              BuiltList, const [const FullType(AllAppoinmentResponse)])),
      'pagination',
      serializers.serialize(object.pagination,
          specifiedType: const FullType(PaginationListOfDoctor)),
    ];

    return result;
  }

  @override
  DataAppointmentResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DataAppointmentResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'list':
          result.list.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(AllAppoinmentResponse)
              ]))! as BuiltList<Object?>);
          break;
        case 'pagination':
          result.pagination.replace(serializers.deserialize(value,
                  specifiedType: const FullType(PaginationListOfDoctor))!
              as PaginationListOfDoctor);
          break;
      }
    }

    return result.build();
  }
}

class _$CabinetResponseSerializer
    implements StructuredSerializer<CabinetResponse> {
  @override
  final Iterable<Type> types = const [CabinetResponse, _$CabinetResponse];
  @override
  final String wireName = 'CabinetResponse';

  @override
  Iterable<Object?> serialize(Serializers serializers, CabinetResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'nom',
      serializers.serialize(object.nom, specifiedType: const FullType(String)),
      'address',
      serializers.serialize(object.address,
          specifiedType: const FullType(String)),
      'city',
      serializers.serialize(object.city, specifiedType: const FullType(String)),
      'phone',
      serializers.serialize(object.phone,
          specifiedType: const FullType(String)),
      'spacephone',
      serializers.serialize(object.spacephone,
          specifiedType: const FullType(String)),
      'lat',
      serializers.serialize(object.lat, specifiedType: const FullType(String)),
      'lng',
      serializers.serialize(object.lng, specifiedType: const FullType(String)),
      'token',
      serializers.serialize(object.token,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  CabinetResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CabinetResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'nom':
          result.nom = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'address':
          result.address = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'city':
          result.city = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'phone':
          result.phone = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'spacephone':
          result.spacephone = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'lat':
          result.lat = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'lng':
          result.lng = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'token':
          result.token = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$PatientResponseSerializer
    implements StructuredSerializer<PatientResponse> {
  @override
  final Iterable<Type> types = const [PatientResponse, _$PatientResponse];
  @override
  final String wireName = 'PatientResponse';

  @override
  Iterable<Object?> serialize(Serializers serializers, PatientResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'nom',
      serializers.serialize(object.nom, specifiedType: const FullType(String)),
      'birthdate',
      serializers.serialize(object.birthdate,
          specifiedType: const FullType(String)),
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
      'nir',
      serializers.serialize(object.nir, specifiedType: const FullType(String)),
      'phone',
      serializers.serialize(object.phone,
          specifiedType: const FullType(String)),
      'spacephone',
      serializers.serialize(object.spacephone,
          specifiedType: const FullType(String)),
      'photo',
      serializers.serialize(object.photo,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  PatientResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PatientResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'nom':
          result.nom = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'birthdate':
          result.birthdate = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'nir':
          result.nir = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'phone':
          result.phone = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'spacephone':
          result.spacephone = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'photo':
          result.photo = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$AppointmentDataResponseSerializer
    implements StructuredSerializer<AppointmentDataResponse> {
  @override
  final Iterable<Type> types = const [
    AppointmentDataResponse,
    _$AppointmentDataResponse
  ];
  @override
  final String wireName = 'AppointmentDataResponse';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, AppointmentDataResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'date',
      serializers.serialize(object.date, specifiedType: const FullType(String)),
      'time',
      serializers.serialize(object.time, specifiedType: const FullType(String)),
      'label',
      serializers.serialize(object.label,
          specifiedType: const FullType(String)),
      'duration',
      serializers.serialize(object.duration,
          specifiedType: const FullType(String)),
      'status',
      serializers.serialize(object.status,
          specifiedType: const FullType(String)),
      'token',
      serializers.serialize(object.token,
          specifiedType: const FullType(String)),
      'tokentelecons',
      serializers.serialize(object.tokentelecons,
          specifiedType: const FullType(String)),
      'with',
      serializers.serialize(object.avec, specifiedType: const FullType(String)),
      'informations',
      serializers.serialize(object.informations,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.buttonlabeltelecons;
    if (value != null) {
      result
        ..add('buttonlabeltelecons')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.past;
    if (value != null) {
      result
        ..add('past')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  AppointmentDataResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AppointmentDataResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'time':
          result.time = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'label':
          result.label = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'duration':
          result.duration = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'token':
          result.token = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'tokentelecons':
          result.tokentelecons = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'buttonlabeltelecons':
          result.buttonlabeltelecons = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'with':
          result.avec = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'informations':
          result.informations = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'past':
          result.past = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$AllAppoinmentResponseSerializer
    implements StructuredSerializer<AllAppoinmentResponse> {
  @override
  final Iterable<Type> types = const [
    AllAppoinmentResponse,
    _$AllAppoinmentResponse
  ];
  @override
  final String wireName = 'AllAppoinmentResponse';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, AllAppoinmentResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'cabinet',
      serializers.serialize(object.cabinet,
          specifiedType: const FullType(CabinetResponse)),
      'patient',
      serializers.serialize(object.patient,
          specifiedType: const FullType(PatientResponse)),
      'appointment',
      serializers.serialize(object.appointment,
          specifiedType: const FullType(AppointmentDataResponse)),
    ];

    return result;
  }

  @override
  AllAppoinmentResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AllAppoinmentResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'cabinet':
          result.cabinet.replace(serializers.deserialize(value,
                  specifiedType: const FullType(CabinetResponse))!
              as CabinetResponse);
          break;
        case 'patient':
          result.patient.replace(serializers.deserialize(value,
                  specifiedType: const FullType(PatientResponse))!
              as PatientResponse);
          break;
        case 'appointment':
          result.appointment.replace(serializers.deserialize(value,
                  specifiedType: const FullType(AppointmentDataResponse))!
              as AppointmentDataResponse);
          break;
      }
    }

    return result.build();
  }
}

class _$AppointmentResponse extends AppointmentResponse {
  @override
  final String version;
  @override
  final String request;
  @override
  final ParamsAppointmentResponse params;
  @override
  final String message;
  @override
  final int httpstatut;
  @override
  final String error;
  @override
  final DataAppointmentResponse data;

  factory _$AppointmentResponse(
          [void Function(AppointmentResponseBuilder)? updates]) =>
      (new AppointmentResponseBuilder()..update(updates))._build();

  _$AppointmentResponse._(
      {required this.version,
      required this.request,
      required this.params,
      required this.message,
      required this.httpstatut,
      required this.error,
      required this.data})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        version, r'AppointmentResponse', 'version');
    BuiltValueNullFieldError.checkNotNull(
        request, r'AppointmentResponse', 'request');
    BuiltValueNullFieldError.checkNotNull(
        params, r'AppointmentResponse', 'params');
    BuiltValueNullFieldError.checkNotNull(
        message, r'AppointmentResponse', 'message');
    BuiltValueNullFieldError.checkNotNull(
        httpstatut, r'AppointmentResponse', 'httpstatut');
    BuiltValueNullFieldError.checkNotNull(
        error, r'AppointmentResponse', 'error');
    BuiltValueNullFieldError.checkNotNull(data, r'AppointmentResponse', 'data');
  }

  @override
  AppointmentResponse rebuild(
          void Function(AppointmentResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AppointmentResponseBuilder toBuilder() =>
      new AppointmentResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppointmentResponse &&
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
    return (newBuiltValueToStringHelper(r'AppointmentResponse')
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

class AppointmentResponseBuilder
    implements Builder<AppointmentResponse, AppointmentResponseBuilder> {
  _$AppointmentResponse? _$v;

  String? _version;
  String? get version => _$this._version;
  set version(String? version) => _$this._version = version;

  String? _request;
  String? get request => _$this._request;
  set request(String? request) => _$this._request = request;

  ParamsAppointmentResponseBuilder? _params;
  ParamsAppointmentResponseBuilder get params =>
      _$this._params ??= new ParamsAppointmentResponseBuilder();
  set params(ParamsAppointmentResponseBuilder? params) =>
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

  DataAppointmentResponseBuilder? _data;
  DataAppointmentResponseBuilder get data =>
      _$this._data ??= new DataAppointmentResponseBuilder();
  set data(DataAppointmentResponseBuilder? data) => _$this._data = data;

  AppointmentResponseBuilder();

  AppointmentResponseBuilder get _$this {
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
  void replace(AppointmentResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AppointmentResponse;
  }

  @override
  void update(void Function(AppointmentResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AppointmentResponse build() => _build();

  _$AppointmentResponse _build() {
    _$AppointmentResponse _$result;
    try {
      _$result = _$v ??
          new _$AppointmentResponse._(
              version: BuiltValueNullFieldError.checkNotNull(
                  version, r'AppointmentResponse', 'version'),
              request: BuiltValueNullFieldError.checkNotNull(
                  request, r'AppointmentResponse', 'request'),
              params: params.build(),
              message: BuiltValueNullFieldError.checkNotNull(
                  message, r'AppointmentResponse', 'message'),
              httpstatut: BuiltValueNullFieldError.checkNotNull(
                  httpstatut, r'AppointmentResponse', 'httpstatut'),
              error: BuiltValueNullFieldError.checkNotNull(
                  error, r'AppointmentResponse', 'error'),
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
            r'AppointmentResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$ParamsAppointmentResponse extends ParamsAppointmentResponse {
  @override
  final String tokenuser;
  @override
  final String page;

  factory _$ParamsAppointmentResponse(
          [void Function(ParamsAppointmentResponseBuilder)? updates]) =>
      (new ParamsAppointmentResponseBuilder()..update(updates))._build();

  _$ParamsAppointmentResponse._({required this.tokenuser, required this.page})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        tokenuser, r'ParamsAppointmentResponse', 'tokenuser');
    BuiltValueNullFieldError.checkNotNull(
        page, r'ParamsAppointmentResponse', 'page');
  }

  @override
  ParamsAppointmentResponse rebuild(
          void Function(ParamsAppointmentResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ParamsAppointmentResponseBuilder toBuilder() =>
      new ParamsAppointmentResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ParamsAppointmentResponse &&
        tokenuser == other.tokenuser &&
        page == other.page;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, tokenuser.hashCode);
    _$hash = $jc(_$hash, page.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ParamsAppointmentResponse')
          ..add('tokenuser', tokenuser)
          ..add('page', page))
        .toString();
  }
}

class ParamsAppointmentResponseBuilder
    implements
        Builder<ParamsAppointmentResponse, ParamsAppointmentResponseBuilder> {
  _$ParamsAppointmentResponse? _$v;

  String? _tokenuser;
  String? get tokenuser => _$this._tokenuser;
  set tokenuser(String? tokenuser) => _$this._tokenuser = tokenuser;

  String? _page;
  String? get page => _$this._page;
  set page(String? page) => _$this._page = page;

  ParamsAppointmentResponseBuilder();

  ParamsAppointmentResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tokenuser = $v.tokenuser;
      _page = $v.page;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ParamsAppointmentResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ParamsAppointmentResponse;
  }

  @override
  void update(void Function(ParamsAppointmentResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ParamsAppointmentResponse build() => _build();

  _$ParamsAppointmentResponse _build() {
    final _$result = _$v ??
        new _$ParamsAppointmentResponse._(
            tokenuser: BuiltValueNullFieldError.checkNotNull(
                tokenuser, r'ParamsAppointmentResponse', 'tokenuser'),
            page: BuiltValueNullFieldError.checkNotNull(
                page, r'ParamsAppointmentResponse', 'page'));
    replace(_$result);
    return _$result;
  }
}

class _$DataAppointmentResponse extends DataAppointmentResponse {
  @override
  final BuiltList<AllAppoinmentResponse> list;
  @override
  final PaginationListOfDoctor pagination;

  factory _$DataAppointmentResponse(
          [void Function(DataAppointmentResponseBuilder)? updates]) =>
      (new DataAppointmentResponseBuilder()..update(updates))._build();

  _$DataAppointmentResponse._({required this.list, required this.pagination})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        list, r'DataAppointmentResponse', 'list');
    BuiltValueNullFieldError.checkNotNull(
        pagination, r'DataAppointmentResponse', 'pagination');
  }

  @override
  DataAppointmentResponse rebuild(
          void Function(DataAppointmentResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DataAppointmentResponseBuilder toBuilder() =>
      new DataAppointmentResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DataAppointmentResponse &&
        list == other.list &&
        pagination == other.pagination;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, list.hashCode);
    _$hash = $jc(_$hash, pagination.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DataAppointmentResponse')
          ..add('list', list)
          ..add('pagination', pagination))
        .toString();
  }
}

class DataAppointmentResponseBuilder
    implements
        Builder<DataAppointmentResponse, DataAppointmentResponseBuilder> {
  _$DataAppointmentResponse? _$v;

  ListBuilder<AllAppoinmentResponse>? _list;
  ListBuilder<AllAppoinmentResponse> get list =>
      _$this._list ??= new ListBuilder<AllAppoinmentResponse>();
  set list(ListBuilder<AllAppoinmentResponse>? list) => _$this._list = list;

  PaginationListOfDoctorBuilder? _pagination;
  PaginationListOfDoctorBuilder get pagination =>
      _$this._pagination ??= new PaginationListOfDoctorBuilder();
  set pagination(PaginationListOfDoctorBuilder? pagination) =>
      _$this._pagination = pagination;

  DataAppointmentResponseBuilder();

  DataAppointmentResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _list = $v.list.toBuilder();
      _pagination = $v.pagination.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DataAppointmentResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DataAppointmentResponse;
  }

  @override
  void update(void Function(DataAppointmentResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DataAppointmentResponse build() => _build();

  _$DataAppointmentResponse _build() {
    _$DataAppointmentResponse _$result;
    try {
      _$result = _$v ??
          new _$DataAppointmentResponse._(
              list: list.build(), pagination: pagination.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'list';
        list.build();
        _$failedField = 'pagination';
        pagination.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DataAppointmentResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$CabinetResponse extends CabinetResponse {
  @override
  final String nom;
  @override
  final String address;
  @override
  final String city;
  @override
  final String phone;
  @override
  final String spacephone;
  @override
  final String lat;
  @override
  final String lng;
  @override
  final String token;

  factory _$CabinetResponse([void Function(CabinetResponseBuilder)? updates]) =>
      (new CabinetResponseBuilder()..update(updates))._build();

  _$CabinetResponse._(
      {required this.nom,
      required this.address,
      required this.city,
      required this.phone,
      required this.spacephone,
      required this.lat,
      required this.lng,
      required this.token})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(nom, r'CabinetResponse', 'nom');
    BuiltValueNullFieldError.checkNotNull(
        address, r'CabinetResponse', 'address');
    BuiltValueNullFieldError.checkNotNull(city, r'CabinetResponse', 'city');
    BuiltValueNullFieldError.checkNotNull(phone, r'CabinetResponse', 'phone');
    BuiltValueNullFieldError.checkNotNull(
        spacephone, r'CabinetResponse', 'spacephone');
    BuiltValueNullFieldError.checkNotNull(lat, r'CabinetResponse', 'lat');
    BuiltValueNullFieldError.checkNotNull(lng, r'CabinetResponse', 'lng');
    BuiltValueNullFieldError.checkNotNull(token, r'CabinetResponse', 'token');
  }

  @override
  CabinetResponse rebuild(void Function(CabinetResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CabinetResponseBuilder toBuilder() =>
      new CabinetResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CabinetResponse &&
        nom == other.nom &&
        address == other.address &&
        city == other.city &&
        phone == other.phone &&
        spacephone == other.spacephone &&
        lat == other.lat &&
        lng == other.lng &&
        token == other.token;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, nom.hashCode);
    _$hash = $jc(_$hash, address.hashCode);
    _$hash = $jc(_$hash, city.hashCode);
    _$hash = $jc(_$hash, phone.hashCode);
    _$hash = $jc(_$hash, spacephone.hashCode);
    _$hash = $jc(_$hash, lat.hashCode);
    _$hash = $jc(_$hash, lng.hashCode);
    _$hash = $jc(_$hash, token.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CabinetResponse')
          ..add('nom', nom)
          ..add('address', address)
          ..add('city', city)
          ..add('phone', phone)
          ..add('spacephone', spacephone)
          ..add('lat', lat)
          ..add('lng', lng)
          ..add('token', token))
        .toString();
  }
}

class CabinetResponseBuilder
    implements Builder<CabinetResponse, CabinetResponseBuilder> {
  _$CabinetResponse? _$v;

  String? _nom;
  String? get nom => _$this._nom;
  set nom(String? nom) => _$this._nom = nom;

  String? _address;
  String? get address => _$this._address;
  set address(String? address) => _$this._address = address;

  String? _city;
  String? get city => _$this._city;
  set city(String? city) => _$this._city = city;

  String? _phone;
  String? get phone => _$this._phone;
  set phone(String? phone) => _$this._phone = phone;

  String? _spacephone;
  String? get spacephone => _$this._spacephone;
  set spacephone(String? spacephone) => _$this._spacephone = spacephone;

  String? _lat;
  String? get lat => _$this._lat;
  set lat(String? lat) => _$this._lat = lat;

  String? _lng;
  String? get lng => _$this._lng;
  set lng(String? lng) => _$this._lng = lng;

  String? _token;
  String? get token => _$this._token;
  set token(String? token) => _$this._token = token;

  CabinetResponseBuilder();

  CabinetResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nom = $v.nom;
      _address = $v.address;
      _city = $v.city;
      _phone = $v.phone;
      _spacephone = $v.spacephone;
      _lat = $v.lat;
      _lng = $v.lng;
      _token = $v.token;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CabinetResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CabinetResponse;
  }

  @override
  void update(void Function(CabinetResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CabinetResponse build() => _build();

  _$CabinetResponse _build() {
    final _$result = _$v ??
        new _$CabinetResponse._(
            nom: BuiltValueNullFieldError.checkNotNull(
                nom, r'CabinetResponse', 'nom'),
            address: BuiltValueNullFieldError.checkNotNull(
                address, r'CabinetResponse', 'address'),
            city: BuiltValueNullFieldError.checkNotNull(
                city, r'CabinetResponse', 'city'),
            phone: BuiltValueNullFieldError.checkNotNull(
                phone, r'CabinetResponse', 'phone'),
            spacephone: BuiltValueNullFieldError.checkNotNull(
                spacephone, r'CabinetResponse', 'spacephone'),
            lat: BuiltValueNullFieldError.checkNotNull(
                lat, r'CabinetResponse', 'lat'),
            lng: BuiltValueNullFieldError.checkNotNull(
                lng, r'CabinetResponse', 'lng'),
            token: BuiltValueNullFieldError.checkNotNull(
                token, r'CabinetResponse', 'token'));
    replace(_$result);
    return _$result;
  }
}

class _$PatientResponse extends PatientResponse {
  @override
  final String nom;
  @override
  final String birthdate;
  @override
  final String email;
  @override
  final String nir;
  @override
  final String phone;
  @override
  final String spacephone;
  @override
  final String photo;

  factory _$PatientResponse([void Function(PatientResponseBuilder)? updates]) =>
      (new PatientResponseBuilder()..update(updates))._build();

  _$PatientResponse._(
      {required this.nom,
      required this.birthdate,
      required this.email,
      required this.nir,
      required this.phone,
      required this.spacephone,
      required this.photo})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(nom, r'PatientResponse', 'nom');
    BuiltValueNullFieldError.checkNotNull(
        birthdate, r'PatientResponse', 'birthdate');
    BuiltValueNullFieldError.checkNotNull(email, r'PatientResponse', 'email');
    BuiltValueNullFieldError.checkNotNull(nir, r'PatientResponse', 'nir');
    BuiltValueNullFieldError.checkNotNull(phone, r'PatientResponse', 'phone');
    BuiltValueNullFieldError.checkNotNull(
        spacephone, r'PatientResponse', 'spacephone');
    BuiltValueNullFieldError.checkNotNull(photo, r'PatientResponse', 'photo');
  }

  @override
  PatientResponse rebuild(void Function(PatientResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PatientResponseBuilder toBuilder() =>
      new PatientResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PatientResponse &&
        nom == other.nom &&
        birthdate == other.birthdate &&
        email == other.email &&
        nir == other.nir &&
        phone == other.phone &&
        spacephone == other.spacephone &&
        photo == other.photo;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, nom.hashCode);
    _$hash = $jc(_$hash, birthdate.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, nir.hashCode);
    _$hash = $jc(_$hash, phone.hashCode);
    _$hash = $jc(_$hash, spacephone.hashCode);
    _$hash = $jc(_$hash, photo.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PatientResponse')
          ..add('nom', nom)
          ..add('birthdate', birthdate)
          ..add('email', email)
          ..add('nir', nir)
          ..add('phone', phone)
          ..add('spacephone', spacephone)
          ..add('photo', photo))
        .toString();
  }
}

class PatientResponseBuilder
    implements Builder<PatientResponse, PatientResponseBuilder> {
  _$PatientResponse? _$v;

  String? _nom;
  String? get nom => _$this._nom;
  set nom(String? nom) => _$this._nom = nom;

  String? _birthdate;
  String? get birthdate => _$this._birthdate;
  set birthdate(String? birthdate) => _$this._birthdate = birthdate;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _nir;
  String? get nir => _$this._nir;
  set nir(String? nir) => _$this._nir = nir;

  String? _phone;
  String? get phone => _$this._phone;
  set phone(String? phone) => _$this._phone = phone;

  String? _spacephone;
  String? get spacephone => _$this._spacephone;
  set spacephone(String? spacephone) => _$this._spacephone = spacephone;

  String? _photo;
  String? get photo => _$this._photo;
  set photo(String? photo) => _$this._photo = photo;

  PatientResponseBuilder();

  PatientResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nom = $v.nom;
      _birthdate = $v.birthdate;
      _email = $v.email;
      _nir = $v.nir;
      _phone = $v.phone;
      _spacephone = $v.spacephone;
      _photo = $v.photo;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PatientResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PatientResponse;
  }

  @override
  void update(void Function(PatientResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PatientResponse build() => _build();

  _$PatientResponse _build() {
    final _$result = _$v ??
        new _$PatientResponse._(
            nom: BuiltValueNullFieldError.checkNotNull(
                nom, r'PatientResponse', 'nom'),
            birthdate: BuiltValueNullFieldError.checkNotNull(
                birthdate, r'PatientResponse', 'birthdate'),
            email: BuiltValueNullFieldError.checkNotNull(
                email, r'PatientResponse', 'email'),
            nir: BuiltValueNullFieldError.checkNotNull(
                nir, r'PatientResponse', 'nir'),
            phone: BuiltValueNullFieldError.checkNotNull(
                phone, r'PatientResponse', 'phone'),
            spacephone: BuiltValueNullFieldError.checkNotNull(
                spacephone, r'PatientResponse', 'spacephone'),
            photo: BuiltValueNullFieldError.checkNotNull(
                photo, r'PatientResponse', 'photo'));
    replace(_$result);
    return _$result;
  }
}

class _$AppointmentDataResponse extends AppointmentDataResponse {
  @override
  final String date;
  @override
  final String time;
  @override
  final String label;
  @override
  final String duration;
  @override
  final String status;
  @override
  final String token;
  @override
  final String tokentelecons;
  @override
  final String? buttonlabeltelecons;
  @override
  final String avec;
  @override
  final String informations;
  @override
  final String? past;

  factory _$AppointmentDataResponse(
          [void Function(AppointmentDataResponseBuilder)? updates]) =>
      (new AppointmentDataResponseBuilder()..update(updates))._build();

  _$AppointmentDataResponse._(
      {required this.date,
      required this.time,
      required this.label,
      required this.duration,
      required this.status,
      required this.token,
      required this.tokentelecons,
      this.buttonlabeltelecons,
      required this.avec,
      required this.informations,
      this.past})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        date, r'AppointmentDataResponse', 'date');
    BuiltValueNullFieldError.checkNotNull(
        time, r'AppointmentDataResponse', 'time');
    BuiltValueNullFieldError.checkNotNull(
        label, r'AppointmentDataResponse', 'label');
    BuiltValueNullFieldError.checkNotNull(
        duration, r'AppointmentDataResponse', 'duration');
    BuiltValueNullFieldError.checkNotNull(
        status, r'AppointmentDataResponse', 'status');
    BuiltValueNullFieldError.checkNotNull(
        token, r'AppointmentDataResponse', 'token');
    BuiltValueNullFieldError.checkNotNull(
        tokentelecons, r'AppointmentDataResponse', 'tokentelecons');
    BuiltValueNullFieldError.checkNotNull(
        avec, r'AppointmentDataResponse', 'avec');
    BuiltValueNullFieldError.checkNotNull(
        informations, r'AppointmentDataResponse', 'informations');
  }

  @override
  AppointmentDataResponse rebuild(
          void Function(AppointmentDataResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AppointmentDataResponseBuilder toBuilder() =>
      new AppointmentDataResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppointmentDataResponse &&
        date == other.date &&
        time == other.time &&
        label == other.label &&
        duration == other.duration &&
        status == other.status &&
        token == other.token &&
        tokentelecons == other.tokentelecons &&
        buttonlabeltelecons == other.buttonlabeltelecons &&
        avec == other.avec &&
        informations == other.informations &&
        past == other.past;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, time.hashCode);
    _$hash = $jc(_$hash, label.hashCode);
    _$hash = $jc(_$hash, duration.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, token.hashCode);
    _$hash = $jc(_$hash, tokentelecons.hashCode);
    _$hash = $jc(_$hash, buttonlabeltelecons.hashCode);
    _$hash = $jc(_$hash, avec.hashCode);
    _$hash = $jc(_$hash, informations.hashCode);
    _$hash = $jc(_$hash, past.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AppointmentDataResponse')
          ..add('date', date)
          ..add('time', time)
          ..add('label', label)
          ..add('duration', duration)
          ..add('status', status)
          ..add('token', token)
          ..add('tokentelecons', tokentelecons)
          ..add('buttonlabeltelecons', buttonlabeltelecons)
          ..add('avec', avec)
          ..add('informations', informations)
          ..add('past', past))
        .toString();
  }
}

class AppointmentDataResponseBuilder
    implements
        Builder<AppointmentDataResponse, AppointmentDataResponseBuilder> {
  _$AppointmentDataResponse? _$v;

  String? _date;
  String? get date => _$this._date;
  set date(String? date) => _$this._date = date;

  String? _time;
  String? get time => _$this._time;
  set time(String? time) => _$this._time = time;

  String? _label;
  String? get label => _$this._label;
  set label(String? label) => _$this._label = label;

  String? _duration;
  String? get duration => _$this._duration;
  set duration(String? duration) => _$this._duration = duration;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  String? _token;
  String? get token => _$this._token;
  set token(String? token) => _$this._token = token;

  String? _tokentelecons;
  String? get tokentelecons => _$this._tokentelecons;
  set tokentelecons(String? tokentelecons) =>
      _$this._tokentelecons = tokentelecons;

  String? _buttonlabeltelecons;
  String? get buttonlabeltelecons => _$this._buttonlabeltelecons;
  set buttonlabeltelecons(String? buttonlabeltelecons) =>
      _$this._buttonlabeltelecons = buttonlabeltelecons;

  String? _avec;
  String? get avec => _$this._avec;
  set avec(String? avec) => _$this._avec = avec;

  String? _informations;
  String? get informations => _$this._informations;
  set informations(String? informations) => _$this._informations = informations;

  String? _past;
  String? get past => _$this._past;
  set past(String? past) => _$this._past = past;

  AppointmentDataResponseBuilder();

  AppointmentDataResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _date = $v.date;
      _time = $v.time;
      _label = $v.label;
      _duration = $v.duration;
      _status = $v.status;
      _token = $v.token;
      _tokentelecons = $v.tokentelecons;
      _buttonlabeltelecons = $v.buttonlabeltelecons;
      _avec = $v.avec;
      _informations = $v.informations;
      _past = $v.past;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppointmentDataResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AppointmentDataResponse;
  }

  @override
  void update(void Function(AppointmentDataResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AppointmentDataResponse build() => _build();

  _$AppointmentDataResponse _build() {
    final _$result = _$v ??
        new _$AppointmentDataResponse._(
            date: BuiltValueNullFieldError.checkNotNull(
                date, r'AppointmentDataResponse', 'date'),
            time: BuiltValueNullFieldError.checkNotNull(
                time, r'AppointmentDataResponse', 'time'),
            label: BuiltValueNullFieldError.checkNotNull(
                label, r'AppointmentDataResponse', 'label'),
            duration: BuiltValueNullFieldError.checkNotNull(
                duration, r'AppointmentDataResponse', 'duration'),
            status: BuiltValueNullFieldError.checkNotNull(
                status, r'AppointmentDataResponse', 'status'),
            token: BuiltValueNullFieldError.checkNotNull(
                token, r'AppointmentDataResponse', 'token'),
            tokentelecons: BuiltValueNullFieldError.checkNotNull(
                tokentelecons, r'AppointmentDataResponse', 'tokentelecons'),
            buttonlabeltelecons: buttonlabeltelecons,
            avec: BuiltValueNullFieldError.checkNotNull(
                avec, r'AppointmentDataResponse', 'avec'),
            informations: BuiltValueNullFieldError.checkNotNull(
                informations, r'AppointmentDataResponse', 'informations'),
            past: past);
    replace(_$result);
    return _$result;
  }
}

class _$AllAppoinmentResponse extends AllAppoinmentResponse {
  @override
  final CabinetResponse cabinet;
  @override
  final PatientResponse patient;
  @override
  final AppointmentDataResponse appointment;

  factory _$AllAppoinmentResponse(
          [void Function(AllAppoinmentResponseBuilder)? updates]) =>
      (new AllAppoinmentResponseBuilder()..update(updates))._build();

  _$AllAppoinmentResponse._(
      {required this.cabinet, required this.patient, required this.appointment})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        cabinet, r'AllAppoinmentResponse', 'cabinet');
    BuiltValueNullFieldError.checkNotNull(
        patient, r'AllAppoinmentResponse', 'patient');
    BuiltValueNullFieldError.checkNotNull(
        appointment, r'AllAppoinmentResponse', 'appointment');
  }

  @override
  AllAppoinmentResponse rebuild(
          void Function(AllAppoinmentResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AllAppoinmentResponseBuilder toBuilder() =>
      new AllAppoinmentResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AllAppoinmentResponse &&
        cabinet == other.cabinet &&
        patient == other.patient &&
        appointment == other.appointment;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, cabinet.hashCode);
    _$hash = $jc(_$hash, patient.hashCode);
    _$hash = $jc(_$hash, appointment.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AllAppoinmentResponse')
          ..add('cabinet', cabinet)
          ..add('patient', patient)
          ..add('appointment', appointment))
        .toString();
  }
}

class AllAppoinmentResponseBuilder
    implements Builder<AllAppoinmentResponse, AllAppoinmentResponseBuilder> {
  _$AllAppoinmentResponse? _$v;

  CabinetResponseBuilder? _cabinet;
  CabinetResponseBuilder get cabinet =>
      _$this._cabinet ??= new CabinetResponseBuilder();
  set cabinet(CabinetResponseBuilder? cabinet) => _$this._cabinet = cabinet;

  PatientResponseBuilder? _patient;
  PatientResponseBuilder get patient =>
      _$this._patient ??= new PatientResponseBuilder();
  set patient(PatientResponseBuilder? patient) => _$this._patient = patient;

  AppointmentDataResponseBuilder? _appointment;
  AppointmentDataResponseBuilder get appointment =>
      _$this._appointment ??= new AppointmentDataResponseBuilder();
  set appointment(AppointmentDataResponseBuilder? appointment) =>
      _$this._appointment = appointment;

  AllAppoinmentResponseBuilder();

  AllAppoinmentResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _cabinet = $v.cabinet.toBuilder();
      _patient = $v.patient.toBuilder();
      _appointment = $v.appointment.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AllAppoinmentResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AllAppoinmentResponse;
  }

  @override
  void update(void Function(AllAppoinmentResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AllAppoinmentResponse build() => _build();

  _$AllAppoinmentResponse _build() {
    _$AllAppoinmentResponse _$result;
    try {
      _$result = _$v ??
          new _$AllAppoinmentResponse._(
              cabinet: cabinet.build(),
              patient: patient.build(),
              appointment: appointment.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'cabinet';
        cabinet.build();
        _$failedField = 'patient';
        patient.build();
        _$failedField = 'appointment';
        appointment.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AllAppoinmentResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
