// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_name_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SearchNameRequest> _$searchNameRequestSerializer =
    new _$SearchNameRequestSerializer();

class _$SearchNameRequestSerializer
    implements StructuredSerializer<SearchNameRequest> {
  @override
  final Iterable<Type> types = const [SearchNameRequest, _$SearchNameRequest];
  @override
  final String wireName = 'SearchNameRequest';

  @override
  Iterable<Object?> serialize(Serializers serializers, SearchNameRequest object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'kind',
      serializers.serialize(object.kind, specifiedType: const FullType(String)),
      'cp',
      serializers.serialize(object.cp, specifiedType: const FullType(String)),
      'proxy_istelecons',
      serializers.serialize(object.proxyIstelecons,
          specifiedType: const FullType(String)),
      'term',
      serializers.serialize(object.term, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  SearchNameRequest deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SearchNameRequestBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'kind':
          result.kind = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'cp':
          result.cp = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'proxy_istelecons':
          result.proxyIstelecons = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'term':
          result.term = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$SearchNameRequest extends SearchNameRequest {
  @override
  final String kind;
  @override
  final String cp;
  @override
  final String proxyIstelecons;
  @override
  final String term;

  factory _$SearchNameRequest(
          [void Function(SearchNameRequestBuilder)? updates]) =>
      (new SearchNameRequestBuilder()..update(updates))._build();

  _$SearchNameRequest._(
      {required this.kind,
      required this.cp,
      required this.proxyIstelecons,
      required this.term})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(kind, r'SearchNameRequest', 'kind');
    BuiltValueNullFieldError.checkNotNull(cp, r'SearchNameRequest', 'cp');
    BuiltValueNullFieldError.checkNotNull(
        proxyIstelecons, r'SearchNameRequest', 'proxyIstelecons');
    BuiltValueNullFieldError.checkNotNull(term, r'SearchNameRequest', 'term');
  }

  @override
  SearchNameRequest rebuild(void Function(SearchNameRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SearchNameRequestBuilder toBuilder() =>
      new SearchNameRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SearchNameRequest &&
        kind == other.kind &&
        cp == other.cp &&
        proxyIstelecons == other.proxyIstelecons &&
        term == other.term;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, kind.hashCode);
    _$hash = $jc(_$hash, cp.hashCode);
    _$hash = $jc(_$hash, proxyIstelecons.hashCode);
    _$hash = $jc(_$hash, term.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SearchNameRequest')
          ..add('kind', kind)
          ..add('cp', cp)
          ..add('proxyIstelecons', proxyIstelecons)
          ..add('term', term))
        .toString();
  }
}

class SearchNameRequestBuilder
    implements Builder<SearchNameRequest, SearchNameRequestBuilder> {
  _$SearchNameRequest? _$v;

  String? _kind;
  String? get kind => _$this._kind;
  set kind(String? kind) => _$this._kind = kind;

  String? _cp;
  String? get cp => _$this._cp;
  set cp(String? cp) => _$this._cp = cp;

  String? _proxyIstelecons;
  String? get proxyIstelecons => _$this._proxyIstelecons;
  set proxyIstelecons(String? proxyIstelecons) =>
      _$this._proxyIstelecons = proxyIstelecons;

  String? _term;
  String? get term => _$this._term;
  set term(String? term) => _$this._term = term;

  SearchNameRequestBuilder();

  SearchNameRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _kind = $v.kind;
      _cp = $v.cp;
      _proxyIstelecons = $v.proxyIstelecons;
      _term = $v.term;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SearchNameRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SearchNameRequest;
  }

  @override
  void update(void Function(SearchNameRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SearchNameRequest build() => _build();

  _$SearchNameRequest _build() {
    final _$result = _$v ??
        new _$SearchNameRequest._(
            kind: BuiltValueNullFieldError.checkNotNull(
                kind, r'SearchNameRequest', 'kind'),
            cp: BuiltValueNullFieldError.checkNotNull(
                cp, r'SearchNameRequest', 'cp'),
            proxyIstelecons: BuiltValueNullFieldError.checkNotNull(
                proxyIstelecons, r'SearchNameRequest', 'proxyIstelecons'),
            term: BuiltValueNullFieldError.checkNotNull(
                term, r'SearchNameRequest', 'term'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
