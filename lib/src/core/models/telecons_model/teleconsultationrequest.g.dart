// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'teleconsultationrequest.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TeleconsRequest> _$teleconsRequestSerializer =
    new _$TeleconsRequestSerializer();

class _$TeleconsRequestSerializer
    implements StructuredSerializer<TeleconsRequest> {
  @override
  final Iterable<Type> types = const [TeleconsRequest, _$TeleconsRequest];
  @override
  final String wireName = 'TeleconsRequest';

  @override
  Iterable<Object?> serialize(Serializers serializers, TeleconsRequest object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'tokentelecons',
      serializers.serialize(object.tokentelecons,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  TeleconsRequest deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TeleconsRequestBuilder();

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

class _$TeleconsRequest extends TeleconsRequest {
  @override
  final String tokentelecons;

  factory _$TeleconsRequest([void Function(TeleconsRequestBuilder)? updates]) =>
      (new TeleconsRequestBuilder()..update(updates))._build();

  _$TeleconsRequest._({required this.tokentelecons}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        tokentelecons, r'TeleconsRequest', 'tokentelecons');
  }

  @override
  TeleconsRequest rebuild(void Function(TeleconsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TeleconsRequestBuilder toBuilder() =>
      new TeleconsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TeleconsRequest && tokentelecons == other.tokentelecons;
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
    return (newBuiltValueToStringHelper(r'TeleconsRequest')
          ..add('tokentelecons', tokentelecons))
        .toString();
  }
}

class TeleconsRequestBuilder
    implements Builder<TeleconsRequest, TeleconsRequestBuilder> {
  _$TeleconsRequest? _$v;

  String? _tokentelecons;
  String? get tokentelecons => _$this._tokentelecons;
  set tokentelecons(String? tokentelecons) =>
      _$this._tokentelecons = tokentelecons;

  TeleconsRequestBuilder();

  TeleconsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tokentelecons = $v.tokentelecons;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TeleconsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TeleconsRequest;
  }

  @override
  void update(void Function(TeleconsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TeleconsRequest build() => _build();

  _$TeleconsRequest _build() {
    final _$result = _$v ??
        new _$TeleconsRequest._(
            tokentelecons: BuiltValueNullFieldError.checkNotNull(
                tokentelecons, r'TeleconsRequest', 'tokentelecons'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
