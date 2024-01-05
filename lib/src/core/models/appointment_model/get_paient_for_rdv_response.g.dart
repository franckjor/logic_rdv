// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_paient_for_rdv_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GetPaientForRdvResponse> _$getPaientForRdvResponseSerializer =
    new _$GetPaientForRdvResponseSerializer();
Serializer<ParamsGetPaientForRdvResponse>
    _$paramsGetPaientForRdvResponseSerializer =
    new _$ParamsGetPaientForRdvResponseSerializer();
Serializer<DataGetPaientForRdvResponse>
    _$dataGetPaientForRdvResponseSerializer =
    new _$DataGetPaientForRdvResponseSerializer();
Serializer<PatientDataResponseDrv> _$patientDataResponseDrvSerializer =
    new _$PatientDataResponseDrvSerializer();
Serializer<NavigationGetPaientForRdvResponse>
    _$navigationGetPaientForRdvResponseSerializer =
    new _$NavigationGetPaientForRdvResponseSerializer();
Serializer<BeginGetPaientForRdvResponse>
    _$beginGetPaientForRdvResponseSerializer =
    new _$BeginGetPaientForRdvResponseSerializer();
Serializer<PrevGetPaientForRdvResponse>
    _$prevGetPaientForRdvResponseSerializer =
    new _$PrevGetPaientForRdvResponseSerializer();

class _$GetPaientForRdvResponseSerializer
    implements StructuredSerializer<GetPaientForRdvResponse> {
  @override
  final Iterable<Type> types = const [
    GetPaientForRdvResponse,
    _$GetPaientForRdvResponse
  ];
  @override
  final String wireName = 'GetPaientForRdvResponse';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GetPaientForRdvResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'version',
      serializers.serialize(object.version,
          specifiedType: const FullType(String)),
      'request',
      serializers.serialize(object.request,
          specifiedType: const FullType(String)),
      'params',
      serializers.serialize(object.params,
          specifiedType: const FullType(ParamsGetPaientForRdvResponse)),
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
          specifiedType: const FullType(DataGetPaientForRdvResponse)),
    ];

    return result;
  }

  @override
  GetPaientForRdvResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GetPaientForRdvResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'version':
          result.version = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'request':
          result.request = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'params':
          result.params.replace(serializers.deserialize(value,
                  specifiedType: const FullType(ParamsGetPaientForRdvResponse))!
              as ParamsGetPaientForRdvResponse);
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'httpstatut':
          result.httpstatut = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'error':
          result.error = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'data':
          result.data.replace(serializers.deserialize(value,
                  specifiedType: const FullType(DataGetPaientForRdvResponse))!
              as DataGetPaientForRdvResponse);
          break;
      }
    }

    return result.build();
  }
}

class _$ParamsGetPaientForRdvResponseSerializer
    implements StructuredSerializer<ParamsGetPaientForRdvResponse> {
  @override
  final Iterable<Type> types = const [
    ParamsGetPaientForRdvResponse,
    _$ParamsGetPaientForRdvResponse
  ];
  @override
  final String wireName = 'ParamsGetPaientForRdvResponse';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, ParamsGetPaientForRdvResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'tokenuser',
      serializers.serialize(object.tokenuser,
          specifiedType: const FullType(String)),
      'tokenappointment',
      serializers.serialize(object.tokenappointment,
          specifiedType: const FullType(String)),
      'week',
      serializers.serialize(object.week, specifiedType: const FullType(String)),
      'data',
      serializers.serialize(object.data, specifiedType: const FullType(String)),
      'action',
      serializers.serialize(object.action,
          specifiedType: const FullType(String)),
      'session',
      serializers.serialize(object.session,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  ParamsGetPaientForRdvResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ParamsGetPaientForRdvResponseBuilder();

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
        case 'tokenappointment':
          result.tokenappointment = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'week':
          result.week = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'data':
          result.data = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'action':
          result.action = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'session':
          result.session = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$DataGetPaientForRdvResponseSerializer
    implements StructuredSerializer<DataGetPaientForRdvResponse> {
  @override
  final Iterable<Type> types = const [
    DataGetPaientForRdvResponse,
    _$DataGetPaientForRdvResponse
  ];
  @override
  final String wireName = 'DataGetPaientForRdvResponse';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, DataGetPaientForRdvResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'session',
      serializers.serialize(object.session,
          specifiedType: const FullType(String)),
      'navigation',
      serializers.serialize(object.navigation,
          specifiedType: const FullType(NavigationGetPaientForRdvResponse)),
      'headermessage',
      serializers.serialize(object.headermessage,
          specifiedType: const FullType(String)),
      'type',
      serializers.serialize(object.type, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.messageInternet;
    if (value != null) {
      result
        ..add('messageinternet')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.data;
    if (value != null) {
      result
        ..add('data')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(PatientDataResponseDrv)])));
    }
    return result;
  }

  @override
  DataGetPaientForRdvResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DataGetPaientForRdvResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'session':
          result.session = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'navigation':
          result.navigation.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(NavigationGetPaientForRdvResponse))!
              as NavigationGetPaientForRdvResponse);
          break;
        case 'headermessage':
          result.headermessage = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'messageinternet':
          result.messageInternet = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'data':
          result.data.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(PatientDataResponseDrv)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$PatientDataResponseDrvSerializer
    implements StructuredSerializer<PatientDataResponseDrv> {
  @override
  final Iterable<Type> types = const [
    PatientDataResponseDrv,
    _$PatientDataResponseDrv
  ];
  @override
  final String wireName = 'PatientDataResponseDrv';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, PatientDataResponseDrv object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.nom;
    if (value != null) {
      result
        ..add('nom')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.prenom;
    if (value != null) {
      result
        ..add('prenom')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.spacephone;
    if (value != null) {
      result
        ..add('spacephone')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.phone;
    if (value != null) {
      result
        ..add('phone')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.dob;
    if (value != null) {
      result
        ..add('dob')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.token;
    if (value != null) {
      result
        ..add('token')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.locked;
    if (value != null) {
      result
        ..add('locked')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.blacklist;
    if (value != null) {
      result
        ..add('blacklist')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.nplocked;
    if (value != null) {
      result
        ..add('nplocked')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.etaballowinternet;
    if (value != null) {
      result
        ..add('etaballowinternet')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.etaballownpinternet;
    if (value != null) {
      result
        ..add('etaballownpinternet')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.lockmessage;
    if (value != null) {
      result
        ..add('lockmessage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.onclick;
    if (value != null) {
      result
        ..add('onclick')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.onclickMessage;
    if (value != null) {
      result
        ..add('onclick_message')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.onclickData;
    if (value != null) {
      result
        ..add('onclick_data')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.onclickAction;
    if (value != null) {
      result
        ..add('onclick_action')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.onclickWeek;
    if (value != null) {
      result
        ..add('onclick_week')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.messageInternet;
    if (value != null) {
      result
        ..add('messageinternet')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.photo;
    if (value != null) {
      result
        ..add('photo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  PatientDataResponseDrv deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PatientDataResponseDrvBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'nom':
          result.nom = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'prenom':
          result.prenom = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'spacephone':
          result.spacephone = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'phone':
          result.phone = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'dob':
          result.dob = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'token':
          result.token = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'locked':
          result.locked = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'blacklist':
          result.blacklist = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'nplocked':
          result.nplocked = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'etaballowinternet':
          result.etaballowinternet = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'etaballownpinternet':
          result.etaballownpinternet = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'lockmessage':
          result.lockmessage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'onclick':
          result.onclick = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'onclick_message':
          result.onclickMessage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'onclick_data':
          result.onclickData = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'onclick_action':
          result.onclickAction = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'onclick_week':
          result.onclickWeek = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'messageinternet':
          result.messageInternet = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'photo':
          result.photo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$NavigationGetPaientForRdvResponseSerializer
    implements StructuredSerializer<NavigationGetPaientForRdvResponse> {
  @override
  final Iterable<Type> types = const [
    NavigationGetPaientForRdvResponse,
    _$NavigationGetPaientForRdvResponse
  ];
  @override
  final String wireName = 'NavigationGetPaientForRdvResponse';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, NavigationGetPaientForRdvResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.begin;
    if (value != null) {
      result
        ..add('begin')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BeginGetPaientForRdvResponse)));
    }
    value = object.prev;
    if (value != null) {
      result
        ..add('prev')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(PrevGetPaientForRdvResponse)));
    }
    return result;
  }

  @override
  NavigationGetPaientForRdvResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NavigationGetPaientForRdvResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'begin':
          result.begin.replace(serializers.deserialize(value,
                  specifiedType: const FullType(BeginGetPaientForRdvResponse))!
              as BeginGetPaientForRdvResponse);
          break;
        case 'prev':
          result.prev.replace(serializers.deserialize(value,
                  specifiedType: const FullType(PrevGetPaientForRdvResponse))!
              as PrevGetPaientForRdvResponse);
          break;
      }
    }

    return result.build();
  }
}

class _$BeginGetPaientForRdvResponseSerializer
    implements StructuredSerializer<BeginGetPaientForRdvResponse> {
  @override
  final Iterable<Type> types = const [
    BeginGetPaientForRdvResponse,
    _$BeginGetPaientForRdvResponse
  ];
  @override
  final String wireName = 'BeginGetPaientForRdvResponse';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, BeginGetPaientForRdvResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.label;
    if (value != null) {
      result
        ..add('label')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.onclickAction;
    if (value != null) {
      result
        ..add('onclick_action')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.onclickData;
    if (value != null) {
      result
        ..add('onclick_data')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.onclickWeek;
    if (value != null) {
      result
        ..add('onclick_week')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  BeginGetPaientForRdvResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BeginGetPaientForRdvResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'label':
          result.label = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'onclick_action':
          result.onclickAction = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'onclick_data':
          result.onclickData = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'onclick_week':
          result.onclickWeek = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$PrevGetPaientForRdvResponseSerializer
    implements StructuredSerializer<PrevGetPaientForRdvResponse> {
  @override
  final Iterable<Type> types = const [
    PrevGetPaientForRdvResponse,
    _$PrevGetPaientForRdvResponse
  ];
  @override
  final String wireName = 'PrevGetPaientForRdvResponse';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, PrevGetPaientForRdvResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.label;
    if (value != null) {
      result
        ..add('label')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.onclickAction;
    if (value != null) {
      result
        ..add('onclick_action')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.onclickData;
    if (value != null) {
      result
        ..add('onclick_data')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.onclickWeek;
    if (value != null) {
      result
        ..add('onclick_week')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  PrevGetPaientForRdvResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PrevGetPaientForRdvResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'label':
          result.label = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'onclick_action':
          result.onclickAction = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'onclick_data':
          result.onclickData = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'onclick_week':
          result.onclickWeek = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GetPaientForRdvResponse extends GetPaientForRdvResponse {
  @override
  final String version;
  @override
  final String request;
  @override
  final ParamsGetPaientForRdvResponse params;
  @override
  final String message;
  @override
  final int httpstatut;
  @override
  final String error;
  @override
  final DataGetPaientForRdvResponse data;

  factory _$GetPaientForRdvResponse(
          [void Function(GetPaientForRdvResponseBuilder)? updates]) =>
      (new GetPaientForRdvResponseBuilder()..update(updates))._build();

  _$GetPaientForRdvResponse._(
      {required this.version,
      required this.request,
      required this.params,
      required this.message,
      required this.httpstatut,
      required this.error,
      required this.data})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        version, r'GetPaientForRdvResponse', 'version');
    BuiltValueNullFieldError.checkNotNull(
        request, r'GetPaientForRdvResponse', 'request');
    BuiltValueNullFieldError.checkNotNull(
        params, r'GetPaientForRdvResponse', 'params');
    BuiltValueNullFieldError.checkNotNull(
        message, r'GetPaientForRdvResponse', 'message');
    BuiltValueNullFieldError.checkNotNull(
        httpstatut, r'GetPaientForRdvResponse', 'httpstatut');
    BuiltValueNullFieldError.checkNotNull(
        error, r'GetPaientForRdvResponse', 'error');
    BuiltValueNullFieldError.checkNotNull(
        data, r'GetPaientForRdvResponse', 'data');
  }

  @override
  GetPaientForRdvResponse rebuild(
          void Function(GetPaientForRdvResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetPaientForRdvResponseBuilder toBuilder() =>
      new GetPaientForRdvResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetPaientForRdvResponse &&
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
    var _$hash = 0;
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jc(_$hash, request.hashCode);
    _$hash = $jc(_$hash, params.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, httpstatut.hashCode);
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GetPaientForRdvResponse')
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

class GetPaientForRdvResponseBuilder
    implements
        Builder<GetPaientForRdvResponse, GetPaientForRdvResponseBuilder> {
  _$GetPaientForRdvResponse? _$v;

  String? _version;
  String? get version => _$this._version;
  set version(String? version) => _$this._version = version;

  String? _request;
  String? get request => _$this._request;
  set request(String? request) => _$this._request = request;

  ParamsGetPaientForRdvResponseBuilder? _params;
  ParamsGetPaientForRdvResponseBuilder get params =>
      _$this._params ??= new ParamsGetPaientForRdvResponseBuilder();
  set params(ParamsGetPaientForRdvResponseBuilder? params) =>
      _$this._params = params;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  int? _httpstatut;
  int? get httpstatut => _$this._httpstatut;
  set httpstatut(int? httpstatut) => _$this._httpstatut = httpstatut;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  DataGetPaientForRdvResponseBuilder? _data;
  DataGetPaientForRdvResponseBuilder get data =>
      _$this._data ??= new DataGetPaientForRdvResponseBuilder();
  set data(DataGetPaientForRdvResponseBuilder? data) => _$this._data = data;

  GetPaientForRdvResponseBuilder();

  GetPaientForRdvResponseBuilder get _$this {
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
  void replace(GetPaientForRdvResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetPaientForRdvResponse;
  }

  @override
  void update(void Function(GetPaientForRdvResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetPaientForRdvResponse build() => _build();

  _$GetPaientForRdvResponse _build() {
    _$GetPaientForRdvResponse _$result;
    try {
      _$result = _$v ??
          new _$GetPaientForRdvResponse._(
              version: BuiltValueNullFieldError.checkNotNull(
                  version, r'GetPaientForRdvResponse', 'version'),
              request: BuiltValueNullFieldError.checkNotNull(
                  request, r'GetPaientForRdvResponse', 'request'),
              params: params.build(),
              message: BuiltValueNullFieldError.checkNotNull(
                  message, r'GetPaientForRdvResponse', 'message'),
              httpstatut: BuiltValueNullFieldError.checkNotNull(
                  httpstatut, r'GetPaientForRdvResponse', 'httpstatut'),
              error: BuiltValueNullFieldError.checkNotNull(
                  error, r'GetPaientForRdvResponse', 'error'),
              data: data.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'params';
        params.build();

        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetPaientForRdvResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$ParamsGetPaientForRdvResponse extends ParamsGetPaientForRdvResponse {
  @override
  final String tokenuser;
  @override
  final String tokenappointment;
  @override
  final String week;
  @override
  final String data;
  @override
  final String action;
  @override
  final String session;

  factory _$ParamsGetPaientForRdvResponse(
          [void Function(ParamsGetPaientForRdvResponseBuilder)? updates]) =>
      (new ParamsGetPaientForRdvResponseBuilder()..update(updates))._build();

  _$ParamsGetPaientForRdvResponse._(
      {required this.tokenuser,
      required this.tokenappointment,
      required this.week,
      required this.data,
      required this.action,
      required this.session})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        tokenuser, r'ParamsGetPaientForRdvResponse', 'tokenuser');
    BuiltValueNullFieldError.checkNotNull(
        tokenappointment, r'ParamsGetPaientForRdvResponse', 'tokenappointment');
    BuiltValueNullFieldError.checkNotNull(
        week, r'ParamsGetPaientForRdvResponse', 'week');
    BuiltValueNullFieldError.checkNotNull(
        data, r'ParamsGetPaientForRdvResponse', 'data');
    BuiltValueNullFieldError.checkNotNull(
        action, r'ParamsGetPaientForRdvResponse', 'action');
    BuiltValueNullFieldError.checkNotNull(
        session, r'ParamsGetPaientForRdvResponse', 'session');
  }

  @override
  ParamsGetPaientForRdvResponse rebuild(
          void Function(ParamsGetPaientForRdvResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ParamsGetPaientForRdvResponseBuilder toBuilder() =>
      new ParamsGetPaientForRdvResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ParamsGetPaientForRdvResponse &&
        tokenuser == other.tokenuser &&
        tokenappointment == other.tokenappointment &&
        week == other.week &&
        data == other.data &&
        action == other.action &&
        session == other.session;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, tokenuser.hashCode);
    _$hash = $jc(_$hash, tokenappointment.hashCode);
    _$hash = $jc(_$hash, week.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jc(_$hash, action.hashCode);
    _$hash = $jc(_$hash, session.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ParamsGetPaientForRdvResponse')
          ..add('tokenuser', tokenuser)
          ..add('tokenappointment', tokenappointment)
          ..add('week', week)
          ..add('data', data)
          ..add('action', action)
          ..add('session', session))
        .toString();
  }
}

class ParamsGetPaientForRdvResponseBuilder
    implements
        Builder<ParamsGetPaientForRdvResponse,
            ParamsGetPaientForRdvResponseBuilder> {
  _$ParamsGetPaientForRdvResponse? _$v;

  String? _tokenuser;
  String? get tokenuser => _$this._tokenuser;
  set tokenuser(String? tokenuser) => _$this._tokenuser = tokenuser;

  String? _tokenappointment;
  String? get tokenappointment => _$this._tokenappointment;
  set tokenappointment(String? tokenappointment) =>
      _$this._tokenappointment = tokenappointment;

  String? _week;
  String? get week => _$this._week;
  set week(String? week) => _$this._week = week;

  String? _data;
  String? get data => _$this._data;
  set data(String? data) => _$this._data = data;

  String? _action;
  String? get action => _$this._action;
  set action(String? action) => _$this._action = action;

  String? _session;
  String? get session => _$this._session;
  set session(String? session) => _$this._session = session;

  ParamsGetPaientForRdvResponseBuilder();

  ParamsGetPaientForRdvResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tokenuser = $v.tokenuser;
      _tokenappointment = $v.tokenappointment;
      _week = $v.week;
      _data = $v.data;
      _action = $v.action;
      _session = $v.session;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ParamsGetPaientForRdvResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ParamsGetPaientForRdvResponse;
  }

  @override
  void update(void Function(ParamsGetPaientForRdvResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ParamsGetPaientForRdvResponse build() => _build();

  _$ParamsGetPaientForRdvResponse _build() {
    final _$result = _$v ??
        new _$ParamsGetPaientForRdvResponse._(
            tokenuser: BuiltValueNullFieldError.checkNotNull(
                tokenuser, r'ParamsGetPaientForRdvResponse', 'tokenuser'),
            tokenappointment: BuiltValueNullFieldError.checkNotNull(
                tokenappointment,
                r'ParamsGetPaientForRdvResponse',
                'tokenappointment'),
            week: BuiltValueNullFieldError.checkNotNull(
                week, r'ParamsGetPaientForRdvResponse', 'week'),
            data: BuiltValueNullFieldError.checkNotNull(
                data, r'ParamsGetPaientForRdvResponse', 'data'),
            action: BuiltValueNullFieldError.checkNotNull(
                action, r'ParamsGetPaientForRdvResponse', 'action'),
            session: BuiltValueNullFieldError.checkNotNull(
                session, r'ParamsGetPaientForRdvResponse', 'session'));
    replace(_$result);
    return _$result;
  }
}

class _$DataGetPaientForRdvResponse extends DataGetPaientForRdvResponse {
  @override
  final String session;
  @override
  final NavigationGetPaientForRdvResponse navigation;
  @override
  final String headermessage;
  @override
  final String type;
  @override
  final String? messageInternet;
  @override
  final BuiltList<PatientDataResponseDrv>? data;

  factory _$DataGetPaientForRdvResponse(
          [void Function(DataGetPaientForRdvResponseBuilder)? updates]) =>
      (new DataGetPaientForRdvResponseBuilder()..update(updates))._build();

  _$DataGetPaientForRdvResponse._(
      {required this.session,
      required this.navigation,
      required this.headermessage,
      required this.type,
      this.messageInternet,
      this.data})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        session, r'DataGetPaientForRdvResponse', 'session');
    BuiltValueNullFieldError.checkNotNull(
        navigation, r'DataGetPaientForRdvResponse', 'navigation');
    BuiltValueNullFieldError.checkNotNull(
        headermessage, r'DataGetPaientForRdvResponse', 'headermessage');
    BuiltValueNullFieldError.checkNotNull(
        type, r'DataGetPaientForRdvResponse', 'type');
  }

  @override
  DataGetPaientForRdvResponse rebuild(
          void Function(DataGetPaientForRdvResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DataGetPaientForRdvResponseBuilder toBuilder() =>
      new DataGetPaientForRdvResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DataGetPaientForRdvResponse &&
        session == other.session &&
        navigation == other.navigation &&
        headermessage == other.headermessage &&
        type == other.type &&
        messageInternet == other.messageInternet &&
        data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, session.hashCode);
    _$hash = $jc(_$hash, navigation.hashCode);
    _$hash = $jc(_$hash, headermessage.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, messageInternet.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DataGetPaientForRdvResponse')
          ..add('session', session)
          ..add('navigation', navigation)
          ..add('headermessage', headermessage)
          ..add('type', type)
          ..add('messageInternet', messageInternet)
          ..add('data', data))
        .toString();
  }
}

class DataGetPaientForRdvResponseBuilder
    implements
        Builder<DataGetPaientForRdvResponse,
            DataGetPaientForRdvResponseBuilder> {
  _$DataGetPaientForRdvResponse? _$v;

  String? _session;
  String? get session => _$this._session;
  set session(String? session) => _$this._session = session;

  NavigationGetPaientForRdvResponseBuilder? _navigation;
  NavigationGetPaientForRdvResponseBuilder get navigation =>
      _$this._navigation ??= new NavigationGetPaientForRdvResponseBuilder();
  set navigation(NavigationGetPaientForRdvResponseBuilder? navigation) =>
      _$this._navigation = navigation;

  String? _headermessage;
  String? get headermessage => _$this._headermessage;
  set headermessage(String? headermessage) =>
      _$this._headermessage = headermessage;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _messageInternet;
  String? get messageInternet => _$this._messageInternet;
  set messageInternet(String? messageInternet) =>
      _$this._messageInternet = messageInternet;

  ListBuilder<PatientDataResponseDrv>? _data;
  ListBuilder<PatientDataResponseDrv> get data =>
      _$this._data ??= new ListBuilder<PatientDataResponseDrv>();
  set data(ListBuilder<PatientDataResponseDrv>? data) => _$this._data = data;

  DataGetPaientForRdvResponseBuilder();

  DataGetPaientForRdvResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _session = $v.session;
      _navigation = $v.navigation.toBuilder();
      _headermessage = $v.headermessage;
      _type = $v.type;
      _messageInternet = $v.messageInternet;
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DataGetPaientForRdvResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DataGetPaientForRdvResponse;
  }

  @override
  void update(void Function(DataGetPaientForRdvResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DataGetPaientForRdvResponse build() => _build();

  _$DataGetPaientForRdvResponse _build() {
    _$DataGetPaientForRdvResponse _$result;
    try {
      _$result = _$v ??
          new _$DataGetPaientForRdvResponse._(
              session: BuiltValueNullFieldError.checkNotNull(
                  session, r'DataGetPaientForRdvResponse', 'session'),
              navigation: navigation.build(),
              headermessage: BuiltValueNullFieldError.checkNotNull(
                  headermessage,
                  r'DataGetPaientForRdvResponse',
                  'headermessage'),
              type: BuiltValueNullFieldError.checkNotNull(
                  type, r'DataGetPaientForRdvResponse', 'type'),
              messageInternet: messageInternet,
              data: _data?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'navigation';
        navigation.build();

        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DataGetPaientForRdvResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$PatientDataResponseDrv extends PatientDataResponseDrv {
  @override
  final String? nom;
  @override
  final String? prenom;
  @override
  final String? email;
  @override
  final String? spacephone;
  @override
  final String? phone;
  @override
  final String? dob;
  @override
  final String? token;
  @override
  final String? locked;
  @override
  final String? blacklist;
  @override
  final String? nplocked;
  @override
  final String? etaballowinternet;
  @override
  final String? etaballownpinternet;
  @override
  final String? lockmessage;
  @override
  final String? onclick;
  @override
  final String? onclickMessage;
  @override
  final String? onclickData;
  @override
  final String? onclickAction;
  @override
  final String? onclickWeek;
  @override
  final String? messageInternet;
  @override
  final String? photo;

  factory _$PatientDataResponseDrv(
          [void Function(PatientDataResponseDrvBuilder)? updates]) =>
      (new PatientDataResponseDrvBuilder()..update(updates))._build();

  _$PatientDataResponseDrv._(
      {this.nom,
      this.prenom,
      this.email,
      this.spacephone,
      this.phone,
      this.dob,
      this.token,
      this.locked,
      this.blacklist,
      this.nplocked,
      this.etaballowinternet,
      this.etaballownpinternet,
      this.lockmessage,
      this.onclick,
      this.onclickMessage,
      this.onclickData,
      this.onclickAction,
      this.onclickWeek,
      this.messageInternet,
      this.photo})
      : super._();

  @override
  PatientDataResponseDrv rebuild(
          void Function(PatientDataResponseDrvBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PatientDataResponseDrvBuilder toBuilder() =>
      new PatientDataResponseDrvBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PatientDataResponseDrv &&
        nom == other.nom &&
        prenom == other.prenom &&
        email == other.email &&
        spacephone == other.spacephone &&
        phone == other.phone &&
        dob == other.dob &&
        token == other.token &&
        locked == other.locked &&
        blacklist == other.blacklist &&
        nplocked == other.nplocked &&
        etaballowinternet == other.etaballowinternet &&
        etaballownpinternet == other.etaballownpinternet &&
        lockmessage == other.lockmessage &&
        onclick == other.onclick &&
        onclickMessage == other.onclickMessage &&
        onclickData == other.onclickData &&
        onclickAction == other.onclickAction &&
        onclickWeek == other.onclickWeek &&
        messageInternet == other.messageInternet &&
        photo == other.photo;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, nom.hashCode);
    _$hash = $jc(_$hash, prenom.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, spacephone.hashCode);
    _$hash = $jc(_$hash, phone.hashCode);
    _$hash = $jc(_$hash, dob.hashCode);
    _$hash = $jc(_$hash, token.hashCode);
    _$hash = $jc(_$hash, locked.hashCode);
    _$hash = $jc(_$hash, blacklist.hashCode);
    _$hash = $jc(_$hash, nplocked.hashCode);
    _$hash = $jc(_$hash, etaballowinternet.hashCode);
    _$hash = $jc(_$hash, etaballownpinternet.hashCode);
    _$hash = $jc(_$hash, lockmessage.hashCode);
    _$hash = $jc(_$hash, onclick.hashCode);
    _$hash = $jc(_$hash, onclickMessage.hashCode);
    _$hash = $jc(_$hash, onclickData.hashCode);
    _$hash = $jc(_$hash, onclickAction.hashCode);
    _$hash = $jc(_$hash, onclickWeek.hashCode);
    _$hash = $jc(_$hash, messageInternet.hashCode);
    _$hash = $jc(_$hash, photo.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PatientDataResponseDrv')
          ..add('nom', nom)
          ..add('prenom', prenom)
          ..add('email', email)
          ..add('spacephone', spacephone)
          ..add('phone', phone)
          ..add('dob', dob)
          ..add('token', token)
          ..add('locked', locked)
          ..add('blacklist', blacklist)
          ..add('nplocked', nplocked)
          ..add('etaballowinternet', etaballowinternet)
          ..add('etaballownpinternet', etaballownpinternet)
          ..add('lockmessage', lockmessage)
          ..add('onclick', onclick)
          ..add('onclickMessage', onclickMessage)
          ..add('onclickData', onclickData)
          ..add('onclickAction', onclickAction)
          ..add('onclickWeek', onclickWeek)
          ..add('messageInternet', messageInternet)
          ..add('photo', photo))
        .toString();
  }
}

class PatientDataResponseDrvBuilder
    implements Builder<PatientDataResponseDrv, PatientDataResponseDrvBuilder> {
  _$PatientDataResponseDrv? _$v;

  String? _nom;
  String? get nom => _$this._nom;
  set nom(String? nom) => _$this._nom = nom;

  String? _prenom;
  String? get prenom => _$this._prenom;
  set prenom(String? prenom) => _$this._prenom = prenom;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _spacephone;
  String? get spacephone => _$this._spacephone;
  set spacephone(String? spacephone) => _$this._spacephone = spacephone;

  String? _phone;
  String? get phone => _$this._phone;
  set phone(String? phone) => _$this._phone = phone;

  String? _dob;
  String? get dob => _$this._dob;
  set dob(String? dob) => _$this._dob = dob;

  String? _token;
  String? get token => _$this._token;
  set token(String? token) => _$this._token = token;

  String? _locked;
  String? get locked => _$this._locked;
  set locked(String? locked) => _$this._locked = locked;

  String? _blacklist;
  String? get blacklist => _$this._blacklist;
  set blacklist(String? blacklist) => _$this._blacklist = blacklist;

  String? _nplocked;
  String? get nplocked => _$this._nplocked;
  set nplocked(String? nplocked) => _$this._nplocked = nplocked;

  String? _etaballowinternet;
  String? get etaballowinternet => _$this._etaballowinternet;
  set etaballowinternet(String? etaballowinternet) =>
      _$this._etaballowinternet = etaballowinternet;

  String? _etaballownpinternet;
  String? get etaballownpinternet => _$this._etaballownpinternet;
  set etaballownpinternet(String? etaballownpinternet) =>
      _$this._etaballownpinternet = etaballownpinternet;

  String? _lockmessage;
  String? get lockmessage => _$this._lockmessage;
  set lockmessage(String? lockmessage) => _$this._lockmessage = lockmessage;

  String? _onclick;
  String? get onclick => _$this._onclick;
  set onclick(String? onclick) => _$this._onclick = onclick;

  String? _onclickMessage;
  String? get onclickMessage => _$this._onclickMessage;
  set onclickMessage(String? onclickMessage) =>
      _$this._onclickMessage = onclickMessage;

  String? _onclickData;
  String? get onclickData => _$this._onclickData;
  set onclickData(String? onclickData) => _$this._onclickData = onclickData;

  String? _onclickAction;
  String? get onclickAction => _$this._onclickAction;
  set onclickAction(String? onclickAction) =>
      _$this._onclickAction = onclickAction;

  String? _onclickWeek;
  String? get onclickWeek => _$this._onclickWeek;
  set onclickWeek(String? onclickWeek) => _$this._onclickWeek = onclickWeek;

  String? _messageInternet;
  String? get messageInternet => _$this._messageInternet;
  set messageInternet(String? messageInternet) =>
      _$this._messageInternet = messageInternet;

  String? _photo;
  String? get photo => _$this._photo;
  set photo(String? photo) => _$this._photo = photo;

  PatientDataResponseDrvBuilder();

  PatientDataResponseDrvBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nom = $v.nom;
      _prenom = $v.prenom;
      _email = $v.email;
      _spacephone = $v.spacephone;
      _phone = $v.phone;
      _dob = $v.dob;
      _token = $v.token;
      _locked = $v.locked;
      _blacklist = $v.blacklist;
      _nplocked = $v.nplocked;
      _etaballowinternet = $v.etaballowinternet;
      _etaballownpinternet = $v.etaballownpinternet;
      _lockmessage = $v.lockmessage;
      _onclick = $v.onclick;
      _onclickMessage = $v.onclickMessage;
      _onclickData = $v.onclickData;
      _onclickAction = $v.onclickAction;
      _onclickWeek = $v.onclickWeek;
      _messageInternet = $v.messageInternet;
      _photo = $v.photo;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PatientDataResponseDrv other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PatientDataResponseDrv;
  }

  @override
  void update(void Function(PatientDataResponseDrvBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PatientDataResponseDrv build() => _build();

  _$PatientDataResponseDrv _build() {
    final _$result = _$v ??
        new _$PatientDataResponseDrv._(
            nom: nom,
            prenom: prenom,
            email: email,
            spacephone: spacephone,
            phone: phone,
            dob: dob,
            token: token,
            locked: locked,
            blacklist: blacklist,
            nplocked: nplocked,
            etaballowinternet: etaballowinternet,
            etaballownpinternet: etaballownpinternet,
            lockmessage: lockmessage,
            onclick: onclick,
            onclickMessage: onclickMessage,
            onclickData: onclickData,
            onclickAction: onclickAction,
            onclickWeek: onclickWeek,
            messageInternet: messageInternet,
            photo: photo);
    replace(_$result);
    return _$result;
  }
}

class _$NavigationGetPaientForRdvResponse
    extends NavigationGetPaientForRdvResponse {
  @override
  final BeginGetPaientForRdvResponse? begin;
  @override
  final PrevGetPaientForRdvResponse? prev;

  factory _$NavigationGetPaientForRdvResponse(
          [void Function(NavigationGetPaientForRdvResponseBuilder)? updates]) =>
      (new NavigationGetPaientForRdvResponseBuilder()..update(updates))
          ._build();

  _$NavigationGetPaientForRdvResponse._({this.begin, this.prev}) : super._();

  @override
  NavigationGetPaientForRdvResponse rebuild(
          void Function(NavigationGetPaientForRdvResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NavigationGetPaientForRdvResponseBuilder toBuilder() =>
      new NavigationGetPaientForRdvResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NavigationGetPaientForRdvResponse &&
        begin == other.begin &&
        prev == other.prev;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, begin.hashCode);
    _$hash = $jc(_$hash, prev.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NavigationGetPaientForRdvResponse')
          ..add('begin', begin)
          ..add('prev', prev))
        .toString();
  }
}

class NavigationGetPaientForRdvResponseBuilder
    implements
        Builder<NavigationGetPaientForRdvResponse,
            NavigationGetPaientForRdvResponseBuilder> {
  _$NavigationGetPaientForRdvResponse? _$v;

  BeginGetPaientForRdvResponseBuilder? _begin;
  BeginGetPaientForRdvResponseBuilder get begin =>
      _$this._begin ??= new BeginGetPaientForRdvResponseBuilder();
  set begin(BeginGetPaientForRdvResponseBuilder? begin) =>
      _$this._begin = begin;

  PrevGetPaientForRdvResponseBuilder? _prev;
  PrevGetPaientForRdvResponseBuilder get prev =>
      _$this._prev ??= new PrevGetPaientForRdvResponseBuilder();
  set prev(PrevGetPaientForRdvResponseBuilder? prev) => _$this._prev = prev;

  NavigationGetPaientForRdvResponseBuilder();

  NavigationGetPaientForRdvResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _begin = $v.begin?.toBuilder();
      _prev = $v.prev?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NavigationGetPaientForRdvResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NavigationGetPaientForRdvResponse;
  }

  @override
  void update(
      void Function(NavigationGetPaientForRdvResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NavigationGetPaientForRdvResponse build() => _build();

  _$NavigationGetPaientForRdvResponse _build() {
    _$NavigationGetPaientForRdvResponse _$result;
    try {
      _$result = _$v ??
          new _$NavigationGetPaientForRdvResponse._(
              begin: _begin?.build(), prev: _prev?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'begin';
        _begin?.build();
        _$failedField = 'prev';
        _prev?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'NavigationGetPaientForRdvResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$BeginGetPaientForRdvResponse extends BeginGetPaientForRdvResponse {
  @override
  final String? label;
  @override
  final String? onclickAction;
  @override
  final String? onclickData;
  @override
  final String? onclickWeek;

  factory _$BeginGetPaientForRdvResponse(
          [void Function(BeginGetPaientForRdvResponseBuilder)? updates]) =>
      (new BeginGetPaientForRdvResponseBuilder()..update(updates))._build();

  _$BeginGetPaientForRdvResponse._(
      {this.label, this.onclickAction, this.onclickData, this.onclickWeek})
      : super._();

  @override
  BeginGetPaientForRdvResponse rebuild(
          void Function(BeginGetPaientForRdvResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BeginGetPaientForRdvResponseBuilder toBuilder() =>
      new BeginGetPaientForRdvResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BeginGetPaientForRdvResponse &&
        label == other.label &&
        onclickAction == other.onclickAction &&
        onclickData == other.onclickData &&
        onclickWeek == other.onclickWeek;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, label.hashCode);
    _$hash = $jc(_$hash, onclickAction.hashCode);
    _$hash = $jc(_$hash, onclickData.hashCode);
    _$hash = $jc(_$hash, onclickWeek.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BeginGetPaientForRdvResponse')
          ..add('label', label)
          ..add('onclickAction', onclickAction)
          ..add('onclickData', onclickData)
          ..add('onclickWeek', onclickWeek))
        .toString();
  }
}

class BeginGetPaientForRdvResponseBuilder
    implements
        Builder<BeginGetPaientForRdvResponse,
            BeginGetPaientForRdvResponseBuilder> {
  _$BeginGetPaientForRdvResponse? _$v;

  String? _label;
  String? get label => _$this._label;
  set label(String? label) => _$this._label = label;

  String? _onclickAction;
  String? get onclickAction => _$this._onclickAction;
  set onclickAction(String? onclickAction) =>
      _$this._onclickAction = onclickAction;

  String? _onclickData;
  String? get onclickData => _$this._onclickData;
  set onclickData(String? onclickData) => _$this._onclickData = onclickData;

  String? _onclickWeek;
  String? get onclickWeek => _$this._onclickWeek;
  set onclickWeek(String? onclickWeek) => _$this._onclickWeek = onclickWeek;

  BeginGetPaientForRdvResponseBuilder();

  BeginGetPaientForRdvResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _label = $v.label;
      _onclickAction = $v.onclickAction;
      _onclickData = $v.onclickData;
      _onclickWeek = $v.onclickWeek;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BeginGetPaientForRdvResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BeginGetPaientForRdvResponse;
  }

  @override
  void update(void Function(BeginGetPaientForRdvResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BeginGetPaientForRdvResponse build() => _build();

  _$BeginGetPaientForRdvResponse _build() {
    final _$result = _$v ??
        new _$BeginGetPaientForRdvResponse._(
            label: label,
            onclickAction: onclickAction,
            onclickData: onclickData,
            onclickWeek: onclickWeek);
    replace(_$result);
    return _$result;
  }
}

class _$PrevGetPaientForRdvResponse extends PrevGetPaientForRdvResponse {
  @override
  final String? label;
  @override
  final String? onclickAction;
  @override
  final String? onclickData;
  @override
  final String? onclickWeek;

  factory _$PrevGetPaientForRdvResponse(
          [void Function(PrevGetPaientForRdvResponseBuilder)? updates]) =>
      (new PrevGetPaientForRdvResponseBuilder()..update(updates))._build();

  _$PrevGetPaientForRdvResponse._(
      {this.label, this.onclickAction, this.onclickData, this.onclickWeek})
      : super._();

  @override
  PrevGetPaientForRdvResponse rebuild(
          void Function(PrevGetPaientForRdvResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PrevGetPaientForRdvResponseBuilder toBuilder() =>
      new PrevGetPaientForRdvResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PrevGetPaientForRdvResponse &&
        label == other.label &&
        onclickAction == other.onclickAction &&
        onclickData == other.onclickData &&
        onclickWeek == other.onclickWeek;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, label.hashCode);
    _$hash = $jc(_$hash, onclickAction.hashCode);
    _$hash = $jc(_$hash, onclickData.hashCode);
    _$hash = $jc(_$hash, onclickWeek.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PrevGetPaientForRdvResponse')
          ..add('label', label)
          ..add('onclickAction', onclickAction)
          ..add('onclickData', onclickData)
          ..add('onclickWeek', onclickWeek))
        .toString();
  }
}

class PrevGetPaientForRdvResponseBuilder
    implements
        Builder<PrevGetPaientForRdvResponse,
            PrevGetPaientForRdvResponseBuilder> {
  _$PrevGetPaientForRdvResponse? _$v;

  String? _label;
  String? get label => _$this._label;
  set label(String? label) => _$this._label = label;

  String? _onclickAction;
  String? get onclickAction => _$this._onclickAction;
  set onclickAction(String? onclickAction) =>
      _$this._onclickAction = onclickAction;

  String? _onclickData;
  String? get onclickData => _$this._onclickData;
  set onclickData(String? onclickData) => _$this._onclickData = onclickData;

  String? _onclickWeek;
  String? get onclickWeek => _$this._onclickWeek;
  set onclickWeek(String? onclickWeek) => _$this._onclickWeek = onclickWeek;

  PrevGetPaientForRdvResponseBuilder();

  PrevGetPaientForRdvResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _label = $v.label;
      _onclickAction = $v.onclickAction;
      _onclickData = $v.onclickData;
      _onclickWeek = $v.onclickWeek;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PrevGetPaientForRdvResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PrevGetPaientForRdvResponse;
  }

  @override
  void update(void Function(PrevGetPaientForRdvResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PrevGetPaientForRdvResponse build() => _build();

  _$PrevGetPaientForRdvResponse _build() {
    final _$result = _$v ??
        new _$PrevGetPaientForRdvResponse._(
            label: label,
            onclickAction: onclickAction,
            onclickData: onclickData,
            onclickWeek: onclickWeek);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
