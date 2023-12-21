// GENERATED CODE - DO NOT MODIFY BY HAND

part of get_token_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GetTokenRequest> _$getTokenRequestSerializer =
    new _$GetTokenRequestSerializer();

class _$GetTokenRequestSerializer
    implements StructuredSerializer<GetTokenRequest> {
  @override
  final Iterable<Type> types = const [GetTokenRequest, _$GetTokenRequest];
  @override
  final String wireName = 'GetTokenRequest';

  @override
  Iterable<Object> serialize(Serializers serializers, GetTokenRequest object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'client_project',
      serializers.serialize(object.clientProject,
          specifiedType: const FullType(String))!,
      'client_secret',
      serializers.serialize(object.clientSecret,
          specifiedType: const FullType(String))!,
    ];

    return result;
  }

  @override
  GetTokenRequest deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GetTokenRequestBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current!;
      switch (key) {
        case 'client_project':
          result.clientProject = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'client_secret':
          result.clientSecret = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GetTokenRequest extends GetTokenRequest {
  @override
  final String clientProject;
  @override
  final String clientSecret;

  factory _$GetTokenRequest([void Function(GetTokenRequestBuilder)? updates]) =>
      (new GetTokenRequestBuilder()..update(updates!)).build();

  _$GetTokenRequest._({required this.clientProject,required  this.clientSecret}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        clientProject, 'GetTokenRequest', 'clientProject');
    BuiltValueNullFieldError.checkNotNull(
        clientSecret, 'GetTokenRequest', 'clientSecret');
  }

  @override
  GetTokenRequest rebuild(void Function(GetTokenRequestBuilder) updates) =>
      (toBuilder()..update(updates!)).build();

  @override
  GetTokenRequestBuilder toBuilder() =>
      new GetTokenRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetTokenRequest &&
        clientProject == other.clientProject &&
        clientSecret == other.clientSecret;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, clientProject.hashCode), clientSecret.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GetTokenRequest')
          ..add('clientProject', clientProject)
          ..add('clientSecret', clientSecret))
        .toString();
  }
}

class GetTokenRequestBuilder
    implements Builder<GetTokenRequest, GetTokenRequestBuilder> {
  late _$GetTokenRequest? _$v;

  late String _clientProject;
  String get clientProject => _$this._clientProject;
  set clientProject(String clientProject) =>
      _$this._clientProject = clientProject;

  late String _clientSecret;
  String get clientSecret => _$this._clientSecret;
  set clientSecret(String clientSecret) => _$this._clientSecret = clientSecret;

  GetTokenRequestBuilder();

  GetTokenRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _clientProject = $v.clientProject;
      _clientSecret = $v.clientSecret;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetTokenRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetTokenRequest;
  }

  @override
  void update(void Function(GetTokenRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GetTokenRequest build() {
    final _$result = _$v ??
        new _$GetTokenRequest._(
            clientProject: BuiltValueNullFieldError.checkNotNull(
                clientProject, 'GetTokenRequest', 'clientProject'),
            clientSecret: BuiltValueNullFieldError.checkNotNull(
                clientSecret, 'GetTokenRequest', 'clientSecret'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
