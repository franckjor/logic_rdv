// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_request.dart';

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
  Iterable<Object?> serialize(Serializers serializers, MessageRequest object,
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
  MessageRequest deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MessageRequestBuilder();

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

class _$MessageRequest extends MessageRequest {
  @override
  final String tokenuser;
  @override
  final String page;

  factory _$MessageRequest([void Function(MessageRequestBuilder)? updates]) =>
      (new MessageRequestBuilder()..update(updates))._build();

  _$MessageRequest._({required this.tokenuser, required this.page})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        tokenuser, r'MessageRequest', 'tokenuser');
    BuiltValueNullFieldError.checkNotNull(page, r'MessageRequest', 'page');
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
    var _$hash = 0;
    _$hash = $jc(_$hash, tokenuser.hashCode);
    _$hash = $jc(_$hash, page.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MessageRequest')
          ..add('tokenuser', tokenuser)
          ..add('page', page))
        .toString();
  }
}

class MessageRequestBuilder
    implements Builder<MessageRequest, MessageRequestBuilder> {
  _$MessageRequest? _$v;

  String? _tokenuser;
  String? get tokenuser => _$this._tokenuser;
  set tokenuser(String? tokenuser) => _$this._tokenuser = tokenuser;

  String? _page;
  String? get page => _$this._page;
  set page(String? page) => _$this._page = page;

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
  void update(void Function(MessageRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MessageRequest build() => _build();

  _$MessageRequest _build() {
    final _$result = _$v ??
        new _$MessageRequest._(
            tokenuser: BuiltValueNullFieldError.checkNotNull(
                tokenuser, r'MessageRequest', 'tokenuser'),
            page: BuiltValueNullFieldError.checkNotNull(
                page, r'MessageRequest', 'page'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
