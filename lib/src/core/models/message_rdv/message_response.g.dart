// GENERATED CODE - DO NOT MODIFY BY HAND

part of message_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MessageResponse> _$messageResponseSerializer =
    new _$MessageResponseSerializer();
Serializer<ParamsMessageResponse> _$paramsMessageResponseSerializer =
    new _$ParamsMessageResponseSerializer();
Serializer<DataMessageResponse> _$dataMessageResponseSerializer =
    new _$DataMessageResponseSerializer();
Serializer<MessageDataResponse> _$messageDataResponseSerializer =
    new _$MessageDataResponseSerializer();

class _$MessageResponseSerializer
    implements StructuredSerializer<MessageResponse> {
  @override
  final Iterable<Type> types = const [MessageResponse, _$MessageResponse];
  @override
  final String wireName = 'MessageResponse';

  @override
  Iterable<Object> serialize(Serializers serializers, MessageResponse object,
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
          specifiedType: const FullType(ParamsMessageResponse)),
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
          specifiedType: const FullType(DataMessageResponse)),
    ];

    return result;
  }

  @override
  MessageResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MessageResponseBuilder();

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
                  specifiedType: const FullType(ParamsMessageResponse))
              as ParamsMessageResponse);
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
                  specifiedType: const FullType(DataMessageResponse))
              as DataMessageResponse);
          break;
      }
    }

    return result.build();
  }
}

class _$ParamsMessageResponseSerializer
    implements StructuredSerializer<ParamsMessageResponse> {
  @override
  final Iterable<Type> types = const [
    ParamsMessageResponse,
    _$ParamsMessageResponse
  ];
  @override
  final String wireName = 'ParamsMessageResponse';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ParamsMessageResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'tokenuser',
      serializers.serialize(object.tokenuser,
          specifiedType: const FullType(String)),
      'page',
      serializers.serialize(object.page, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  ParamsMessageResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ParamsMessageResponseBuilder();

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
        case 'page':
          result.page = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$DataMessageResponseSerializer
    implements StructuredSerializer<DataMessageResponse> {
  @override
  final Iterable<Type> types = const [
    DataMessageResponse,
    _$DataMessageResponse
  ];
  @override
  final String wireName = 'DataMessageResponse';

  @override
  Iterable<Object> serialize(
      Serializers serializers, DataMessageResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'list',
      serializers.serialize(object.list,
          specifiedType: const FullType(
              BuiltList, const [const FullType(MessageDataResponse)])),
      'pagination',
      serializers.serialize(object.pagination,
          specifiedType: const FullType(PaginationListOfDoctor)),
    ];

    return result;
  }

  @override
  DataMessageResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DataMessageResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'list':
          result.list.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(MessageDataResponse)]))
              as BuiltList<Object>);
          break;
        case 'pagination':
          result.pagination.replace(serializers.deserialize(value,
                  specifiedType: const FullType(PaginationListOfDoctor))
              as PaginationListOfDoctor);
          break;
      }
    }

    return result.build();
  }
}

class _$MessageDataResponseSerializer
    implements StructuredSerializer<MessageDataResponse> {
  @override
  final Iterable<Type> types = const [
    MessageDataResponse,
    _$MessageDataResponse
  ];
  @override
  final String wireName = 'MessageDataResponse';

  @override
  Iterable<Object> serialize(
      Serializers serializers, MessageDataResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'datetime',
      serializers.serialize(object.datetime,
          specifiedType: const FullType(String)),
      'reception',
      serializers.serialize(object.reception,
          specifiedType: const FullType(int)),
      'from',
      serializers.serialize(object.from, specifiedType: const FullType(String)),
      'to',
      serializers.serialize(object.to, specifiedType: const FullType(String)),
      'subject',
      serializers.serialize(object.subject,
          specifiedType: const FullType(String)),
      'message',
      serializers.serialize(object.message,
          specifiedType: const FullType(String)),
      'file',
      serializers.serialize(object.file, specifiedType: const FullType(String)),
      'file2',
      serializers.serialize(object.file2,
          specifiedType: const FullType(String)),
      'file3',
      serializers.serialize(object.file3,
          specifiedType: const FullType(String)),
      'token',
      serializers.serialize(object.token,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  MessageDataResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MessageDataResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'datetime':
          result.datetime = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'reception':
          result.reception = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'from':
          result.from = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'to':
          result.to = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'subject':
          result.subject = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'file':
          result.file = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'file2':
          result.file2 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'file3':
          result.file3 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'token':
          result.token = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$MessageResponse extends MessageResponse {
  @override
  final String version;
  @override
  final String request;
  @override
  final ParamsMessageResponse params;
  @override
  final String message;
  @override
  final int httpstatut;
  @override
  final String error;
  @override
  final DataMessageResponse data;

  factory _$MessageResponse([void Function(MessageResponseBuilder) updates]) =>
      (new MessageResponseBuilder()..update(updates)).build();

  _$MessageResponse._(
      {this.version,
      this.request,
      this.params,
      this.message,
      this.httpstatut,
      this.error,
      this.data})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        version, 'MessageResponse', 'version');
    BuiltValueNullFieldError.checkNotNull(
        request, 'MessageResponse', 'request');
    BuiltValueNullFieldError.checkNotNull(params, 'MessageResponse', 'params');
    BuiltValueNullFieldError.checkNotNull(
        message, 'MessageResponse', 'message');
    BuiltValueNullFieldError.checkNotNull(
        httpstatut, 'MessageResponse', 'httpstatut');
    BuiltValueNullFieldError.checkNotNull(error, 'MessageResponse', 'error');
    BuiltValueNullFieldError.checkNotNull(data, 'MessageResponse', 'data');
  }

  @override
  MessageResponse rebuild(void Function(MessageResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MessageResponseBuilder toBuilder() =>
      new MessageResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MessageResponse &&
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
    return (newBuiltValueToStringHelper('MessageResponse')
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

class MessageResponseBuilder
    implements Builder<MessageResponse, MessageResponseBuilder> {
  _$MessageResponse _$v;

  String _version;
  String get version => _$this._version;
  set version(String version) => _$this._version = version;

  String _request;
  String get request => _$this._request;
  set request(String request) => _$this._request = request;

  ParamsMessageResponseBuilder _params;
  ParamsMessageResponseBuilder get params =>
      _$this._params ??= new ParamsMessageResponseBuilder();
  set params(ParamsMessageResponseBuilder params) => _$this._params = params;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  int _httpstatut;
  int get httpstatut => _$this._httpstatut;
  set httpstatut(int httpstatut) => _$this._httpstatut = httpstatut;

  String _error;
  String get error => _$this._error;
  set error(String error) => _$this._error = error;

  DataMessageResponseBuilder _data;
  DataMessageResponseBuilder get data =>
      _$this._data ??= new DataMessageResponseBuilder();
  set data(DataMessageResponseBuilder data) => _$this._data = data;

  MessageResponseBuilder();

  MessageResponseBuilder get _$this {
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
  void replace(MessageResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MessageResponse;
  }

  @override
  void update(void Function(MessageResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$MessageResponse build() {
    _$MessageResponse _$result;
    try {
      _$result = _$v ??
          new _$MessageResponse._(
              version: BuiltValueNullFieldError.checkNotNull(
                  version, 'MessageResponse', 'version'),
              request: BuiltValueNullFieldError.checkNotNull(
                  request, 'MessageResponse', 'request'),
              params: params.build(),
              message: BuiltValueNullFieldError.checkNotNull(
                  message, 'MessageResponse', 'message'),
              httpstatut: BuiltValueNullFieldError.checkNotNull(
                  httpstatut, 'MessageResponse', 'httpstatut'),
              error: BuiltValueNullFieldError.checkNotNull(
                  error, 'MessageResponse', 'error'),
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
            'MessageResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$ParamsMessageResponse extends ParamsMessageResponse {
  @override
  final String tokenuser;
  @override
  final String page;

  factory _$ParamsMessageResponse(
          [void Function(ParamsMessageResponseBuilder) updates]) =>
      (new ParamsMessageResponseBuilder()..update(updates)).build();

  _$ParamsMessageResponse._({this.tokenuser, this.page}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        tokenuser, 'ParamsMessageResponse', 'tokenuser');
    BuiltValueNullFieldError.checkNotNull(
        page, 'ParamsMessageResponse', 'page');
  }

  @override
  ParamsMessageResponse rebuild(
          void Function(ParamsMessageResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ParamsMessageResponseBuilder toBuilder() =>
      new ParamsMessageResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ParamsMessageResponse &&
        tokenuser == other.tokenuser &&
        page == other.page;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, tokenuser.hashCode), page.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ParamsMessageResponse')
          ..add('tokenuser', tokenuser)
          ..add('page', page))
        .toString();
  }
}

class ParamsMessageResponseBuilder
    implements Builder<ParamsMessageResponse, ParamsMessageResponseBuilder> {
  _$ParamsMessageResponse _$v;

  String _tokenuser;
  String get tokenuser => _$this._tokenuser;
  set tokenuser(String tokenuser) => _$this._tokenuser = tokenuser;

  String _page;
  String get page => _$this._page;
  set page(String page) => _$this._page = page;

  ParamsMessageResponseBuilder();

  ParamsMessageResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tokenuser = $v.tokenuser;
      _page = $v.page;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ParamsMessageResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ParamsMessageResponse;
  }

  @override
  void update(void Function(ParamsMessageResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ParamsMessageResponse build() {
    final _$result = _$v ??
        new _$ParamsMessageResponse._(
            tokenuser: BuiltValueNullFieldError.checkNotNull(
                tokenuser, 'ParamsMessageResponse', 'tokenuser'),
            page: BuiltValueNullFieldError.checkNotNull(
                page, 'ParamsMessageResponse', 'page'));
    replace(_$result);
    return _$result;
  }
}

class _$DataMessageResponse extends DataMessageResponse {
  @override
  final BuiltList<MessageDataResponse> list;
  @override
  final PaginationListOfDoctor pagination;

  factory _$DataMessageResponse(
          [void Function(DataMessageResponseBuilder) updates]) =>
      (new DataMessageResponseBuilder()..update(updates)).build();

  _$DataMessageResponse._({this.list, this.pagination}) : super._() {
    BuiltValueNullFieldError.checkNotNull(list, 'DataMessageResponse', 'list');
    BuiltValueNullFieldError.checkNotNull(
        pagination, 'DataMessageResponse', 'pagination');
  }

  @override
  DataMessageResponse rebuild(
          void Function(DataMessageResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DataMessageResponseBuilder toBuilder() =>
      new DataMessageResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DataMessageResponse &&
        list == other.list &&
        pagination == other.pagination;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, list.hashCode), pagination.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DataMessageResponse')
          ..add('list', list)
          ..add('pagination', pagination))
        .toString();
  }
}

class DataMessageResponseBuilder
    implements Builder<DataMessageResponse, DataMessageResponseBuilder> {
  _$DataMessageResponse _$v;

  ListBuilder<MessageDataResponse> _list;
  ListBuilder<MessageDataResponse> get list =>
      _$this._list ??= new ListBuilder<MessageDataResponse>();
  set list(ListBuilder<MessageDataResponse> list) => _$this._list = list;

  PaginationListOfDoctorBuilder _pagination;
  PaginationListOfDoctorBuilder get pagination =>
      _$this._pagination ??= new PaginationListOfDoctorBuilder();
  set pagination(PaginationListOfDoctorBuilder pagination) =>
      _$this._pagination = pagination;

  DataMessageResponseBuilder();

  DataMessageResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _list = $v.list.toBuilder();
      _pagination = $v.pagination.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DataMessageResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DataMessageResponse;
  }

  @override
  void update(void Function(DataMessageResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DataMessageResponse build() {
    _$DataMessageResponse _$result;
    try {
      _$result = _$v ??
          new _$DataMessageResponse._(
              list: list.build(), pagination: pagination.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'list';
        list.build();
        _$failedField = 'pagination';
        pagination.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'DataMessageResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$MessageDataResponse extends MessageDataResponse {
  @override
  final String datetime;
  @override
  final int reception;
  @override
  final String from;
  @override
  final String to;
  @override
  final String subject;
  @override
  final String message;
  @override
  final String file;
  @override
  final String file2;
  @override
  final String file3;
  @override
  final String token;

  factory _$MessageDataResponse(
          [void Function(MessageDataResponseBuilder) updates]) =>
      (new MessageDataResponseBuilder()..update(updates)).build();

  _$MessageDataResponse._(
      {this.datetime,
      this.reception,
      this.from,
      this.to,
      this.subject,
      this.message,
      this.file,
      this.file2,
      this.file3,
      this.token})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        datetime, 'MessageDataResponse', 'datetime');
    BuiltValueNullFieldError.checkNotNull(
        reception, 'MessageDataResponse', 'reception');
    BuiltValueNullFieldError.checkNotNull(from, 'MessageDataResponse', 'from');
    BuiltValueNullFieldError.checkNotNull(to, 'MessageDataResponse', 'to');
    BuiltValueNullFieldError.checkNotNull(
        subject, 'MessageDataResponse', 'subject');
    BuiltValueNullFieldError.checkNotNull(
        message, 'MessageDataResponse', 'message');
    BuiltValueNullFieldError.checkNotNull(file, 'MessageDataResponse', 'file');
    BuiltValueNullFieldError.checkNotNull(
        file2, 'MessageDataResponse', 'file2');
    BuiltValueNullFieldError.checkNotNull(
        file3, 'MessageDataResponse', 'file3');
    BuiltValueNullFieldError.checkNotNull(
        token, 'MessageDataResponse', 'token');
  }

  @override
  MessageDataResponse rebuild(
          void Function(MessageDataResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MessageDataResponseBuilder toBuilder() =>
      new MessageDataResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MessageDataResponse &&
        datetime == other.datetime &&
        reception == other.reception &&
        from == other.from &&
        to == other.to &&
        subject == other.subject &&
        message == other.message &&
        file == other.file &&
        file2 == other.file2 &&
        file3 == other.file3 &&
        token == other.token;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc($jc(0, datetime.hashCode),
                                        reception.hashCode),
                                    from.hashCode),
                                to.hashCode),
                            subject.hashCode),
                        message.hashCode),
                    file.hashCode),
                file2.hashCode),
            file3.hashCode),
        token.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MessageDataResponse')
          ..add('datetime', datetime)
          ..add('reception', reception)
          ..add('from', from)
          ..add('to', to)
          ..add('subject', subject)
          ..add('message', message)
          ..add('file', file)
          ..add('file2', file2)
          ..add('file3', file3)
          ..add('token', token))
        .toString();
  }
}

class MessageDataResponseBuilder
    implements Builder<MessageDataResponse, MessageDataResponseBuilder> {
  _$MessageDataResponse _$v;

  String _datetime;
  String get datetime => _$this._datetime;
  set datetime(String datetime) => _$this._datetime = datetime;

  int _reception;
  int get reception => _$this._reception;
  set reception(int reception) => _$this._reception = reception;

  String _from;
  String get from => _$this._from;
  set from(String from) => _$this._from = from;

  String _to;
  String get to => _$this._to;
  set to(String to) => _$this._to = to;

  String _subject;
  String get subject => _$this._subject;
  set subject(String subject) => _$this._subject = subject;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  String _file;
  String get file => _$this._file;
  set file(String file) => _$this._file = file;

  String _file2;
  String get file2 => _$this._file2;
  set file2(String file2) => _$this._file2 = file2;

  String _file3;
  String get file3 => _$this._file3;
  set file3(String file3) => _$this._file3 = file3;

  String _token;
  String get token => _$this._token;
  set token(String token) => _$this._token = token;

  MessageDataResponseBuilder();

  MessageDataResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _datetime = $v.datetime;
      _reception = $v.reception;
      _from = $v.from;
      _to = $v.to;
      _subject = $v.subject;
      _message = $v.message;
      _file = $v.file;
      _file2 = $v.file2;
      _file3 = $v.file3;
      _token = $v.token;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MessageDataResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MessageDataResponse;
  }

  @override
  void update(void Function(MessageDataResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$MessageDataResponse build() {
    final _$result = _$v ??
        new _$MessageDataResponse._(
            datetime: BuiltValueNullFieldError.checkNotNull(
                datetime, 'MessageDataResponse', 'datetime'),
            reception: BuiltValueNullFieldError.checkNotNull(
                reception, 'MessageDataResponse', 'reception'),
            from: BuiltValueNullFieldError.checkNotNull(
                from, 'MessageDataResponse', 'from'),
            to: BuiltValueNullFieldError.checkNotNull(
                to, 'MessageDataResponse', 'to'),
            subject: BuiltValueNullFieldError.checkNotNull(
                subject, 'MessageDataResponse', 'subject'),
            message: BuiltValueNullFieldError.checkNotNull(
                message, 'MessageDataResponse', 'message'),
            file: BuiltValueNullFieldError.checkNotNull(
                file, 'MessageDataResponse', 'file'),
            file2: BuiltValueNullFieldError.checkNotNull(
                file2, 'MessageDataResponse', 'file2'),
            file3: BuiltValueNullFieldError.checkNotNull(
                file3, 'MessageDataResponse', 'file3'),
            token: BuiltValueNullFieldError.checkNotNull(token, 'MessageDataResponse', 'token'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
