// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_dialog_request.dart';

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
  Iterable<Object?> serialize(
      Serializers serializers, SearchDialogRequest object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
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
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SearchDialogRequestBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'address':
          result.address = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'zip':
          result.zip = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'city':
          result.city = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
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
          [void Function(SearchDialogRequestBuilder)? updates]) =>
      (new SearchDialogRequestBuilder()..update(updates))._build();

  _$SearchDialogRequest._(
      {required this.address, required this.zip, required this.city})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        address, r'SearchDialogRequest', 'address');
    BuiltValueNullFieldError.checkNotNull(zip, r'SearchDialogRequest', 'zip');
    BuiltValueNullFieldError.checkNotNull(city, r'SearchDialogRequest', 'city');
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
    var _$hash = 0;
    _$hash = $jc(_$hash, address.hashCode);
    _$hash = $jc(_$hash, zip.hashCode);
    _$hash = $jc(_$hash, city.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SearchDialogRequest')
          ..add('address', address)
          ..add('zip', zip)
          ..add('city', city))
        .toString();
  }
}

class SearchDialogRequestBuilder
    implements Builder<SearchDialogRequest, SearchDialogRequestBuilder> {
  _$SearchDialogRequest? _$v;

  String? _address;
  String? get address => _$this._address;
  set address(String? address) => _$this._address = address;

  String? _zip;
  String? get zip => _$this._zip;
  set zip(String? zip) => _$this._zip = zip;

  String? _city;
  String? get city => _$this._city;
  set city(String? city) => _$this._city = city;

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
  void update(void Function(SearchDialogRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SearchDialogRequest build() => _build();

  _$SearchDialogRequest _build() {
    final _$result = _$v ??
        new _$SearchDialogRequest._(
            address: BuiltValueNullFieldError.checkNotNull(
                address, r'SearchDialogRequest', 'address'),
            zip: BuiltValueNullFieldError.checkNotNull(
                zip, r'SearchDialogRequest', 'zip'),
            city: BuiltValueNullFieldError.checkNotNull(
                city, r'SearchDialogRequest', 'city'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
