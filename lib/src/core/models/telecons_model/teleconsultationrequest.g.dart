// GENERATED CODE - DO NOT MODIFY BY HAND

part of teleconsultationrequest;

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
  Iterable<Object> serialize(Serializers serializers, TeleconsRequest object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'tokentelecons',
      serializers.serialize(object.tokentelecons,
          specifiedType: const FullType(String))!,
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
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current!;
      switch (key) {
        case 'tokentelecons':
          result.tokentelecons = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
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
      (new TeleconsRequestBuilder()..update(updates!)).build();

  _$TeleconsRequest._({required this.tokentelecons}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        tokentelecons, 'TeleconsRequest', 'tokentelecons');
  }

  @override
  TeleconsRequest rebuild(void Function(TeleconsRequestBuilder) updates) =>
      (toBuilder()..update(updates!)).build();

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
    return $jf($jc(0, tokentelecons.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TeleconsRequest')
          ..add('tokentelecons', tokentelecons))
        .toString();
  }
}

class TeleconsRequestBuilder
    implements Builder<TeleconsRequest, TeleconsRequestBuilder> {
  _$TeleconsRequest? _$v =_$TeleconsRequest();

  String _tokentelecons = '';
  String get tokentelecons => _$this._tokentelecons;
  set tokentelecons(String tokentelecons) =>
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
  _$TeleconsRequest build() {
    final _$result = _$v ??
        new _$TeleconsRequest._(
            tokentelecons: BuiltValueNullFieldError.checkNotNull(
                tokentelecons, 'TeleconsRequest', 'tokentelecons'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
