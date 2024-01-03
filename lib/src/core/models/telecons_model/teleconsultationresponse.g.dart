// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'teleconsultationresponse.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TeleconsResponse> _$teleconsResponseSerializer =
    new _$TeleconsResponseSerializer();
Serializer<ParamsTc> _$paramsTcSerializer = new _$ParamsTcSerializer();
Serializer<DataTc> _$dataTcSerializer = new _$DataTcSerializer();
Serializer<EtablissementTc> _$etablissementTcSerializer =
    new _$EtablissementTcSerializer();
Serializer<ApptTc> _$apptTcSerializer = new _$ApptTcSerializer();
Serializer<InfosTc> _$infosTcSerializer = new _$InfosTcSerializer();
Serializer<PaymentTc> _$paymentTcSerializer = new _$PaymentTcSerializer();
Serializer<TokboxTc> _$tokboxTcSerializer = new _$TokboxTcSerializer();

class _$TeleconsResponseSerializer
    implements StructuredSerializer<TeleconsResponse> {
  @override
  final Iterable<Type> types = const [TeleconsResponse, _$TeleconsResponse];
  @override
  final String wireName = 'TeleconsResponse';

  @override
  Iterable<Object?> serialize(Serializers serializers, TeleconsResponse object,
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
          specifiedType: const FullType(ParamsTc)),
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
      serializers.serialize(object.data, specifiedType: const FullType(DataTc)),
    ];

    return result;
  }

  @override
  TeleconsResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TeleconsResponseBuilder();

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
              specifiedType: const FullType(ParamsTc))! as ParamsTc);
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
              specifiedType: const FullType(DataTc))! as DataTc);
          break;
      }
    }

    return result.build();
  }
}

class _$ParamsTcSerializer implements StructuredSerializer<ParamsTc> {
  @override
  final Iterable<Type> types = const [ParamsTc, _$ParamsTc];
  @override
  final String wireName = 'ParamsTc';

  @override
  Iterable<Object?> serialize(Serializers serializers, ParamsTc object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'tokentelecons',
      serializers.serialize(object.tokentelecons,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  ParamsTc deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ParamsTcBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'tokentelecons':
          result.tokentelecons = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$DataTcSerializer implements StructuredSerializer<DataTc> {
  @override
  final Iterable<Type> types = const [DataTc, _$DataTc];
  @override
  final String wireName = 'DataTc';

  @override
  Iterable<Object?> serialize(Serializers serializers, DataTc object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'etablissement',
      serializers.serialize(object.etablissement,
          specifiedType: const FullType(EtablissementTc)),
      'appt',
      serializers.serialize(object.appt, specifiedType: const FullType(ApptTc)),
      'infos',
      serializers.serialize(object.infos,
          specifiedType: const FullType(InfosTc)),
      'payment',
      serializers.serialize(object.payment,
          specifiedType: const FullType(PaymentTc)),
      'tokbox',
      serializers.serialize(object.tokbox,
          specifiedType: const FullType(TokboxTc)),
    ];

    return result;
  }

  @override
  DataTc deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DataTcBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'etablissement':
          result.etablissement.replace(serializers.deserialize(value,
                  specifiedType: const FullType(EtablissementTc))!
              as EtablissementTc);
          break;
        case 'appt':
          result.appt.replace(serializers.deserialize(value,
              specifiedType: const FullType(ApptTc))! as ApptTc);
          break;
        case 'infos':
          result.infos.replace(serializers.deserialize(value,
              specifiedType: const FullType(InfosTc))! as InfosTc);
          break;
        case 'payment':
          result.payment.replace(serializers.deserialize(value,
              specifiedType: const FullType(PaymentTc))! as PaymentTc);
          break;
        case 'tokbox':
          result.tokbox.replace(serializers.deserialize(value,
              specifiedType: const FullType(TokboxTc))! as TokboxTc);
          break;
      }
    }

    return result.build();
  }
}

class _$EtablissementTcSerializer
    implements StructuredSerializer<EtablissementTc> {
  @override
  final Iterable<Type> types = const [EtablissementTc, _$EtablissementTc];
  @override
  final String wireName = 'EtablissementTc';

  @override
  Iterable<Object?> serialize(Serializers serializers, EtablissementTc object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'nom',
      serializers.serialize(object.nom, specifiedType: const FullType(String)),
      'address',
      serializers.serialize(object.address,
          specifiedType: const FullType(String)),
      'zip',
      serializers.serialize(object.zip, specifiedType: const FullType(String)),
      'city',
      serializers.serialize(object.city, specifiedType: const FullType(String)),
      'telnospace',
      serializers.serialize(object.telnospace,
          specifiedType: const FullType(String)),
      'tel',
      serializers.serialize(object.tel, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  EtablissementTc deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new EtablissementTcBuilder();

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
        case 'zip':
          result.zip = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'city':
          result.city = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'telnospace':
          result.telnospace = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'tel':
          result.tel = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ApptTcSerializer implements StructuredSerializer<ApptTc> {
  @override
  final Iterable<Type> types = const [ApptTc, _$ApptTc];
  @override
  final String wireName = 'ApptTc';

  @override
  Iterable<Object?> serialize(Serializers serializers, ApptTc object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'token',
      serializers.serialize(object.token,
          specifiedType: const FullType(String)),
      'date',
      serializers.serialize(object.date, specifiedType: const FullType(String)),
      'doctor',
      serializers.serialize(object.doctor,
          specifiedType: const FullType(String)),
      'description',
      serializers.serialize(object.description,
          specifiedType: const FullType(String)),
      'patient',
      serializers.serialize(object.patient,
          specifiedType: const FullType(String)),
      'status',
      serializers.serialize(object.status,
          specifiedType: const FullType(String)),
      'buttoncancel',
      serializers.serialize(object.buttoncancel,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  ApptTc deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ApptTcBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'token':
          result.token = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'doctor':
          result.doctor = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'patient':
          result.patient = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'buttoncancel':
          result.buttoncancel = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$InfosTcSerializer implements StructuredSerializer<InfosTc> {
  @override
  final Iterable<Type> types = const [InfosTc, _$InfosTc];
  @override
  final String wireName = 'InfosTc';

  @override
  Iterable<Object?> serialize(Serializers serializers, InfosTc object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.buttonstarttelecons;
    if (value != null) {
      result
        ..add('buttonstarttelecons')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.buttonstartteleconsdisabled;
    if (value != null) {
      result
        ..add('buttonstartteleconsdisabled')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  InfosTc deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InfosTcBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'buttonstarttelecons':
          result.buttonstarttelecons = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'buttonstartteleconsdisabled':
          result.buttonstartteleconsdisabled = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$PaymentTcSerializer implements StructuredSerializer<PaymentTc> {
  @override
  final Iterable<Type> types = const [PaymentTc, _$PaymentTc];
  @override
  final String wireName = 'PaymentTc';

  @override
  Iterable<Object?> serialize(Serializers serializers, PaymentTc object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'statuslabel',
      serializers.serialize(object.statuslabel,
          specifiedType: const FullType(String)),
      'stripeClientSecret',
      serializers.serialize(object.stripeClientSecret,
          specifiedType: const FullType(String)),
      'text',
      serializers.serialize(object.text, specifiedType: const FullType(String)),
      'history',
      serializers.serialize(object.history,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  PaymentTc deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PaymentTcBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'statuslabel':
          result.statuslabel = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'stripeClientSecret':
          result.stripeClientSecret = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'text':
          result.text = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'history':
          result.history = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$TokboxTcSerializer implements StructuredSerializer<TokboxTc> {
  @override
  final Iterable<Type> types = const [TokboxTc, _$TokboxTc];
  @override
  final String wireName = 'TokboxTc';

  @override
  Iterable<Object?> serialize(Serializers serializers, TokboxTc object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'sessionId',
      serializers.serialize(object.sessionId,
          specifiedType: const FullType(String)),
      'token',
      serializers.serialize(object.token,
          specifiedType: const FullType(String)),
      'apiKey',
      serializers.serialize(object.apiKey,
          specifiedType: const FullType(String)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'error',
      serializers.serialize(object.error,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  TokboxTc deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TokboxTcBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'sessionId':
          result.sessionId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'token':
          result.token = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'apiKey':
          result.apiKey = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'error':
          result.error = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$TeleconsResponse extends TeleconsResponse {
  @override
  final String version;
  @override
  final String request;
  @override
  final ParamsTc params;
  @override
  final String message;
  @override
  final int httpstatut;
  @override
  final String error;
  @override
  final DataTc data;

  factory _$TeleconsResponse(
          [void Function(TeleconsResponseBuilder)? updates]) =>
      (new TeleconsResponseBuilder()..update(updates))._build();

  _$TeleconsResponse._(
      {required this.version,
      required this.request,
      required this.params,
      required this.message,
      required this.httpstatut,
      required this.error,
      required this.data})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        version, r'TeleconsResponse', 'version');
    BuiltValueNullFieldError.checkNotNull(
        request, r'TeleconsResponse', 'request');
    BuiltValueNullFieldError.checkNotNull(
        params, r'TeleconsResponse', 'params');
    BuiltValueNullFieldError.checkNotNull(
        message, r'TeleconsResponse', 'message');
    BuiltValueNullFieldError.checkNotNull(
        httpstatut, r'TeleconsResponse', 'httpstatut');
    BuiltValueNullFieldError.checkNotNull(error, r'TeleconsResponse', 'error');
    BuiltValueNullFieldError.checkNotNull(data, r'TeleconsResponse', 'data');
  }

  @override
  TeleconsResponse rebuild(void Function(TeleconsResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TeleconsResponseBuilder toBuilder() =>
      new TeleconsResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TeleconsResponse &&
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
    return (newBuiltValueToStringHelper(r'TeleconsResponse')
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

class TeleconsResponseBuilder
    implements Builder<TeleconsResponse, TeleconsResponseBuilder> {
  _$TeleconsResponse? _$v;

  String? _version;
  String? get version => _$this._version;
  set version(String? version) => _$this._version = version;

  String? _request;
  String? get request => _$this._request;
  set request(String? request) => _$this._request = request;

  ParamsTcBuilder? _params;
  ParamsTcBuilder get params => _$this._params ??= new ParamsTcBuilder();
  set params(ParamsTcBuilder? params) => _$this._params = params;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  int? _httpstatut;
  int? get httpstatut => _$this._httpstatut;
  set httpstatut(int? httpstatut) => _$this._httpstatut = httpstatut;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  DataTcBuilder? _data;
  DataTcBuilder get data => _$this._data ??= new DataTcBuilder();
  set data(DataTcBuilder? data) => _$this._data = data;

  TeleconsResponseBuilder();

  TeleconsResponseBuilder get _$this {
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
  void replace(TeleconsResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TeleconsResponse;
  }

  @override
  void update(void Function(TeleconsResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TeleconsResponse build() => _build();

  _$TeleconsResponse _build() {
    _$TeleconsResponse _$result;
    try {
      _$result = _$v ??
          new _$TeleconsResponse._(
              version: BuiltValueNullFieldError.checkNotNull(
                  version, r'TeleconsResponse', 'version'),
              request: BuiltValueNullFieldError.checkNotNull(
                  request, r'TeleconsResponse', 'request'),
              params: params.build(),
              message: BuiltValueNullFieldError.checkNotNull(
                  message, r'TeleconsResponse', 'message'),
              httpstatut: BuiltValueNullFieldError.checkNotNull(
                  httpstatut, r'TeleconsResponse', 'httpstatut'),
              error: BuiltValueNullFieldError.checkNotNull(
                  error, r'TeleconsResponse', 'error'),
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
            r'TeleconsResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$ParamsTc extends ParamsTc {
  @override
  final String tokentelecons;

  factory _$ParamsTc([void Function(ParamsTcBuilder)? updates]) =>
      (new ParamsTcBuilder()..update(updates))._build();

  _$ParamsTc._({required this.tokentelecons}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        tokentelecons, r'ParamsTc', 'tokentelecons');
  }

  @override
  ParamsTc rebuild(void Function(ParamsTcBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ParamsTcBuilder toBuilder() => new ParamsTcBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ParamsTc && tokentelecons == other.tokentelecons;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, tokentelecons.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ParamsTc')
          ..add('tokentelecons', tokentelecons))
        .toString();
  }
}

class ParamsTcBuilder implements Builder<ParamsTc, ParamsTcBuilder> {
  _$ParamsTc? _$v;

  String? _tokentelecons;
  String? get tokentelecons => _$this._tokentelecons;
  set tokentelecons(String? tokentelecons) =>
      _$this._tokentelecons = tokentelecons;

  ParamsTcBuilder();

  ParamsTcBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tokentelecons = $v.tokentelecons;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ParamsTc other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ParamsTc;
  }

  @override
  void update(void Function(ParamsTcBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ParamsTc build() => _build();

  _$ParamsTc _build() {
    final _$result = _$v ??
        new _$ParamsTc._(
            tokentelecons: BuiltValueNullFieldError.checkNotNull(
                tokentelecons, r'ParamsTc', 'tokentelecons'));
    replace(_$result);
    return _$result;
  }
}

class _$DataTc extends DataTc {
  @override
  final EtablissementTc etablissement;
  @override
  final ApptTc appt;
  @override
  final InfosTc infos;
  @override
  final PaymentTc payment;
  @override
  final TokboxTc tokbox;

  factory _$DataTc([void Function(DataTcBuilder)? updates]) =>
      (new DataTcBuilder()..update(updates))._build();

  _$DataTc._(
      {required this.etablissement,
      required this.appt,
      required this.infos,
      required this.payment,
      required this.tokbox})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        etablissement, r'DataTc', 'etablissement');
    BuiltValueNullFieldError.checkNotNull(appt, r'DataTc', 'appt');
    BuiltValueNullFieldError.checkNotNull(infos, r'DataTc', 'infos');
    BuiltValueNullFieldError.checkNotNull(payment, r'DataTc', 'payment');
    BuiltValueNullFieldError.checkNotNull(tokbox, r'DataTc', 'tokbox');
  }

  @override
  DataTc rebuild(void Function(DataTcBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DataTcBuilder toBuilder() => new DataTcBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DataTc &&
        etablissement == other.etablissement &&
        appt == other.appt &&
        infos == other.infos &&
        payment == other.payment &&
        tokbox == other.tokbox;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, etablissement.hashCode);
    _$hash = $jc(_$hash, appt.hashCode);
    _$hash = $jc(_$hash, infos.hashCode);
    _$hash = $jc(_$hash, payment.hashCode);
    _$hash = $jc(_$hash, tokbox.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DataTc')
          ..add('etablissement', etablissement)
          ..add('appt', appt)
          ..add('infos', infos)
          ..add('payment', payment)
          ..add('tokbox', tokbox))
        .toString();
  }
}

class DataTcBuilder implements Builder<DataTc, DataTcBuilder> {
  _$DataTc? _$v;

  EtablissementTcBuilder? _etablissement;
  EtablissementTcBuilder get etablissement =>
      _$this._etablissement ??= new EtablissementTcBuilder();
  set etablissement(EtablissementTcBuilder? etablissement) =>
      _$this._etablissement = etablissement;

  ApptTcBuilder? _appt;
  ApptTcBuilder get appt => _$this._appt ??= new ApptTcBuilder();
  set appt(ApptTcBuilder? appt) => _$this._appt = appt;

  InfosTcBuilder? _infos;
  InfosTcBuilder get infos => _$this._infos ??= new InfosTcBuilder();
  set infos(InfosTcBuilder? infos) => _$this._infos = infos;

  PaymentTcBuilder? _payment;
  PaymentTcBuilder get payment => _$this._payment ??= new PaymentTcBuilder();
  set payment(PaymentTcBuilder? payment) => _$this._payment = payment;

  TokboxTcBuilder? _tokbox;
  TokboxTcBuilder get tokbox => _$this._tokbox ??= new TokboxTcBuilder();
  set tokbox(TokboxTcBuilder? tokbox) => _$this._tokbox = tokbox;

  DataTcBuilder();

  DataTcBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _etablissement = $v.etablissement.toBuilder();
      _appt = $v.appt.toBuilder();
      _infos = $v.infos.toBuilder();
      _payment = $v.payment.toBuilder();
      _tokbox = $v.tokbox.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DataTc other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DataTc;
  }

  @override
  void update(void Function(DataTcBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DataTc build() => _build();

  _$DataTc _build() {
    _$DataTc _$result;
    try {
      _$result = _$v ??
          new _$DataTc._(
              etablissement: etablissement.build(),
              appt: appt.build(),
              infos: infos.build(),
              payment: payment.build(),
              tokbox: tokbox.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'etablissement';
        etablissement.build();
        _$failedField = 'appt';
        appt.build();
        _$failedField = 'infos';
        infos.build();
        _$failedField = 'payment';
        payment.build();
        _$failedField = 'tokbox';
        tokbox.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DataTc', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$EtablissementTc extends EtablissementTc {
  @override
  final String nom;
  @override
  final String address;
  @override
  final String zip;
  @override
  final String city;
  @override
  final String telnospace;
  @override
  final String tel;

  factory _$EtablissementTc([void Function(EtablissementTcBuilder)? updates]) =>
      (new EtablissementTcBuilder()..update(updates))._build();

  _$EtablissementTc._(
      {required this.nom,
      required this.address,
      required this.zip,
      required this.city,
      required this.telnospace,
      required this.tel})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(nom, r'EtablissementTc', 'nom');
    BuiltValueNullFieldError.checkNotNull(
        address, r'EtablissementTc', 'address');
    BuiltValueNullFieldError.checkNotNull(zip, r'EtablissementTc', 'zip');
    BuiltValueNullFieldError.checkNotNull(city, r'EtablissementTc', 'city');
    BuiltValueNullFieldError.checkNotNull(
        telnospace, r'EtablissementTc', 'telnospace');
    BuiltValueNullFieldError.checkNotNull(tel, r'EtablissementTc', 'tel');
  }

  @override
  EtablissementTc rebuild(void Function(EtablissementTcBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EtablissementTcBuilder toBuilder() =>
      new EtablissementTcBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EtablissementTc &&
        nom == other.nom &&
        address == other.address &&
        zip == other.zip &&
        city == other.city &&
        telnospace == other.telnospace &&
        tel == other.tel;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, nom.hashCode);
    _$hash = $jc(_$hash, address.hashCode);
    _$hash = $jc(_$hash, zip.hashCode);
    _$hash = $jc(_$hash, city.hashCode);
    _$hash = $jc(_$hash, telnospace.hashCode);
    _$hash = $jc(_$hash, tel.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EtablissementTc')
          ..add('nom', nom)
          ..add('address', address)
          ..add('zip', zip)
          ..add('city', city)
          ..add('telnospace', telnospace)
          ..add('tel', tel))
        .toString();
  }
}

class EtablissementTcBuilder
    implements Builder<EtablissementTc, EtablissementTcBuilder> {
  _$EtablissementTc? _$v;

  String? _nom;
  String? get nom => _$this._nom;
  set nom(String? nom) => _$this._nom = nom;

  String? _address;
  String? get address => _$this._address;
  set address(String? address) => _$this._address = address;

  String? _zip;
  String? get zip => _$this._zip;
  set zip(String? zip) => _$this._zip = zip;

  String? _city;
  String? get city => _$this._city;
  set city(String? city) => _$this._city = city;

  String? _telnospace;
  String? get telnospace => _$this._telnospace;
  set telnospace(String? telnospace) => _$this._telnospace = telnospace;

  String? _tel;
  String? get tel => _$this._tel;
  set tel(String? tel) => _$this._tel = tel;

  EtablissementTcBuilder();

  EtablissementTcBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nom = $v.nom;
      _address = $v.address;
      _zip = $v.zip;
      _city = $v.city;
      _telnospace = $v.telnospace;
      _tel = $v.tel;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EtablissementTc other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EtablissementTc;
  }

  @override
  void update(void Function(EtablissementTcBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EtablissementTc build() => _build();

  _$EtablissementTc _build() {
    final _$result = _$v ??
        new _$EtablissementTc._(
            nom: BuiltValueNullFieldError.checkNotNull(
                nom, r'EtablissementTc', 'nom'),
            address: BuiltValueNullFieldError.checkNotNull(
                address, r'EtablissementTc', 'address'),
            zip: BuiltValueNullFieldError.checkNotNull(
                zip, r'EtablissementTc', 'zip'),
            city: BuiltValueNullFieldError.checkNotNull(
                city, r'EtablissementTc', 'city'),
            telnospace: BuiltValueNullFieldError.checkNotNull(
                telnospace, r'EtablissementTc', 'telnospace'),
            tel: BuiltValueNullFieldError.checkNotNull(
                tel, r'EtablissementTc', 'tel'));
    replace(_$result);
    return _$result;
  }
}

class _$ApptTc extends ApptTc {
  @override
  final String token;
  @override
  final String date;
  @override
  final String doctor;
  @override
  final String description;
  @override
  final String patient;
  @override
  final String status;
  @override
  final String buttoncancel;

  factory _$ApptTc([void Function(ApptTcBuilder)? updates]) =>
      (new ApptTcBuilder()..update(updates))._build();

  _$ApptTc._(
      {required this.token,
      required this.date,
      required this.doctor,
      required this.description,
      required this.patient,
      required this.status,
      required this.buttoncancel})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(token, r'ApptTc', 'token');
    BuiltValueNullFieldError.checkNotNull(date, r'ApptTc', 'date');
    BuiltValueNullFieldError.checkNotNull(doctor, r'ApptTc', 'doctor');
    BuiltValueNullFieldError.checkNotNull(
        description, r'ApptTc', 'description');
    BuiltValueNullFieldError.checkNotNull(patient, r'ApptTc', 'patient');
    BuiltValueNullFieldError.checkNotNull(status, r'ApptTc', 'status');
    BuiltValueNullFieldError.checkNotNull(
        buttoncancel, r'ApptTc', 'buttoncancel');
  }

  @override
  ApptTc rebuild(void Function(ApptTcBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApptTcBuilder toBuilder() => new ApptTcBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApptTc &&
        token == other.token &&
        date == other.date &&
        doctor == other.doctor &&
        description == other.description &&
        patient == other.patient &&
        status == other.status &&
        buttoncancel == other.buttoncancel;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, token.hashCode);
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, doctor.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, patient.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, buttoncancel.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ApptTc')
          ..add('token', token)
          ..add('date', date)
          ..add('doctor', doctor)
          ..add('description', description)
          ..add('patient', patient)
          ..add('status', status)
          ..add('buttoncancel', buttoncancel))
        .toString();
  }
}

class ApptTcBuilder implements Builder<ApptTc, ApptTcBuilder> {
  _$ApptTc? _$v;

  String? _token;
  String? get token => _$this._token;
  set token(String? token) => _$this._token = token;

  String? _date;
  String? get date => _$this._date;
  set date(String? date) => _$this._date = date;

  String? _doctor;
  String? get doctor => _$this._doctor;
  set doctor(String? doctor) => _$this._doctor = doctor;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _patient;
  String? get patient => _$this._patient;
  set patient(String? patient) => _$this._patient = patient;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  String? _buttoncancel;
  String? get buttoncancel => _$this._buttoncancel;
  set buttoncancel(String? buttoncancel) => _$this._buttoncancel = buttoncancel;

  ApptTcBuilder();

  ApptTcBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _token = $v.token;
      _date = $v.date;
      _doctor = $v.doctor;
      _description = $v.description;
      _patient = $v.patient;
      _status = $v.status;
      _buttoncancel = $v.buttoncancel;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApptTc other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ApptTc;
  }

  @override
  void update(void Function(ApptTcBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ApptTc build() => _build();

  _$ApptTc _build() {
    final _$result = _$v ??
        new _$ApptTc._(
            token: BuiltValueNullFieldError.checkNotNull(
                token, r'ApptTc', 'token'),
            date:
                BuiltValueNullFieldError.checkNotNull(date, r'ApptTc', 'date'),
            doctor: BuiltValueNullFieldError.checkNotNull(
                doctor, r'ApptTc', 'doctor'),
            description: BuiltValueNullFieldError.checkNotNull(
                description, r'ApptTc', 'description'),
            patient: BuiltValueNullFieldError.checkNotNull(
                patient, r'ApptTc', 'patient'),
            status: BuiltValueNullFieldError.checkNotNull(
                status, r'ApptTc', 'status'),
            buttoncancel: BuiltValueNullFieldError.checkNotNull(
                buttoncancel, r'ApptTc', 'buttoncancel'));
    replace(_$result);
    return _$result;
  }
}

class _$InfosTc extends InfosTc {
  @override
  final String? buttonstarttelecons;
  @override
  final String? buttonstartteleconsdisabled;

  factory _$InfosTc([void Function(InfosTcBuilder)? updates]) =>
      (new InfosTcBuilder()..update(updates))._build();

  _$InfosTc._({this.buttonstarttelecons, this.buttonstartteleconsdisabled})
      : super._();

  @override
  InfosTc rebuild(void Function(InfosTcBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InfosTcBuilder toBuilder() => new InfosTcBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InfosTc &&
        buttonstarttelecons == other.buttonstarttelecons &&
        buttonstartteleconsdisabled == other.buttonstartteleconsdisabled;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, buttonstarttelecons.hashCode);
    _$hash = $jc(_$hash, buttonstartteleconsdisabled.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'InfosTc')
          ..add('buttonstarttelecons', buttonstarttelecons)
          ..add('buttonstartteleconsdisabled', buttonstartteleconsdisabled))
        .toString();
  }
}

class InfosTcBuilder implements Builder<InfosTc, InfosTcBuilder> {
  _$InfosTc? _$v;

  String? _buttonstarttelecons;
  String? get buttonstarttelecons => _$this._buttonstarttelecons;
  set buttonstarttelecons(String? buttonstarttelecons) =>
      _$this._buttonstarttelecons = buttonstarttelecons;

  String? _buttonstartteleconsdisabled;
  String? get buttonstartteleconsdisabled =>
      _$this._buttonstartteleconsdisabled;
  set buttonstartteleconsdisabled(String? buttonstartteleconsdisabled) =>
      _$this._buttonstartteleconsdisabled = buttonstartteleconsdisabled;

  InfosTcBuilder();

  InfosTcBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _buttonstarttelecons = $v.buttonstarttelecons;
      _buttonstartteleconsdisabled = $v.buttonstartteleconsdisabled;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InfosTc other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InfosTc;
  }

  @override
  void update(void Function(InfosTcBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InfosTc build() => _build();

  _$InfosTc _build() {
    final _$result = _$v ??
        new _$InfosTc._(
            buttonstarttelecons: buttonstarttelecons,
            buttonstartteleconsdisabled: buttonstartteleconsdisabled);
    replace(_$result);
    return _$result;
  }
}

class _$PaymentTc extends PaymentTc {
  @override
  final String title;
  @override
  final String statuslabel;
  @override
  final String stripeClientSecret;
  @override
  final String text;
  @override
  final String history;

  factory _$PaymentTc([void Function(PaymentTcBuilder)? updates]) =>
      (new PaymentTcBuilder()..update(updates))._build();

  _$PaymentTc._(
      {required this.title,
      required this.statuslabel,
      required this.stripeClientSecret,
      required this.text,
      required this.history})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(title, r'PaymentTc', 'title');
    BuiltValueNullFieldError.checkNotNull(
        statuslabel, r'PaymentTc', 'statuslabel');
    BuiltValueNullFieldError.checkNotNull(
        stripeClientSecret, r'PaymentTc', 'stripeClientSecret');
    BuiltValueNullFieldError.checkNotNull(text, r'PaymentTc', 'text');
    BuiltValueNullFieldError.checkNotNull(history, r'PaymentTc', 'history');
  }

  @override
  PaymentTc rebuild(void Function(PaymentTcBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PaymentTcBuilder toBuilder() => new PaymentTcBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PaymentTc &&
        title == other.title &&
        statuslabel == other.statuslabel &&
        stripeClientSecret == other.stripeClientSecret &&
        text == other.text &&
        history == other.history;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, statuslabel.hashCode);
    _$hash = $jc(_$hash, stripeClientSecret.hashCode);
    _$hash = $jc(_$hash, text.hashCode);
    _$hash = $jc(_$hash, history.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PaymentTc')
          ..add('title', title)
          ..add('statuslabel', statuslabel)
          ..add('stripeClientSecret', stripeClientSecret)
          ..add('text', text)
          ..add('history', history))
        .toString();
  }
}

class PaymentTcBuilder implements Builder<PaymentTc, PaymentTcBuilder> {
  _$PaymentTc? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _statuslabel;
  String? get statuslabel => _$this._statuslabel;
  set statuslabel(String? statuslabel) => _$this._statuslabel = statuslabel;

  String? _stripeClientSecret;
  String? get stripeClientSecret => _$this._stripeClientSecret;
  set stripeClientSecret(String? stripeClientSecret) =>
      _$this._stripeClientSecret = stripeClientSecret;

  String? _text;
  String? get text => _$this._text;
  set text(String? text) => _$this._text = text;

  String? _history;
  String? get history => _$this._history;
  set history(String? history) => _$this._history = history;

  PaymentTcBuilder();

  PaymentTcBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _statuslabel = $v.statuslabel;
      _stripeClientSecret = $v.stripeClientSecret;
      _text = $v.text;
      _history = $v.history;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PaymentTc other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PaymentTc;
  }

  @override
  void update(void Function(PaymentTcBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PaymentTc build() => _build();

  _$PaymentTc _build() {
    final _$result = _$v ??
        new _$PaymentTc._(
            title: BuiltValueNullFieldError.checkNotNull(
                title, r'PaymentTc', 'title'),
            statuslabel: BuiltValueNullFieldError.checkNotNull(
                statuslabel, r'PaymentTc', 'statuslabel'),
            stripeClientSecret: BuiltValueNullFieldError.checkNotNull(
                stripeClientSecret, r'PaymentTc', 'stripeClientSecret'),
            text: BuiltValueNullFieldError.checkNotNull(
                text, r'PaymentTc', 'text'),
            history: BuiltValueNullFieldError.checkNotNull(
                history, r'PaymentTc', 'history'));
    replace(_$result);
    return _$result;
  }
}

class _$TokboxTc extends TokboxTc {
  @override
  final String sessionId;
  @override
  final String token;
  @override
  final String apiKey;
  @override
  final String title;
  @override
  final String error;

  factory _$TokboxTc([void Function(TokboxTcBuilder)? updates]) =>
      (new TokboxTcBuilder()..update(updates))._build();

  _$TokboxTc._(
      {required this.sessionId,
      required this.token,
      required this.apiKey,
      required this.title,
      required this.error})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(sessionId, r'TokboxTc', 'sessionId');
    BuiltValueNullFieldError.checkNotNull(token, r'TokboxTc', 'token');
    BuiltValueNullFieldError.checkNotNull(apiKey, r'TokboxTc', 'apiKey');
    BuiltValueNullFieldError.checkNotNull(title, r'TokboxTc', 'title');
    BuiltValueNullFieldError.checkNotNull(error, r'TokboxTc', 'error');
  }

  @override
  TokboxTc rebuild(void Function(TokboxTcBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TokboxTcBuilder toBuilder() => new TokboxTcBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TokboxTc &&
        sessionId == other.sessionId &&
        token == other.token &&
        apiKey == other.apiKey &&
        title == other.title &&
        error == other.error;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, sessionId.hashCode);
    _$hash = $jc(_$hash, token.hashCode);
    _$hash = $jc(_$hash, apiKey.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TokboxTc')
          ..add('sessionId', sessionId)
          ..add('token', token)
          ..add('apiKey', apiKey)
          ..add('title', title)
          ..add('error', error))
        .toString();
  }
}

class TokboxTcBuilder implements Builder<TokboxTc, TokboxTcBuilder> {
  _$TokboxTc? _$v;

  String? _sessionId;
  String? get sessionId => _$this._sessionId;
  set sessionId(String? sessionId) => _$this._sessionId = sessionId;

  String? _token;
  String? get token => _$this._token;
  set token(String? token) => _$this._token = token;

  String? _apiKey;
  String? get apiKey => _$this._apiKey;
  set apiKey(String? apiKey) => _$this._apiKey = apiKey;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  TokboxTcBuilder();

  TokboxTcBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sessionId = $v.sessionId;
      _token = $v.token;
      _apiKey = $v.apiKey;
      _title = $v.title;
      _error = $v.error;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TokboxTc other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TokboxTc;
  }

  @override
  void update(void Function(TokboxTcBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TokboxTc build() => _build();

  _$TokboxTc _build() {
    final _$result = _$v ??
        new _$TokboxTc._(
            sessionId: BuiltValueNullFieldError.checkNotNull(
                sessionId, r'TokboxTc', 'sessionId'),
            token: BuiltValueNullFieldError.checkNotNull(
                token, r'TokboxTc', 'token'),
            apiKey: BuiltValueNullFieldError.checkNotNull(
                apiKey, r'TokboxTc', 'apiKey'),
            title: BuiltValueNullFieldError.checkNotNull(
                title, r'TokboxTc', 'title'),
            error: BuiltValueNullFieldError.checkNotNull(
                error, r'TokboxTc', 'error'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
