// GENERATED CODE - DO NOT MODIFY BY HAND

part of message_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MessageRequest> _$messageRequestSerializer =
    new _$MessageRequestSerializer();

class _$MessageRequestSerializer
    implements StructuredSerializer<MessageRequest> {
  @override
  final Iterable<Type> types = const [MessageRequest, _$MessageRequest];
  @override
  final String wireName = 'MessageRequest';

  @override
  Iterable<Object> serialize(Serializers serializers, MessageRequest object,
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
  MessageRequest deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MessageRequestBuilder();

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

class _$MessageRequest extends MessageRequest {
  @override
  final String tokenuser;
  @override
  final String page;

  factory _$MessageRequest([void Function(MessageRequestBuilder) updates]) =>
      (new MessageRequestBuilder()..update(updates)).build();

  _$MessageRequest._({this.tokenuser, this.page}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        tokenuser, 'MessageRequest', 'tokenuser');
    BuiltValueNullFieldError.checkNotNull(page, 'MessageRequest', 'page');
  }

  @override
  MessageRequest rebuild(void Function(MessageRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MessageRequestBuilder toBuilder() =>
      new MessageRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MessageRequest &&
        tokenuser == other.tokenuser &&
        page == other.page;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, tokenuser.hashCode), page.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MessageRequest')
          ..add('tokenuser', tokenuser)
          ..add('page', page))
        .toString();
  }
}

class MessageRequestBuilder
    implements Builder<MessageRequest, MessageRequestBuilder> {
  _$MessageRequest _$v;

  String _tokenuser;
  String get tokenuser => _$this._tokenuser;
  set tokenuser(String tokenuser) => _$this._tokenuser = tokenuser;

  String _page;
  String get page => _$this._page;
  set page(String page) => _$this._page = page;

  MessageRequestBuilder();

  MessageRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tokenuser = $v.tokenuser;
      _page = $v.page;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MessageRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MessageRequest;
  }

  @override
  void update(void Function(MessageRequestBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$MessageRequest build() {
    final _$result = _$v ??
        new _$MessageRequest._(
            tokenuser: BuiltValueNullFieldError.checkNotNull(
                tokenuser, 'MessageRequest', 'tokenuser'),
            page: BuiltValueNullFieldError.checkNotNull(
                page, 'MessageRequest', 'page'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
