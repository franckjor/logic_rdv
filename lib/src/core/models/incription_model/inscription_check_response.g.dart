// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inscription_check_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InscriptionCheckResponse> _$inscriptionCheckResponseSerializer =
    new _$InscriptionCheckResponseSerializer();
Serializer<ParamsInscriptionCheckResponse>
    _$paramsInscriptionCheckResponseSerializer =
    new _$ParamsInscriptionCheckResponseSerializer();
Serializer<DataInscriptionCheckResponse>
    _$dataInscriptionCheckResponseSerializer =
    new _$DataInscriptionCheckResponseSerializer();
Serializer<Etabs> _$etabsSerializer = new _$EtabsSerializer();
Serializer<Cgu> _$cguSerializer = new _$CguSerializer();

class _$InscriptionCheckResponseSerializer
    implements StructuredSerializer<InscriptionCheckResponse> {
  @override
  final Iterable<Type> types = const [
    InscriptionCheckResponse,
    _$InscriptionCheckResponse
  ];
  @override
  final String wireName = 'InscriptionCheckResponse';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, InscriptionCheckResponse object,
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
          specifiedType: const FullType(ParamsInscriptionCheckResponse)),
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
          specifiedType: const FullType(DataInscriptionCheckResponse)),
    ];

    return result;
  }

  @override
  InscriptionCheckResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InscriptionCheckResponseBuilder();

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
                  specifiedType:
                      const FullType(ParamsInscriptionCheckResponse))!
              as ParamsInscriptionCheckResponse);
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
                  specifiedType: const FullType(DataInscriptionCheckResponse))!
              as DataInscriptionCheckResponse);
          break;
      }
    }

    return result.build();
  }
}

class _$ParamsInscriptionCheckResponseSerializer
    implements StructuredSerializer<ParamsInscriptionCheckResponse> {
  @override
  final Iterable<Type> types = const [
    ParamsInscriptionCheckResponse,
    _$ParamsInscriptionCheckResponse
  ];
  @override
  final String wireName = 'ParamsInscriptionCheckResponse';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, ParamsInscriptionCheckResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'phone',
      serializers.serialize(object.phone,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  ParamsInscriptionCheckResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ParamsInscriptionCheckResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'phone':
          result.phone = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$DataInscriptionCheckResponseSerializer
    implements StructuredSerializer<DataInscriptionCheckResponse> {
  @override
  final Iterable<Type> types = const [
    DataInscriptionCheckResponse,
    _$DataInscriptionCheckResponse
  ];
  @override
  final String wireName = 'DataInscriptionCheckResponse';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, DataInscriptionCheckResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'etabs',
      serializers.serialize(object.etabs,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Etabs)])),
      'code',
      serializers.serialize(object.code, specifiedType: const FullType(String)),
      'cgu',
      serializers.serialize(object.cgu,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Cgu)])),
    ];

    return result;
  }

  @override
  DataInscriptionCheckResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DataInscriptionCheckResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'etabs':
          result.etabs.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Etabs)]))!
              as BuiltList<Object?>);
          break;
        case 'code':
          result.code = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'cgu':
          result.cgu.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Cgu)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$EtabsSerializer implements StructuredSerializer<Etabs> {
  @override
  final Iterable<Type> types = const [Etabs, _$Etabs];
  @override
  final String wireName = 'Etabs';

  @override
  Iterable<Object?> serialize(Serializers serializers, Etabs object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Etabs deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new EtabsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$CguSerializer implements StructuredSerializer<Cgu> {
  @override
  final Iterable<Type> types = const [Cgu, _$Cgu];
  @override
  final String wireName = 'Cgu';

  @override
  Iterable<Object?> serialize(Serializers serializers, Cgu object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'description',
      serializers.serialize(object.description,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Cgu deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CguBuilder();

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
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$InscriptionCheckResponse extends InscriptionCheckResponse {
  @override
  final String version;
  @override
  final String request;
  @override
  final ParamsInscriptionCheckResponse params;
  @override
  final String message;
  @override
  final int httpstatut;
  @override
  final String error;
  @override
  final DataInscriptionCheckResponse data;

  factory _$InscriptionCheckResponse(
          [void Function(InscriptionCheckResponseBuilder)? updates]) =>
      (new InscriptionCheckResponseBuilder()..update(updates))._build();

  _$InscriptionCheckResponse._(
      {required this.version,
      required this.request,
      required this.params,
      required this.message,
      required this.httpstatut,
      required this.error,
      required this.data})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        version, r'InscriptionCheckResponse', 'version');
    BuiltValueNullFieldError.checkNotNull(
        request, r'InscriptionCheckResponse', 'request');
    BuiltValueNullFieldError.checkNotNull(
        params, r'InscriptionCheckResponse', 'params');
    BuiltValueNullFieldError.checkNotNull(
        message, r'InscriptionCheckResponse', 'message');
    BuiltValueNullFieldError.checkNotNull(
        httpstatut, r'InscriptionCheckResponse', 'httpstatut');
    BuiltValueNullFieldError.checkNotNull(
        error, r'InscriptionCheckResponse', 'error');
    BuiltValueNullFieldError.checkNotNull(
        data, r'InscriptionCheckResponse', 'data');
  }

  @override
  InscriptionCheckResponse rebuild(
          void Function(InscriptionCheckResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InscriptionCheckResponseBuilder toBuilder() =>
      new InscriptionCheckResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InscriptionCheckResponse &&
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
    return (newBuiltValueToStringHelper(r'InscriptionCheckResponse')
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

class InscriptionCheckResponseBuilder
    implements
        Builder<InscriptionCheckResponse, InscriptionCheckResponseBuilder> {
  _$InscriptionCheckResponse? _$v;

  String? _version;
  String? get version => _$this._version;
  set version(String? version) => _$this._version = version;

  String? _request;
  String? get request => _$this._request;
  set request(String? request) => _$this._request = request;

  ParamsInscriptionCheckResponseBuilder? _params;
  ParamsInscriptionCheckResponseBuilder get params =>
      _$this._params ??= new ParamsInscriptionCheckResponseBuilder();
  set params(ParamsInscriptionCheckResponseBuilder? params) =>
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

  DataInscriptionCheckResponseBuilder? _data;
  DataInscriptionCheckResponseBuilder get data =>
      _$this._data ??= new DataInscriptionCheckResponseBuilder();
  set data(DataInscriptionCheckResponseBuilder? data) => _$this._data = data;

  InscriptionCheckResponseBuilder();

  InscriptionCheckResponseBuilder get _$this {
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
  void replace(InscriptionCheckResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InscriptionCheckResponse;
  }

  @override
  void update(void Function(InscriptionCheckResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InscriptionCheckResponse build() => _build();

  _$InscriptionCheckResponse _build() {
    _$InscriptionCheckResponse _$result;
    try {
      _$result = _$v ??
          new _$InscriptionCheckResponse._(
              version: BuiltValueNullFieldError.checkNotNull(
                  version, r'InscriptionCheckResponse', 'version'),
              request: BuiltValueNullFieldError.checkNotNull(
                  request, r'InscriptionCheckResponse', 'request'),
              params: params.build(),
              message: BuiltValueNullFieldError.checkNotNull(
                  message, r'InscriptionCheckResponse', 'message'),
              httpstatut: BuiltValueNullFieldError.checkNotNull(
                  httpstatut, r'InscriptionCheckResponse', 'httpstatut'),
              error: BuiltValueNullFieldError.checkNotNull(
                  error, r'InscriptionCheckResponse', 'error'),
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
            r'InscriptionCheckResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$ParamsInscriptionCheckResponse extends ParamsInscriptionCheckResponse {
  @override
  final String phone;

  factory _$ParamsInscriptionCheckResponse(
          [void Function(ParamsInscriptionCheckResponseBuilder)? updates]) =>
      (new ParamsInscriptionCheckResponseBuilder()..update(updates))._build();

  _$ParamsInscriptionCheckResponse._({required this.phone}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        phone, r'ParamsInscriptionCheckResponse', 'phone');
  }

  @override
  ParamsInscriptionCheckResponse rebuild(
          void Function(ParamsInscriptionCheckResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ParamsInscriptionCheckResponseBuilder toBuilder() =>
      new ParamsInscriptionCheckResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ParamsInscriptionCheckResponse && phone == other.phone;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, phone.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ParamsInscriptionCheckResponse')
          ..add('phone', phone))
        .toString();
  }
}

class ParamsInscriptionCheckResponseBuilder
    implements
        Builder<ParamsInscriptionCheckResponse,
            ParamsInscriptionCheckResponseBuilder> {
  _$ParamsInscriptionCheckResponse? _$v;

  String? _phone;
  String? get phone => _$this._phone;
  set phone(String? phone) => _$this._phone = phone;

  ParamsInscriptionCheckResponseBuilder();

  ParamsInscriptionCheckResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _phone = $v.phone;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ParamsInscriptionCheckResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ParamsInscriptionCheckResponse;
  }

  @override
  void update(void Function(ParamsInscriptionCheckResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ParamsInscriptionCheckResponse build() => _build();

  _$ParamsInscriptionCheckResponse _build() {
    final _$result = _$v ??
        new _$ParamsInscriptionCheckResponse._(
            phone: BuiltValueNullFieldError.checkNotNull(
                phone, r'ParamsInscriptionCheckResponse', 'phone'));
    replace(_$result);
    return _$result;
  }
}

class _$DataInscriptionCheckResponse extends DataInscriptionCheckResponse {
  @override
  final BuiltList<Etabs> etabs;
  @override
  final String code;
  @override
  final BuiltList<Cgu> cgu;

  factory _$DataInscriptionCheckResponse(
          [void Function(DataInscriptionCheckResponseBuilder)? updates]) =>
      (new DataInscriptionCheckResponseBuilder()..update(updates))._build();

  _$DataInscriptionCheckResponse._(
      {required this.etabs, required this.code, required this.cgu})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        etabs, r'DataInscriptionCheckResponse', 'etabs');
    BuiltValueNullFieldError.checkNotNull(
        code, r'DataInscriptionCheckResponse', 'code');
    BuiltValueNullFieldError.checkNotNull(
        cgu, r'DataInscriptionCheckResponse', 'cgu');
  }

  @override
  DataInscriptionCheckResponse rebuild(
          void Function(DataInscriptionCheckResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DataInscriptionCheckResponseBuilder toBuilder() =>
      new DataInscriptionCheckResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DataInscriptionCheckResponse &&
        etabs == other.etabs &&
        code == other.code &&
        cgu == other.cgu;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, etabs.hashCode);
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, cgu.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DataInscriptionCheckResponse')
          ..add('etabs', etabs)
          ..add('code', code)
          ..add('cgu', cgu))
        .toString();
  }
}

class DataInscriptionCheckResponseBuilder
    implements
        Builder<DataInscriptionCheckResponse,
            DataInscriptionCheckResponseBuilder> {
  _$DataInscriptionCheckResponse? _$v;

  ListBuilder<Etabs>? _etabs;
  ListBuilder<Etabs> get etabs => _$this._etabs ??= new ListBuilder<Etabs>();
  set etabs(ListBuilder<Etabs>? etabs) => _$this._etabs = etabs;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  ListBuilder<Cgu>? _cgu;
  ListBuilder<Cgu> get cgu => _$this._cgu ??= new ListBuilder<Cgu>();
  set cgu(ListBuilder<Cgu>? cgu) => _$this._cgu = cgu;

  DataInscriptionCheckResponseBuilder();

  DataInscriptionCheckResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _etabs = $v.etabs.toBuilder();
      _code = $v.code;
      _cgu = $v.cgu.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DataInscriptionCheckResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DataInscriptionCheckResponse;
  }

  @override
  void update(void Function(DataInscriptionCheckResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DataInscriptionCheckResponse build() => _build();

  _$DataInscriptionCheckResponse _build() {
    _$DataInscriptionCheckResponse _$result;
    try {
      _$result = _$v ??
          new _$DataInscriptionCheckResponse._(
              etabs: etabs.build(),
              code: BuiltValueNullFieldError.checkNotNull(
                  code, r'DataInscriptionCheckResponse', 'code'),
              cgu: cgu.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'etabs';
        etabs.build();

        _$failedField = 'cgu';
        cgu.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DataInscriptionCheckResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Etabs extends Etabs {
  @override
  final String id;
  @override
  final String name;

  factory _$Etabs([void Function(EtabsBuilder)? updates]) =>
      (new EtabsBuilder()..update(updates))._build();

  _$Etabs._({required this.id, required this.name}) : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'Etabs', 'id');
    BuiltValueNullFieldError.checkNotNull(name, r'Etabs', 'name');
  }

  @override
  Etabs rebuild(void Function(EtabsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EtabsBuilder toBuilder() => new EtabsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Etabs && id == other.id && name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Etabs')
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class EtabsBuilder implements Builder<Etabs, EtabsBuilder> {
  _$Etabs? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  EtabsBuilder();

  EtabsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Etabs other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Etabs;
  }

  @override
  void update(void Function(EtabsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Etabs build() => _build();

  _$Etabs _build() {
    final _$result = _$v ??
        new _$Etabs._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'Etabs', 'id'),
            name:
                BuiltValueNullFieldError.checkNotNull(name, r'Etabs', 'name'));
    replace(_$result);
    return _$result;
  }
}

class _$Cgu extends Cgu {
  @override
  final String title;
  @override
  final String description;

  factory _$Cgu([void Function(CguBuilder)? updates]) =>
      (new CguBuilder()..update(updates))._build();

  _$Cgu._({required this.title, required this.description}) : super._() {
    BuiltValueNullFieldError.checkNotNull(title, r'Cgu', 'title');
    BuiltValueNullFieldError.checkNotNull(description, r'Cgu', 'description');
  }

  @override
  Cgu rebuild(void Function(CguBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CguBuilder toBuilder() => new CguBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Cgu &&
        title == other.title &&
        description == other.description;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Cgu')
          ..add('title', title)
          ..add('description', description))
        .toString();
  }
}

class CguBuilder implements Builder<Cgu, CguBuilder> {
  _$Cgu? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  CguBuilder();

  CguBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _description = $v.description;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Cgu other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Cgu;
  }

  @override
  void update(void Function(CguBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Cgu build() => _build();

  _$Cgu _build() {
    final _$result = _$v ??
        new _$Cgu._(
            title:
                BuiltValueNullFieldError.checkNotNull(title, r'Cgu', 'title'),
            description: BuiltValueNullFieldError.checkNotNull(
                description, r'Cgu', 'description'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
