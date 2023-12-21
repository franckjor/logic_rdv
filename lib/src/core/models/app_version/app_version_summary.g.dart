// GENERATED CODE - DO NOT MODIFY BY HAND

part of app_version_summary;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AppVersionSummary> _$appVersionSummarySerializer =
    new _$AppVersionSummarySerializer();
Serializer<ParamsAppVersionSummary> _$paramsAppVersionSummarySerializer =
    new _$ParamsAppVersionSummarySerializer();
Serializer<DataAppVersionSummary> _$dataAppVersionSummarySerializer =
    new _$DataAppVersionSummarySerializer();
Serializer<Version> _$versionSerializer = new _$VersionSerializer();

class _$AppVersionSummarySerializer
    implements StructuredSerializer<AppVersionSummary> {
  @override
  final Iterable<Type> types = const [AppVersionSummary, _$AppVersionSummary];
  @override
  final String wireName = 'AppVersionSummary';

  @override
  Iterable<Object> serialize(Serializers serializers, AppVersionSummary object,
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
          specifiedType: const FullType(
              BuiltList, const [const FullType(ParamsAppVersionSummary)]))!,
      'error',
      serializers.serialize(object.error,
          specifiedType: const FullType(String))!,
      'message',
      serializers.serialize(object.message,
          specifiedType: const FullType(String))!,
      'data',
      serializers.serialize(object.data,
          specifiedType: const FullType(DataAppVersionSummary))!,
    ];

    return result;
  }

  @override
  AppVersionSummary deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AppVersionSummaryBuilder();

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
              specifiedType: const FullType(BuiltList, const [
                const FullType(ParamsAppVersionSummary)
              ])) as BuiltList<Object>);
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
                  specifiedType: const FullType(DataAppVersionSummary))
              as DataAppVersionSummary);
          break;
      }
    }

    return result.build();
  }
}

class _$ParamsAppVersionSummarySerializer
    implements StructuredSerializer<ParamsAppVersionSummary> {
  @override
  final Iterable<Type> types = const [
    ParamsAppVersionSummary,
    _$ParamsAppVersionSummary
  ];
  @override
  final String wireName = 'ParamsAppVersionSummary';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ParamsAppVersionSummary object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'android',
      serializers.serialize(object.android,
          specifiedType: const FullType(String))!,
      'iphone',
      serializers.serialize(object.iphone,
          specifiedType: const FullType(String))!,
    ];

    return result;
  }

  @override
  ParamsAppVersionSummary deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ParamsAppVersionSummaryBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current!;
      switch (key) {
        case 'android':
          result.android = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'iphone':
          result.iphone = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$DataAppVersionSummarySerializer
    implements StructuredSerializer<DataAppVersionSummary> {
  @override
  final Iterable<Type> types = const [
    DataAppVersionSummary,
    _$DataAppVersionSummary
  ];
  @override
  final String wireName = 'DataAppVersionSummary';

  @override
  Iterable<Object> serialize(
      Serializers serializers, DataAppVersionSummary object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'version',
      serializers.serialize(object.version,
          specifiedType: const FullType(Version))!,
    ];

    return result;
  }

  @override
  DataAppVersionSummary deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DataAppVersionSummaryBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current!;
      switch (key) {
        case 'version':
          result.version.replace(serializers.deserialize(value,
              specifiedType: const FullType(Version)) as Version);
          break;
      }
    }

    return result.build();
  }
}

class _$VersionSerializer implements StructuredSerializer<Version> {
  @override
  final Iterable<Type> types = const [Version, _$Version];
  @override
  final String wireName = 'Version';

  @override
  Iterable<Object> serialize(Serializers serializers, Version object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'android',
      serializers.serialize(object.android,
          specifiedType: const FullType(String))!,
      'iphone',
      serializers.serialize(object.iphone,
          specifiedType: const FullType(String))!,
    ];

    return result;
  }

  @override
  Version deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new VersionBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current!;
      switch (key) {
        case 'android':
          result.android = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'iphone':
          result.iphone = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$AppVersionSummary extends AppVersionSummary {
  @override
  final int httpstatut;
  @override
  final String version;
  @override
  final String request;
  @override
  final BuiltList<ParamsAppVersionSummary> params;
  @override
  final String error;
  @override
  final String message;
  @override
  final DataAppVersionSummary data;

  factory _$AppVersionSummary(
          [void Function(AppVersionSummaryBuilder)? updates]) =>
      (new AppVersionSummaryBuilder()..update(updates!)).build();

  _$AppVersionSummary._(
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
        httpstatut, 'AppVersionSummary', 'httpstatut');
    BuiltValueNullFieldError.checkNotNull(
        version, 'AppVersionSummary', 'version');
    BuiltValueNullFieldError.checkNotNull(
        request, 'AppVersionSummary', 'request');
    BuiltValueNullFieldError.checkNotNull(
        params, 'AppVersionSummary', 'params');
    BuiltValueNullFieldError.checkNotNull(error, 'AppVersionSummary', 'error');
    BuiltValueNullFieldError.checkNotNull(
        message, 'AppVersionSummary', 'message');
    BuiltValueNullFieldError.checkNotNull(data, 'AppVersionSummary', 'data');
  }

  @override
  AppVersionSummary rebuild(void Function(AppVersionSummaryBuilder) updates) =>
      (toBuilder()..update(updates!)).build();

  @override
  AppVersionSummaryBuilder toBuilder() =>
      new AppVersionSummaryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppVersionSummary &&
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
    return (newBuiltValueToStringHelper('AppVersionSummary')
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

class AppVersionSummaryBuilder
    implements Builder<AppVersionSummary, AppVersionSummaryBuilder> {
  _$AppVersionSummary? _$v = _$AppVersionSummary();

  int _httpstatut = 0;
  int get httpstatut => _$this._httpstatut;
  set httpstatut(int httpstatut) => _$this._httpstatut = httpstatut;

  String _version = '';
  String get version => _$this._version;
  set version(String version) => _$this._version = version;

  String _request = '';
  String get request => _$this._request;
  set request(String request) => _$this._request = request;

  ListBuilder<ParamsAppVersionSummary> _params = ListBuilder();
  ListBuilder<ParamsAppVersionSummary> get params =>
      _$this._params ??= new ListBuilder<ParamsAppVersionSummary>();
  set params(ListBuilder<ParamsAppVersionSummary> params) =>
      _$this._params = params;

  String _error = '';
  String get error => _$this._error;
  set error(String error) => _$this._error = error;

  String _message = '';
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  DataAppVersionSummaryBuilder _data = DataAppVersionSummaryBuilder();
  DataAppVersionSummaryBuilder get data =>
      _$this._data ??= new DataAppVersionSummaryBuilder();
  set data(DataAppVersionSummaryBuilder data) => _$this._data = data;

  AppVersionSummaryBuilder();

  AppVersionSummaryBuilder get _$this {
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
  void replace(AppVersionSummary other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AppVersionSummary;
  }

  @override
  void update(void Function(AppVersionSummaryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AppVersionSummary build() {
    _$AppVersionSummary _$result;
    try {
      _$result = _$v ??
          new _$AppVersionSummary._(
              httpstatut: BuiltValueNullFieldError.checkNotNull(
                  httpstatut, 'AppVersionSummary', 'httpstatut'),
              version: BuiltValueNullFieldError.checkNotNull(
                  version, 'AppVersionSummary', 'version'),
              request: BuiltValueNullFieldError.checkNotNull(
                  request, 'AppVersionSummary', 'request'),
              params: params.build(),
              error: BuiltValueNullFieldError.checkNotNull(
                  error, 'AppVersionSummary', 'error'),
              message: BuiltValueNullFieldError.checkNotNull(
                  message, 'AppVersionSummary', 'message'),
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
            'AppVersionSummary', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$ParamsAppVersionSummary extends ParamsAppVersionSummary {
  @override
  final String android;
  @override
  final String iphone;

  factory _$ParamsAppVersionSummary(
          [void Function(ParamsAppVersionSummaryBuilder)? updates]) =>
      (new ParamsAppVersionSummaryBuilder()..update(updates!)).build();

  _$ParamsAppVersionSummary._({required this.android,required this.iphone}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        android, 'ParamsAppVersionSummary', 'android');
    BuiltValueNullFieldError.checkNotNull(
        iphone, 'ParamsAppVersionSummary', 'iphone');
  }

  @override
  ParamsAppVersionSummary rebuild(
          void Function(ParamsAppVersionSummaryBuilder) updates) =>
      (toBuilder()..update(updates!)).build();

  @override
  ParamsAppVersionSummaryBuilder toBuilder() =>
      new ParamsAppVersionSummaryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ParamsAppVersionSummary &&
        android == other.android &&
        iphone == other.iphone;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, android.hashCode), iphone.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ParamsAppVersionSummary')
          ..add('android', android)
          ..add('iphone', iphone))
        .toString();
  }
}

class ParamsAppVersionSummaryBuilder
    implements
        Builder<ParamsAppVersionSummary, ParamsAppVersionSummaryBuilder> {
  _$ParamsAppVersionSummary? _$v = _$ParamsAppVersionSummary();

  String _android ='';
  String get android => _$this._android;
  set android(String android) => _$this._android = android;

  String _iphone ='';
  String get iphone => _$this._iphone;
  set iphone(String iphone) => _$this._iphone = iphone;

  ParamsAppVersionSummaryBuilder();

  ParamsAppVersionSummaryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _android = $v.android;
      _iphone = $v.iphone;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ParamsAppVersionSummary other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ParamsAppVersionSummary;
  }

  @override
  void update(void Function(ParamsAppVersionSummaryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ParamsAppVersionSummary build() {
    final _$result = _$v ??
        new _$ParamsAppVersionSummary._(
            android: BuiltValueNullFieldError.checkNotNull(
                android, 'ParamsAppVersionSummary', 'android'),
            iphone: BuiltValueNullFieldError.checkNotNull(
                iphone, 'ParamsAppVersionSummary', 'iphone'));
    replace(_$result);
    return _$result;
  }
}

class _$DataAppVersionSummary extends DataAppVersionSummary {
  @override
  final Version version;

  factory _$DataAppVersionSummary(
          [void Function(DataAppVersionSummaryBuilder)? updates]) =>
      (new DataAppVersionSummaryBuilder()..update(updates!)).build();

  _$DataAppVersionSummary._({required this.version}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        version, 'DataAppVersionSummary', 'version');
  }

  @override
  DataAppVersionSummary rebuild(
          void Function(DataAppVersionSummaryBuilder) updates) =>
      (toBuilder()..update(updates!)).build();

  @override
  DataAppVersionSummaryBuilder toBuilder() =>
      new DataAppVersionSummaryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DataAppVersionSummary && version == other.version;
  }

  @override
  int get hashCode {
    return $jf($jc(0, version.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DataAppVersionSummary')
          ..add('version', version))
        .toString();
  }
}

class DataAppVersionSummaryBuilder
    implements Builder<DataAppVersionSummary, DataAppVersionSummaryBuilder> {
  _$DataAppVersionSummary? _$v = _$DataAppVersionSummary();

  VersionBuilder _version = VersionBuilder();
  VersionBuilder get version => _$this._version ??= new VersionBuilder();
  set version(VersionBuilder version) => _$this._version = version;

  DataAppVersionSummaryBuilder();

  DataAppVersionSummaryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _version = $v.version.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DataAppVersionSummary other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DataAppVersionSummary;
  }

  @override
  void update(void Function(DataAppVersionSummaryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DataAppVersionSummary build() {
    _$DataAppVersionSummary _$result;
    try {
      _$result = _$v ?? new _$DataAppVersionSummary._(version: version.build());
    } catch (_) {
      String _$failedField = '';
      try {
        _$failedField = 'version';
        version.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'DataAppVersionSummary', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Version extends Version {
  @override
  final String android;
  @override
  final String iphone;

  factory _$Version([void Function(VersionBuilder)? updates]) =>
      (new VersionBuilder()..update(updates!)).build();

  _$Version._({required this.android,required this.iphone}) : super._() {
    BuiltValueNullFieldError.checkNotNull(android, 'Version', 'android');
    BuiltValueNullFieldError.checkNotNull(iphone, 'Version', 'iphone');
  }

  @override
  Version rebuild(void Function(VersionBuilder) updates) =>
      (toBuilder()..update(updates!)).build();

  @override
  VersionBuilder toBuilder() => new VersionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Version &&
        android == other.android &&
        iphone == other.iphone;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, android.hashCode), iphone.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Version')
          ..add('android', android)
          ..add('iphone', iphone))
        .toString();
  }
}

class VersionBuilder implements Builder<Version, VersionBuilder> {
  _$Version? _$v = _$Version();

  String _android ='';
  String get android => _$this._android;
  set android(String android) => _$this._android = android;

  String _iphone ='';
  String get iphone => _$this._iphone;
  set iphone(String iphone) => _$this._iphone = iphone;

  VersionBuilder();

  VersionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _android = $v.android;
      _iphone = $v.iphone;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Version other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Version;
  }

  @override
  void update(void Function(VersionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Version build() {
    final _$result = _$v ??
        new _$Version._(
            android: BuiltValueNullFieldError.checkNotNull(
                android, 'Version', 'android'),
            iphone: BuiltValueNullFieldError.checkNotNull(
                iphone, 'Version', 'iphone'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
