// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_list_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<NotificationListRequest> _$notificationListRequestSerializer =
    new _$NotificationListRequestSerializer();

class _$NotificationListRequestSerializer
    implements StructuredSerializer<NotificationListRequest> {
  @override
  final Iterable<Type> types = const [
    NotificationListRequest,
    _$NotificationListRequest
  ];
  @override
  final String wireName = 'NotificationListRequest';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, NotificationListRequest object,
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
  NotificationListRequest deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NotificationListRequestBuilder();

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

class _$NotificationListRequest extends NotificationListRequest {
  @override
  final String installationkey;
  @override
  final String page;
  @override
  final String? tokeruser;

  factory _$NotificationListRequest(
          [void Function(NotificationListRequestBuilder)? updates]) =>
      (new NotificationListRequestBuilder()..update(updates))._build();

  _$NotificationListRequest._(
      {required this.installationkey, required this.page, this.tokeruser})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        installationkey, r'NotificationListRequest', 'installationkey');
    BuiltValueNullFieldError.checkNotNull(
        page, r'NotificationListRequest', 'page');
  }

  @override
  NotificationListRequest rebuild(
          void Function(NotificationListRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NotificationListRequestBuilder toBuilder() =>
      new NotificationListRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NotificationListRequest &&
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
    return (newBuiltValueToStringHelper(r'NotificationListRequest')
          ..add('installationkey', installationkey)
          ..add('page', page)
          ..add('tokeruser', tokeruser))
        .toString();
  }
}

class NotificationListRequestBuilder
    implements
        Builder<NotificationListRequest, NotificationListRequestBuilder> {
  _$NotificationListRequest? _$v;

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

  NotificationListRequestBuilder();

  NotificationListRequestBuilder get _$this {
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
  void replace(NotificationListRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NotificationListRequest;
  }

  @override
  void update(void Function(NotificationListRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NotificationListRequest build() => _build();

  _$NotificationListRequest _build() {
    final _$result = _$v ??
        new _$NotificationListRequest._(
            installationkey: BuiltValueNullFieldError.checkNotNull(
                installationkey, r'NotificationListRequest', 'installationkey'),
            page: BuiltValueNullFieldError.checkNotNull(
                page, r'NotificationListRequest', 'page'),
            tokeruser: tokeruser);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
