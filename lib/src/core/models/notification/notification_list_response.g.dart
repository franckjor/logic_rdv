// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_list_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<NotificationListResponse> _$notificationListResponseSerializer =
    new _$NotificationListResponseSerializer();
Serializer<NotificationResponseParams> _$notificationResponseParamsSerializer =
    new _$NotificationResponseParamsSerializer();
Serializer<NotificationResponseData> _$notificationResponseDataSerializer =
    new _$NotificationResponseDataSerializer();
Serializer<NotificationResponseList> _$notificationResponseListSerializer =
    new _$NotificationResponseListSerializer();
Serializer<NotificationResponsePagination>
    _$notificationResponsePaginationSerializer =
    new _$NotificationResponsePaginationSerializer();

class _$NotificationListResponseSerializer
    implements StructuredSerializer<NotificationListResponse> {
  @override
  final Iterable<Type> types = const [
    NotificationListResponse,
    _$NotificationListResponse
  ];
  @override
  final String wireName = 'NotificationListResponse';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, NotificationListResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'httpstatut',
      serializers.serialize(object.httpstatut,
          specifiedType: const FullType(int)),
      'version',
      serializers.serialize(object.version,
          specifiedType: const FullType(String)),
      'request',
      serializers.serialize(object.request,
          specifiedType: const FullType(String)),
      'params',
      serializers.serialize(object.params,
          specifiedType: const FullType(NotificationResponseParams)),
      'error',
      serializers.serialize(object.error,
          specifiedType: const FullType(String)),
      'message',
      serializers.serialize(object.message,
          specifiedType: const FullType(String)),
      'data',
      serializers.serialize(object.data,
          specifiedType: const FullType(NotificationResponseData)),
    ];

    return result;
  }

  @override
  NotificationListResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NotificationListResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'httpstatut':
          result.httpstatut = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
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
                  specifiedType: const FullType(NotificationResponseParams))!
              as NotificationResponseParams);
          break;
        case 'error':
          result.error = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'data':
          result.data.replace(serializers.deserialize(value,
                  specifiedType: const FullType(NotificationResponseData))!
              as NotificationResponseData);
          break;
      }
    }

    return result.build();
  }
}

class _$NotificationResponseParamsSerializer
    implements StructuredSerializer<NotificationResponseParams> {
  @override
  final Iterable<Type> types = const [
    NotificationResponseParams,
    _$NotificationResponseParams
  ];
  @override
  final String wireName = 'NotificationResponseParams';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, NotificationResponseParams object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'installationkey',
      serializers.serialize(object.installationkey,
          specifiedType: const FullType(String)),
      'page',
      serializers.serialize(object.page, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.tokeruser;
    if (value != null) {
      result
        ..add('tokeruser')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  NotificationResponseParams deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NotificationResponseParamsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'installationkey':
          result.installationkey = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'page':
          result.page = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'tokeruser':
          result.tokeruser = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$NotificationResponseDataSerializer
    implements StructuredSerializer<NotificationResponseData> {
  @override
  final Iterable<Type> types = const [
    NotificationResponseData,
    _$NotificationResponseData
  ];
  @override
  final String wireName = 'NotificationResponseData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, NotificationResponseData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'list',
      serializers.serialize(object.list,
          specifiedType: const FullType(
              BuiltList, const [const FullType(NotificationResponseList)])),
      'pagination',
      serializers.serialize(object.pagination,
          specifiedType: const FullType(NotificationResponsePagination)),
    ];

    return result;
  }

  @override
  NotificationResponseData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NotificationResponseDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'list':
          result.list.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(NotificationResponseList)
              ]))! as BuiltList<Object?>);
          break;
        case 'pagination':
          result.pagination.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(NotificationResponsePagination))!
              as NotificationResponsePagination);
          break;
      }
    }

    return result.build();
  }
}

class _$NotificationResponseListSerializer
    implements StructuredSerializer<NotificationResponseList> {
  @override
  final Iterable<Type> types = const [
    NotificationResponseList,
    _$NotificationResponseList
  ];
  @override
  final String wireName = 'NotificationResponseList';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, NotificationResponseList object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'date',
      serializers.serialize(object.date, specifiedType: const FullType(String)),
      'nature',
      serializers.serialize(object.nature,
          specifiedType: const FullType(String)),
      'nom',
      serializers.serialize(object.nom, specifiedType: const FullType(String)),
      'message',
      serializers.serialize(object.message,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  NotificationResponseList deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NotificationResponseListBuilder();

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
        case 'nature':
          result.nature = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'nom':
          result.nom = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$NotificationResponsePaginationSerializer
    implements StructuredSerializer<NotificationResponsePagination> {
  @override
  final Iterable<Type> types = const [
    NotificationResponsePagination,
    _$NotificationResponsePagination
  ];
  @override
  final String wireName = 'NotificationResponsePagination';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, NotificationResponsePagination object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'result',
      serializers.serialize(object.result,
          specifiedType: const FullType(String)),
      'current',
      serializers.serialize(object.current,
          specifiedType: const FullType(String)),
      'maxpage',
      serializers.serialize(object.maxpage,
          specifiedType: const FullType(String)),
      'perpage',
      serializers.serialize(object.perpage,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  NotificationResponsePagination deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NotificationResponsePaginationBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'result':
          result.result = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'current':
          result.current = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'maxpage':
          result.maxpage = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'perpage':
          result.perpage = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$NotificationListResponse extends NotificationListResponse {
  @override
  final int httpstatut;
  @override
  final String version;
  @override
  final String request;
  @override
  final NotificationResponseParams params;
  @override
  final String error;
  @override
  final String message;
  @override
  final NotificationResponseData data;

  factory _$NotificationListResponse(
          [void Function(NotificationListResponseBuilder)? updates]) =>
      (new NotificationListResponseBuilder()..update(updates))._build();

  _$NotificationListResponse._(
      {required this.httpstatut,
      required this.version,
      required this.request,
      required this.params,
      required this.error,
      required this.message,
      required this.data})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        httpstatut, r'NotificationListResponse', 'httpstatut');
    BuiltValueNullFieldError.checkNotNull(
        version, r'NotificationListResponse', 'version');
    BuiltValueNullFieldError.checkNotNull(
        request, r'NotificationListResponse', 'request');
    BuiltValueNullFieldError.checkNotNull(
        params, r'NotificationListResponse', 'params');
    BuiltValueNullFieldError.checkNotNull(
        error, r'NotificationListResponse', 'error');
    BuiltValueNullFieldError.checkNotNull(
        message, r'NotificationListResponse', 'message');
    BuiltValueNullFieldError.checkNotNull(
        data, r'NotificationListResponse', 'data');
  }

  @override
  NotificationListResponse rebuild(
          void Function(NotificationListResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NotificationListResponseBuilder toBuilder() =>
      new NotificationListResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NotificationListResponse &&
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
    var _$hash = 0;
    _$hash = $jc(_$hash, httpstatut.hashCode);
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jc(_$hash, request.hashCode);
    _$hash = $jc(_$hash, params.hashCode);
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NotificationListResponse')
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

class NotificationListResponseBuilder
    implements
        Builder<NotificationListResponse, NotificationListResponseBuilder> {
  _$NotificationListResponse? _$v;

  int? _httpstatut;
  int? get httpstatut => _$this._httpstatut;
  set httpstatut(int? httpstatut) => _$this._httpstatut = httpstatut;

  String? _version;
  String? get version => _$this._version;
  set version(String? version) => _$this._version = version;

  String? _request;
  String? get request => _$this._request;
  set request(String? request) => _$this._request = request;

  NotificationResponseParamsBuilder? _params;
  NotificationResponseParamsBuilder get params =>
      _$this._params ??= new NotificationResponseParamsBuilder();
  set params(NotificationResponseParamsBuilder? params) =>
      _$this._params = params;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  NotificationResponseDataBuilder? _data;
  NotificationResponseDataBuilder get data =>
      _$this._data ??= new NotificationResponseDataBuilder();
  set data(NotificationResponseDataBuilder? data) => _$this._data = data;

  NotificationListResponseBuilder();

  NotificationListResponseBuilder get _$this {
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
  void replace(NotificationListResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NotificationListResponse;
  }

  @override
  void update(void Function(NotificationListResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NotificationListResponse build() => _build();

  _$NotificationListResponse _build() {
    _$NotificationListResponse _$result;
    try {
      _$result = _$v ??
          new _$NotificationListResponse._(
              httpstatut: BuiltValueNullFieldError.checkNotNull(
                  httpstatut, r'NotificationListResponse', 'httpstatut'),
              version: BuiltValueNullFieldError.checkNotNull(
                  version, r'NotificationListResponse', 'version'),
              request: BuiltValueNullFieldError.checkNotNull(
                  request, r'NotificationListResponse', 'request'),
              params: params.build(),
              error: BuiltValueNullFieldError.checkNotNull(
                  error, r'NotificationListResponse', 'error'),
              message: BuiltValueNullFieldError.checkNotNull(
                  message, r'NotificationListResponse', 'message'),
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
            r'NotificationListResponse', _$failedField, e.toString())!;
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$NotificationResponseParams extends NotificationResponseParams {
  @override
  final String installationkey;
  @override
  final String page;
  @override
  final String? tokeruser;

  factory _$NotificationResponseParams(
          [void Function(NotificationResponseParamsBuilder)? updates]) =>
      (new NotificationResponseParamsBuilder()..update(updates))._build();

  _$NotificationResponseParams._(
      {required this.installationkey, required this.page, this.tokeruser})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        installationkey, r'NotificationResponseParams', 'installationkey');
    BuiltValueNullFieldError.checkNotNull(
        page, r'NotificationResponseParams', 'page');
  }

  @override
  NotificationResponseParams rebuild(
          void Function(NotificationResponseParamsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NotificationResponseParamsBuilder toBuilder() =>
      new NotificationResponseParamsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NotificationResponseParams &&
        installationkey == other.installationkey &&
        page == other.page &&
        tokeruser == other.tokeruser;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, installationkey.hashCode);
    _$hash = $jc(_$hash, page.hashCode);
    _$hash = $jc(_$hash, tokeruser.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NotificationResponseParams')
          ..add('installationkey', installationkey)
          ..add('page', page)
          ..add('tokeruser', tokeruser))
        .toString();
  }
}

class NotificationResponseParamsBuilder
    implements
        Builder<NotificationResponseParams, NotificationResponseParamsBuilder> {
  _$NotificationResponseParams? _$v;

  String? _installationkey;
  String? get installationkey => _$this._installationkey;
  set installationkey(String? installationkey) =>
      _$this._installationkey = installationkey;

  String? _page;
  String? get page => _$this._page;
  set page(String? page) => _$this._page = page;

  String? _tokeruser;
  String? get tokeruser => _$this._tokeruser;
  set tokeruser(String? tokeruser) => _$this._tokeruser = tokeruser;

  NotificationResponseParamsBuilder();

  NotificationResponseParamsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _installationkey = $v.installationkey;
      _page = $v.page;
      _tokeruser = $v.tokeruser;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NotificationResponseParams other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NotificationResponseParams;
  }

  @override
  void update(void Function(NotificationResponseParamsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NotificationResponseParams build() => _build();

  _$NotificationResponseParams _build() {
    final _$result = _$v ??
        new _$NotificationResponseParams._(
            installationkey: BuiltValueNullFieldError.checkNotNull(
                installationkey,
                r'NotificationResponseParams',
                'installationkey'),
            page: BuiltValueNullFieldError.checkNotNull(
                page, r'NotificationResponseParams', 'page'),
            tokeruser: tokeruser);
    replace(_$result);
    return _$result;
  }
}

class _$NotificationResponseData extends NotificationResponseData {
  @override
  final BuiltList<NotificationResponseList> list;
  @override
  final NotificationResponsePagination pagination;

  factory _$NotificationResponseData(
          [void Function(NotificationResponseDataBuilder)? updates]) =>
      (new NotificationResponseDataBuilder()..update(updates))._build();

  _$NotificationResponseData._({required this.list, required this.pagination})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        list, r'NotificationResponseData', 'list');
    BuiltValueNullFieldError.checkNotNull(
        pagination, r'NotificationResponseData', 'pagination');
  }

  @override
  NotificationResponseData rebuild(
          void Function(NotificationResponseDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NotificationResponseDataBuilder toBuilder() =>
      new NotificationResponseDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NotificationResponseData &&
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
    return (newBuiltValueToStringHelper(r'NotificationResponseData')
          ..add('list', list)
          ..add('pagination', pagination))
        .toString();
  }
}

class NotificationResponseDataBuilder
    implements
        Builder<NotificationResponseData, NotificationResponseDataBuilder> {
  _$NotificationResponseData? _$v;

  ListBuilder<NotificationResponseList>? _list;
  ListBuilder<NotificationResponseList> get list =>
      _$this._list ??= new ListBuilder<NotificationResponseList>();
  set list(ListBuilder<NotificationResponseList>? list) => _$this._list = list;

  NotificationResponsePaginationBuilder? _pagination;
  NotificationResponsePaginationBuilder get pagination =>
      _$this._pagination ??= new NotificationResponsePaginationBuilder();
  set pagination(NotificationResponsePaginationBuilder? pagination) =>
      _$this._pagination = pagination;

  NotificationResponseDataBuilder();

  NotificationResponseDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _list = $v.list.toBuilder();
      _pagination = $v.pagination.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NotificationResponseData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NotificationResponseData;
  }

  @override
  void update(void Function(NotificationResponseDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NotificationResponseData build() => _build();

  _$NotificationResponseData _build() {
    _$NotificationResponseData _$result;
    try {
      _$result = _$v ??
          new _$NotificationResponseData._(
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
            r'NotificationResponseData', _$failedField, e.toString())!;
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$NotificationResponseList extends NotificationResponseList {
  @override
  final String date;
  @override
  final String nature;
  @override
  final String nom;
  @override
  final String message;

  factory _$NotificationResponseList(
          [void Function(NotificationResponseListBuilder)? updates]) =>
      (new NotificationResponseListBuilder()..update(updates))._build();

  _$NotificationResponseList._(
      {required this.date,
      required this.nature,
      required this.nom,
      required this.message})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        date, r'NotificationResponseList', 'date');
    BuiltValueNullFieldError.checkNotNull(
        nature, r'NotificationResponseList', 'nature');
    BuiltValueNullFieldError.checkNotNull(
        nom, r'NotificationResponseList', 'nom');
    BuiltValueNullFieldError.checkNotNull(
        message, r'NotificationResponseList', 'message');
  }

  @override
  NotificationResponseList rebuild(
          void Function(NotificationResponseListBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NotificationResponseListBuilder toBuilder() =>
      new NotificationResponseListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NotificationResponseList &&
        date == other.date &&
        nature == other.nature &&
        nom == other.nom &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, nature.hashCode);
    _$hash = $jc(_$hash, nom.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NotificationResponseList')
          ..add('date', date)
          ..add('nature', nature)
          ..add('nom', nom)
          ..add('message', message))
        .toString();
  }
}

class NotificationResponseListBuilder
    implements
        Builder<NotificationResponseList, NotificationResponseListBuilder> {
  _$NotificationResponseList? _$v;

  String? _date;
  String? get date => _$this._date;
  set date(String? date) => _$this._date = date;

  String? _nature;
  String? get nature => _$this._nature;
  set nature(String? nature) => _$this._nature = nature;

  String? _nom;
  String? get nom => _$this._nom;
  set nom(String? nom) => _$this._nom = nom;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  NotificationResponseListBuilder();

  NotificationResponseListBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _date = $v.date;
      _nature = $v.nature;
      _nom = $v.nom;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NotificationResponseList other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NotificationResponseList;
  }

  @override
  void update(void Function(NotificationResponseListBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NotificationResponseList build() => _build();

  _$NotificationResponseList _build() {
    final _$result = _$v ??
        new _$NotificationResponseList._(
            date: BuiltValueNullFieldError.checkNotNull(
                date, r'NotificationResponseList', 'date'),
            nature: BuiltValueNullFieldError.checkNotNull(
                nature, r'NotificationResponseList', 'nature'),
            nom: BuiltValueNullFieldError.checkNotNull(
                nom, r'NotificationResponseList', 'nom'),
            message: BuiltValueNullFieldError.checkNotNull(
                message, r'NotificationResponseList', 'message'));
    replace(_$result);
    return _$result;
  }
}

class _$NotificationResponsePagination extends NotificationResponsePagination {
  @override
  final String result;
  @override
  final String current;
  @override
  final String maxpage;
  @override
  final String perpage;

  factory _$NotificationResponsePagination(
          [void Function(NotificationResponsePaginationBuilder)? updates]) =>
      (new NotificationResponsePaginationBuilder()..update(updates))._build();

  _$NotificationResponsePagination._(
      {required this.result,
      required this.current,
      required this.maxpage,
      required this.perpage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        result, r'NotificationResponsePagination', 'result');
    BuiltValueNullFieldError.checkNotNull(
        current, r'NotificationResponsePagination', 'current');
    BuiltValueNullFieldError.checkNotNull(
        maxpage, r'NotificationResponsePagination', 'maxpage');
    BuiltValueNullFieldError.checkNotNull(
        perpage, r'NotificationResponsePagination', 'perpage');
  }

  @override
  NotificationResponsePagination rebuild(
          void Function(NotificationResponsePaginationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NotificationResponsePaginationBuilder toBuilder() =>
      new NotificationResponsePaginationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NotificationResponsePagination &&
        result == other.result &&
        current == other.current &&
        maxpage == other.maxpage &&
        perpage == other.perpage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, result.hashCode);
    _$hash = $jc(_$hash, current.hashCode);
    _$hash = $jc(_$hash, maxpage.hashCode);
    _$hash = $jc(_$hash, perpage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NotificationResponsePagination')
          ..add('result', result)
          ..add('current', current)
          ..add('maxpage', maxpage)
          ..add('perpage', perpage))
        .toString();
  }
}

class NotificationResponsePaginationBuilder
    implements
        Builder<NotificationResponsePagination,
            NotificationResponsePaginationBuilder> {
  _$NotificationResponsePagination? _$v;

  String? _result;
  String? get result => _$this._result;
  set result(String? result) => _$this._result = result;

  String? _current;
  String? get current => _$this._current;
  set current(String? current) => _$this._current = current;

  String? _maxpage;
  String? get maxpage => _$this._maxpage;
  set maxpage(String? maxpage) => _$this._maxpage = maxpage;

  String? _perpage;
  String? get perpage => _$this._perpage;
  set perpage(String? perpage) => _$this._perpage = perpage;

  NotificationResponsePaginationBuilder();

  NotificationResponsePaginationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _result = $v.result;
      _current = $v.current;
      _maxpage = $v.maxpage;
      _perpage = $v.perpage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NotificationResponsePagination other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NotificationResponsePagination;
  }

  @override
  void update(void Function(NotificationResponsePaginationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NotificationResponsePagination build() => _build();

  _$NotificationResponsePagination _build() {
    final _$result = _$v ??
        new _$NotificationResponsePagination._(
            result: BuiltValueNullFieldError.checkNotNull(
                result, r'NotificationResponsePagination', 'result'),
            current: BuiltValueNullFieldError.checkNotNull(
                current, r'NotificationResponsePagination', 'current'),
            maxpage: BuiltValueNullFieldError.checkNotNull(
                maxpage, r'NotificationResponsePagination', 'maxpage'),
            perpage: BuiltValueNullFieldError.checkNotNull(
                perpage, r'NotificationResponsePagination', 'perpage'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
