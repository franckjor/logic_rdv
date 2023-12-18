// GENERATED CODE - DO NOT MODIFY BY HAND

part of search_dialog_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SearchDialogRequest> _$searchDialogRequestSerializer =
    new _$SearchDialogRequestSerializer();

class _$SearchDialogRequestSerializer
    implements StructuredSerializer<SearchDialogRequest> {
  @override
  final Iterable<Type> types = const [
    SearchDialogRequest,
    _$SearchDialogRequest
  ];
  @override
  final String wireName = 'SearchDialogRequest';

  @override
  Iterable<Object> serialize(
      Serializers serializers, SearchDialogRequest object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'address',
      serializers.serialize(object.address,
          specifiedType: const FullType(String)),
      'zip',
      serializers.serialize(object.zip, specifiedType: const FullType(String)),
      'city',
      serializers.serialize(object.city, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  SearchDialogRequest deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SearchDialogRequestBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'address':
          result.address = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'zip':
          result.zip = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'city':
          result.city = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$SearchDialogRequest extends SearchDialogRequest {
  @override
  final String address;
  @override
  final String zip;
  @override
  final String city;

  factory _$SearchDialogRequest(
          [void Function(SearchDialogRequestBuilder) updates]) =>
      (new SearchDialogRequestBuilder()..update(updates)).build();

  _$SearchDialogRequest._({this.address, this.zip, this.city}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        address, 'SearchDialogRequest', 'address');
    BuiltValueNullFieldError.checkNotNull(zip, 'SearchDialogRequest', 'zip');
    BuiltValueNullFieldError.checkNotNull(city, 'SearchDialogRequest', 'city');
  }

  @override
  SearchDialogRequest rebuild(
          void Function(SearchDialogRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SearchDialogRequestBuilder toBuilder() =>
      new SearchDialogRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SearchDialogRequest &&
        address == other.address &&
        zip == other.zip &&
        city == other.city;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, address.hashCode), zip.hashCode), city.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SearchDialogRequest')
          ..add('address', address)
          ..add('zip', zip)
          ..add('city', city))
        .toString();
  }
}

class SearchDialogRequestBuilder
    implements Builder<SearchDialogRequest, SearchDialogRequestBuilder> {
  _$SearchDialogRequest _$v;

  String _address;
  String get address => _$this._address;
  set address(String address) => _$this._address = address;

  String _zip;
  String get zip => _$this._zip;
  set zip(String zip) => _$this._zip = zip;

  String _city;
  String get city => _$this._city;
  set city(String city) => _$this._city = city;

  SearchDialogRequestBuilder();

  SearchDialogRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _address = $v.address;
      _zip = $v.zip;
      _city = $v.city;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SearchDialogRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SearchDialogRequest;
  }

  @override
  void update(void Function(SearchDialogRequestBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SearchDialogRequest build() {
    final _$result = _$v ??
        new _$SearchDialogRequest._(
            address: BuiltValueNullFieldError.checkNotNull(
                address, 'SearchDialogRequest', 'address'),
            zip: BuiltValueNullFieldError.checkNotNull(
                zip, 'SearchDialogRequest', 'zip'),
            city: BuiltValueNullFieldError.checkNotNull(
                city, 'SearchDialogRequest', 'city'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
