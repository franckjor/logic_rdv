// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_apointment_time_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GetApointmentTimeResponse> _$getApointmentTimeResponseSerializer =
    new _$GetApointmentTimeResponseSerializer();
Serializer<ParamsGetApointmentTimeResponse>
    _$paramsGetApointmentTimeResponseSerializer =
    new _$ParamsGetApointmentTimeResponseSerializer();
Serializer<DataGetApointmentTimeResponse>
    _$dataGetApointmentTimeResponseSerializer =
    new _$DataGetApointmentTimeResponseSerializer();
Serializer<DataTimeRdv> _$dataTimeRdvSerializer = new _$DataTimeRdvSerializer();
Serializer<Creneaux> _$creneauxSerializer = new _$CreneauxSerializer();
Serializer<Navigation> _$navigationSerializer = new _$NavigationSerializer();
Serializer<Begin> _$beginSerializer = new _$BeginSerializer();
Serializer<Prev> _$prevSerializer = new _$PrevSerializer();
Serializer<Prevweek> _$prevweekSerializer = new _$PrevweekSerializer();
Serializer<Nextweek> _$nextweekSerializer = new _$NextweekSerializer();

class _$GetApointmentTimeResponseSerializer
    implements StructuredSerializer<GetApointmentTimeResponse> {
  @override
  final Iterable<Type> types = const [
    GetApointmentTimeResponse,
    _$GetApointmentTimeResponse
  ];
  @override
  final String wireName = 'GetApointmentTimeResponse';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GetApointmentTimeResponse object,
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
          specifiedType: const FullType(ParamsGetApointmentTimeResponse)),
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
          specifiedType: const FullType(DataGetApointmentTimeResponse)),
    ];

    return result;
  }

  @override
  GetApointmentTimeResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GetApointmentTimeResponseBuilder();

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
                  specifiedType:
                      const FullType(ParamsGetApointmentTimeResponse))!
              as ParamsGetApointmentTimeResponse);
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
                  specifiedType: const FullType(DataGetApointmentTimeResponse))!
              as DataGetApointmentTimeResponse);
          break;
      }
    }

    return result.build();
  }
}

class _$ParamsGetApointmentTimeResponseSerializer
    implements StructuredSerializer<ParamsGetApointmentTimeResponse> {
  @override
  final Iterable<Type> types = const [
    ParamsGetApointmentTimeResponse,
    _$ParamsGetApointmentTimeResponse
  ];
  @override
  final String wireName = 'ParamsGetApointmentTimeResponse';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, ParamsGetApointmentTimeResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.tokenuser;
    if (value != null) {
      result
        ..add('tokenuser')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.tokenappointment;
    if (value != null) {
      result
        ..add('tokenappointment')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.week;
    if (value != null) {
      result
        ..add('week')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.data;
    if (value != null) {
      result
        ..add('data')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.action;
    if (value != null) {
      result
        ..add('action')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.session;
    if (value != null) {
      result
        ..add('session')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ParamsGetApointmentTimeResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ParamsGetApointmentTimeResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'tokenuser':
          result.tokenuser = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'tokenappointment':
          result.tokenappointment = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'week':
          result.week = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'data':
          result.data = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'action':
          result.action = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'session':
          result.session = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$DataGetApointmentTimeResponseSerializer
    implements StructuredSerializer<DataGetApointmentTimeResponse> {
  @override
  final Iterable<Type> types = const [
    DataGetApointmentTimeResponse,
    _$DataGetApointmentTimeResponse
  ];
  @override
  final String wireName = 'DataGetApointmentTimeResponse';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, DataGetApointmentTimeResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'type',
      serializers.serialize(object.type, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.session;
    if (value != null) {
      result
        ..add('session')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.navigation;
    if (value != null) {
      result
        ..add('navigation')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(Navigation)));
    }
    value = object.headermessage;
    if (value != null) {
      result
        ..add('headermessage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.data;
    if (value != null) {
      result
        ..add('data')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(DataTimeRdv)])));
    }
    return result;
  }

  @override
  DataGetApointmentTimeResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DataGetApointmentTimeResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'session':
          result.session = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'navigation':
          result.navigation.replace(serializers.deserialize(value,
              specifiedType: const FullType(Navigation))! as Navigation);
          break;
        case 'headermessage':
          result.headermessage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'data':
          result.data.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(DataTimeRdv)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$DataTimeRdvSerializer implements StructuredSerializer<DataTimeRdv> {
  @override
  final Iterable<Type> types = const [DataTimeRdv, _$DataTimeRdv];
  @override
  final String wireName = 'DataTimeRdv';

  @override
  Iterable<Object?> serialize(Serializers serializers, DataTimeRdv object,
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
    value = object.label2;
    if (value != null) {
      result
        ..add('label2')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.label3;
    if (value != null) {
      result
        ..add('label3')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.message;
    if (value != null) {
      result
        ..add('message')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.creneaux;
    if (value != null) {
      result
        ..add('creneaux')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Creneaux)])));
    }
    return result;
  }

  @override
  DataTimeRdv deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DataTimeRdvBuilder();

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
        case 'label2':
          result.label2 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'label3':
          result.label3 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'creneaux':
          result.creneaux.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Creneaux)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$CreneauxSerializer implements StructuredSerializer<Creneaux> {
  @override
  final Iterable<Type> types = const [Creneaux, _$Creneaux];
  @override
  final String wireName = 'Creneaux';

  @override
  Iterable<Object?> serialize(Serializers serializers, Creneaux object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.fromhour;
    if (value != null) {
      result
        ..add('fromhour')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.tohour;
    if (value != null) {
      result
        ..add('tohour')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.doctor;
    if (value != null) {
      result
        ..add('doctor')
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
    return result;
  }

  @override
  Creneaux deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CreneauxBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'fromhour':
          result.fromhour = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'tohour':
          result.tohour = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'doctor':
          result.doctor = serializers.deserialize(value,
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
      }
    }

    return result.build();
  }
}

class _$NavigationSerializer implements StructuredSerializer<Navigation> {
  @override
  final Iterable<Type> types = const [Navigation, _$Navigation];
  @override
  final String wireName = 'Navigation';

  @override
  Iterable<Object?> serialize(Serializers serializers, Navigation object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.begin;
    if (value != null) {
      result
        ..add('begin')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(Begin)));
    }
    value = object.prev;
    if (value != null) {
      result
        ..add('prev')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(Prev)));
    }
    value = object.prevweek;
    if (value != null) {
      result
        ..add('prevweek')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(Prevweek)));
    }
    value = object.nextweek;
    if (value != null) {
      result
        ..add('nextweek')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(Nextweek)));
    }
    return result;
  }

  @override
  Navigation deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NavigationBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'begin':
          result.begin.replace(serializers.deserialize(value,
              specifiedType: const FullType(Begin))! as Begin);
          break;
        case 'prev':
          result.prev.replace(serializers.deserialize(value,
              specifiedType: const FullType(Prev))! as Prev);
          break;
        case 'prevweek':
          result.prevweek.replace(serializers.deserialize(value,
              specifiedType: const FullType(Prevweek))! as Prevweek);
          break;
        case 'nextweek':
          result.nextweek.replace(serializers.deserialize(value,
              specifiedType: const FullType(Nextweek))! as Nextweek);
          break;
      }
    }

    return result.build();
  }
}

class _$BeginSerializer implements StructuredSerializer<Begin> {
  @override
  final Iterable<Type> types = const [Begin, _$Begin];
  @override
  final String wireName = 'Begin';

  @override
  Iterable<Object?> serialize(Serializers serializers, Begin object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'label',
      serializers.serialize(object.label,
          specifiedType: const FullType(String)),
      'onclick_action',
      serializers.serialize(object.onclickAction,
          specifiedType: const FullType(String)),
      'onclick_data',
      serializers.serialize(object.onclickData,
          specifiedType: const FullType(String)),
      'onclick_week',
      serializers.serialize(object.onclickWeek,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Begin deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BeginBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'label':
          result.label = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'onclick_action':
          result.onclickAction = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'onclick_data':
          result.onclickData = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'onclick_week':
          result.onclickWeek = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$PrevSerializer implements StructuredSerializer<Prev> {
  @override
  final Iterable<Type> types = const [Prev, _$Prev];
  @override
  final String wireName = 'Prev';

  @override
  Iterable<Object?> serialize(Serializers serializers, Prev object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'label',
      serializers.serialize(object.label,
          specifiedType: const FullType(String)),
      'onclick_action',
      serializers.serialize(object.onclickAction,
          specifiedType: const FullType(String)),
      'onclick_data',
      serializers.serialize(object.onclickData,
          specifiedType: const FullType(String)),
      'onclick_week',
      serializers.serialize(object.onclickWeek,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Prev deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PrevBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'label':
          result.label = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'onclick_action':
          result.onclickAction = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'onclick_data':
          result.onclickData = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'onclick_week':
          result.onclickWeek = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$PrevweekSerializer implements StructuredSerializer<Prevweek> {
  @override
  final Iterable<Type> types = const [Prevweek, _$Prevweek];
  @override
  final String wireName = 'Prevweek';

  @override
  Iterable<Object?> serialize(Serializers serializers, Prevweek object,
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
  Prevweek deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PrevweekBuilder();

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

class _$NextweekSerializer implements StructuredSerializer<Nextweek> {
  @override
  final Iterable<Type> types = const [Nextweek, _$Nextweek];
  @override
  final String wireName = 'Nextweek';

  @override
  Iterable<Object?> serialize(Serializers serializers, Nextweek object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'label',
      serializers.serialize(object.label,
          specifiedType: const FullType(String)),
      'onclick_action',
      serializers.serialize(object.onclickAction,
          specifiedType: const FullType(String)),
      'onclick_data',
      serializers.serialize(object.onclickData,
          specifiedType: const FullType(String)),
      'onclick_week',
      serializers.serialize(object.onclickWeek,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Nextweek deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NextweekBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'label':
          result.label = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'onclick_action':
          result.onclickAction = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'onclick_data':
          result.onclickData = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'onclick_week':
          result.onclickWeek = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GetApointmentTimeResponse extends GetApointmentTimeResponse {
  @override
  final String version;
  @override
  final String request;
  @override
  final ParamsGetApointmentTimeResponse params;
  @override
  final String message;
  @override
  final int httpstatut;
  @override
  final String error;
  @override
  final DataGetApointmentTimeResponse data;

  factory _$GetApointmentTimeResponse(
          [void Function(GetApointmentTimeResponseBuilder)? updates]) =>
      (new GetApointmentTimeResponseBuilder()..update(updates))._build();

  _$GetApointmentTimeResponse._(
      {required this.version,
      required this.request,
      required this.params,
      required this.message,
      required this.httpstatut,
      required this.error,
      required this.data})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        version, r'GetApointmentTimeResponse', 'version');
    BuiltValueNullFieldError.checkNotNull(
        request, r'GetApointmentTimeResponse', 'request');
    BuiltValueNullFieldError.checkNotNull(
        params, r'GetApointmentTimeResponse', 'params');
    BuiltValueNullFieldError.checkNotNull(
        message, r'GetApointmentTimeResponse', 'message');
    BuiltValueNullFieldError.checkNotNull(
        httpstatut, r'GetApointmentTimeResponse', 'httpstatut');
    BuiltValueNullFieldError.checkNotNull(
        error, r'GetApointmentTimeResponse', 'error');
    BuiltValueNullFieldError.checkNotNull(
        data, r'GetApointmentTimeResponse', 'data');
  }

  @override
  GetApointmentTimeResponse rebuild(
          void Function(GetApointmentTimeResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetApointmentTimeResponseBuilder toBuilder() =>
      new GetApointmentTimeResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetApointmentTimeResponse &&
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
    return (newBuiltValueToStringHelper(r'GetApointmentTimeResponse')
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

class GetApointmentTimeResponseBuilder
    implements
        Builder<GetApointmentTimeResponse, GetApointmentTimeResponseBuilder> {
  _$GetApointmentTimeResponse? _$v;

  String? _version;
  String? get version => _$this._version;
  set version(String? version) => _$this._version = version;

  String? _request;
  String? get request => _$this._request;
  set request(String? request) => _$this._request = request;

  ParamsGetApointmentTimeResponseBuilder? _params;
  ParamsGetApointmentTimeResponseBuilder get params =>
      _$this._params ??= new ParamsGetApointmentTimeResponseBuilder();
  set params(ParamsGetApointmentTimeResponseBuilder? params) =>
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

  DataGetApointmentTimeResponseBuilder? _data;
  DataGetApointmentTimeResponseBuilder get data =>
      _$this._data ??= new DataGetApointmentTimeResponseBuilder();
  set data(DataGetApointmentTimeResponseBuilder? data) => _$this._data = data;

  GetApointmentTimeResponseBuilder();

  GetApointmentTimeResponseBuilder get _$this {
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
  void replace(GetApointmentTimeResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetApointmentTimeResponse;
  }

  @override
  void update(void Function(GetApointmentTimeResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetApointmentTimeResponse build() => _build();

  _$GetApointmentTimeResponse _build() {
    _$GetApointmentTimeResponse _$result;
    try {
      _$result = _$v ??
          new _$GetApointmentTimeResponse._(
              version: BuiltValueNullFieldError.checkNotNull(
                  version, r'GetApointmentTimeResponse', 'version'),
              request: BuiltValueNullFieldError.checkNotNull(
                  request, r'GetApointmentTimeResponse', 'request'),
              params: params.build(),
              message: BuiltValueNullFieldError.checkNotNull(
                  message, r'GetApointmentTimeResponse', 'message'),
              httpstatut: BuiltValueNullFieldError.checkNotNull(
                  httpstatut, r'GetApointmentTimeResponse', 'httpstatut'),
              error: BuiltValueNullFieldError.checkNotNull(
                  error, r'GetApointmentTimeResponse', 'error'),
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
            r'GetApointmentTimeResponse', _$failedField, e.toString())!;
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$ParamsGetApointmentTimeResponse
    extends ParamsGetApointmentTimeResponse {
  @override
  final String? tokenuser;
  @override
  final String? tokenappointment;
  @override
  final String? week;
  @override
  final String? data;
  @override
  final String? action;
  @override
  final String? session;

  factory _$ParamsGetApointmentTimeResponse(
          [void Function(ParamsGetApointmentTimeResponseBuilder)? updates]) =>
      (new ParamsGetApointmentTimeResponseBuilder()..update(updates))._build();

  _$ParamsGetApointmentTimeResponse._(
      {this.tokenuser,
      this.tokenappointment,
      this.week,
      this.data,
      this.action,
      this.session})
      : super._();

  @override
  ParamsGetApointmentTimeResponse rebuild(
          void Function(ParamsGetApointmentTimeResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ParamsGetApointmentTimeResponseBuilder toBuilder() =>
      new ParamsGetApointmentTimeResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ParamsGetApointmentTimeResponse &&
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
    return (newBuiltValueToStringHelper(r'ParamsGetApointmentTimeResponse')
          ..add('tokenuser', tokenuser)
          ..add('tokenappointment', tokenappointment)
          ..add('week', week)
          ..add('data', data)
          ..add('action', action)
          ..add('session', session))
        .toString();
  }
}

class ParamsGetApointmentTimeResponseBuilder
    implements
        Builder<ParamsGetApointmentTimeResponse,
            ParamsGetApointmentTimeResponseBuilder> {
  _$ParamsGetApointmentTimeResponse? _$v;

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

  ParamsGetApointmentTimeResponseBuilder();

  ParamsGetApointmentTimeResponseBuilder get _$this {
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
  void replace(ParamsGetApointmentTimeResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ParamsGetApointmentTimeResponse;
  }

  @override
  void update(void Function(ParamsGetApointmentTimeResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ParamsGetApointmentTimeResponse build() => _build();

  _$ParamsGetApointmentTimeResponse _build() {
    final _$result = _$v ??
        new _$ParamsGetApointmentTimeResponse._(
            tokenuser: tokenuser,
            tokenappointment: tokenappointment,
            week: week,
            data: data,
            action: action,
            session: session);
    replace(_$result);
    return _$result;
  }
}

class _$DataGetApointmentTimeResponse extends DataGetApointmentTimeResponse {
  @override
  final String? session;
  @override
  final Navigation? navigation;
  @override
  final String? headermessage;
  @override
  final String type;
  @override
  final BuiltList<DataTimeRdv>? data;

  factory _$DataGetApointmentTimeResponse(
          [void Function(DataGetApointmentTimeResponseBuilder)? updates]) =>
      (new DataGetApointmentTimeResponseBuilder()..update(updates))._build();

  _$DataGetApointmentTimeResponse._(
      {this.session,
      this.navigation,
      this.headermessage,
      required this.type,
      this.data})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        type, r'DataGetApointmentTimeResponse', 'type');
  }

  @override
  DataGetApointmentTimeResponse rebuild(
          void Function(DataGetApointmentTimeResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DataGetApointmentTimeResponseBuilder toBuilder() =>
      new DataGetApointmentTimeResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DataGetApointmentTimeResponse &&
        session == other.session &&
        navigation == other.navigation &&
        headermessage == other.headermessage &&
        type == other.type &&
        data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, session.hashCode);
    _$hash = $jc(_$hash, navigation.hashCode);
    _$hash = $jc(_$hash, headermessage.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DataGetApointmentTimeResponse')
          ..add('session', session)
          ..add('navigation', navigation)
          ..add('headermessage', headermessage)
          ..add('type', type)
          ..add('data', data))
        .toString();
  }
}

class DataGetApointmentTimeResponseBuilder
    implements
        Builder<DataGetApointmentTimeResponse,
            DataGetApointmentTimeResponseBuilder> {
  _$DataGetApointmentTimeResponse? _$v;

  String? _session;
  String? get session => _$this._session;
  set session(String? session) => _$this._session = session;

  NavigationBuilder? _navigation;
  NavigationBuilder get navigation =>
      _$this._navigation ??= new NavigationBuilder();
  set navigation(NavigationBuilder? navigation) =>
      _$this._navigation = navigation;

  String? _headermessage;
  String? get headermessage => _$this._headermessage;
  set headermessage(String? headermessage) =>
      _$this._headermessage = headermessage;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  ListBuilder<DataTimeRdv>? _data;
  ListBuilder<DataTimeRdv> get data =>
      _$this._data ??= new ListBuilder<DataTimeRdv>();
  set data(ListBuilder<DataTimeRdv>? data) => _$this._data = data;

  DataGetApointmentTimeResponseBuilder();

  DataGetApointmentTimeResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _session = $v.session;
      _navigation = $v.navigation?.toBuilder();
      _headermessage = $v.headermessage;
      _type = $v.type;
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DataGetApointmentTimeResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DataGetApointmentTimeResponse;
  }

  @override
  void update(void Function(DataGetApointmentTimeResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DataGetApointmentTimeResponse build() => _build();

  _$DataGetApointmentTimeResponse _build() {
    _$DataGetApointmentTimeResponse _$result;
    try {
      _$result = _$v ??
          new _$DataGetApointmentTimeResponse._(
              session: session,
              navigation: _navigation?.build(),
              headermessage: headermessage,
              type: BuiltValueNullFieldError.checkNotNull(
                  type, r'DataGetApointmentTimeResponse', 'type'),
              data: _data?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'navigation';
        _navigation?.build();

        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DataGetApointmentTimeResponse', _$failedField, e.toString())!;
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$DataTimeRdv extends DataTimeRdv {
  @override
  final String? label;
  @override
  final String? label2;
  @override
  final String? label3;
  @override
  final String? message;
  @override
  final BuiltList<Creneaux>? creneaux;

  factory _$DataTimeRdv([void Function(DataTimeRdvBuilder)? updates]) =>
      (new DataTimeRdvBuilder()..update(updates))._build();

  _$DataTimeRdv._(
      {this.label, this.label2, this.label3, this.message, this.creneaux})
      : super._();

  @override
  DataTimeRdv rebuild(void Function(DataTimeRdvBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DataTimeRdvBuilder toBuilder() => new DataTimeRdvBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DataTimeRdv &&
        label == other.label &&
        label2 == other.label2 &&
        label3 == other.label3 &&
        message == other.message &&
        creneaux == other.creneaux;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, label.hashCode);
    _$hash = $jc(_$hash, label2.hashCode);
    _$hash = $jc(_$hash, label3.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, creneaux.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DataTimeRdv')
          ..add('label', label)
          ..add('label2', label2)
          ..add('label3', label3)
          ..add('message', message)
          ..add('creneaux', creneaux))
        .toString();
  }
}

class DataTimeRdvBuilder implements Builder<DataTimeRdv, DataTimeRdvBuilder> {
  _$DataTimeRdv? _$v;

  String? _label;
  String? get label => _$this._label;
  set label(String? label) => _$this._label = label;

  String? _label2;
  String? get label2 => _$this._label2;
  set label2(String? label2) => _$this._label2 = label2;

  String? _label3;
  String? get label3 => _$this._label3;
  set label3(String? label3) => _$this._label3 = label3;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  ListBuilder<Creneaux>? _creneaux;
  ListBuilder<Creneaux> get creneaux =>
      _$this._creneaux ??= new ListBuilder<Creneaux>();
  set creneaux(ListBuilder<Creneaux>? creneaux) => _$this._creneaux = creneaux;

  DataTimeRdvBuilder();

  DataTimeRdvBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _label = $v.label;
      _label2 = $v.label2;
      _label3 = $v.label3;
      _message = $v.message;
      _creneaux = $v.creneaux?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DataTimeRdv other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DataTimeRdv;
  }

  @override
  void update(void Function(DataTimeRdvBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DataTimeRdv build() => _build();

  _$DataTimeRdv _build() {
    _$DataTimeRdv _$result;
    try {
      _$result = _$v ??
          new _$DataTimeRdv._(
              label: label,
              label2: label2,
              label3: label3,
              message: message,
              creneaux: _creneaux?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'creneaux';
        _creneaux?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DataTimeRdv', _$failedField, e.toString())!;
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Creneaux extends Creneaux {
  @override
  final String? fromhour;
  @override
  final String? tohour;
  @override
  final String? doctor;
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

  factory _$Creneaux([void Function(CreneauxBuilder)? updates]) =>
      (new CreneauxBuilder()..update(updates))._build();

  _$Creneaux._(
      {this.fromhour,
      this.tohour,
      this.doctor,
      this.onclick,
      this.onclickMessage,
      this.onclickData,
      this.onclickAction,
      this.onclickWeek})
      : super._();

  @override
  Creneaux rebuild(void Function(CreneauxBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreneauxBuilder toBuilder() => new CreneauxBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Creneaux &&
        fromhour == other.fromhour &&
        tohour == other.tohour &&
        doctor == other.doctor &&
        onclick == other.onclick &&
        onclickMessage == other.onclickMessage &&
        onclickData == other.onclickData &&
        onclickAction == other.onclickAction &&
        onclickWeek == other.onclickWeek;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, fromhour.hashCode);
    _$hash = $jc(_$hash, tohour.hashCode);
    _$hash = $jc(_$hash, doctor.hashCode);
    _$hash = $jc(_$hash, onclick.hashCode);
    _$hash = $jc(_$hash, onclickMessage.hashCode);
    _$hash = $jc(_$hash, onclickData.hashCode);
    _$hash = $jc(_$hash, onclickAction.hashCode);
    _$hash = $jc(_$hash, onclickWeek.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Creneaux')
          ..add('fromhour', fromhour)
          ..add('tohour', tohour)
          ..add('doctor', doctor)
          ..add('onclick', onclick)
          ..add('onclickMessage', onclickMessage)
          ..add('onclickData', onclickData)
          ..add('onclickAction', onclickAction)
          ..add('onclickWeek', onclickWeek))
        .toString();
  }
}

class CreneauxBuilder implements Builder<Creneaux, CreneauxBuilder> {
  _$Creneaux? _$v;

  String? _fromhour;
  String? get fromhour => _$this._fromhour;
  set fromhour(String? fromhour) => _$this._fromhour = fromhour;

  String? _tohour;
  String? get tohour => _$this._tohour;
  set tohour(String? tohour) => _$this._tohour = tohour;

  String? _doctor;
  String? get doctor => _$this._doctor;
  set doctor(String? doctor) => _$this._doctor = doctor;

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

  CreneauxBuilder();

  CreneauxBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _fromhour = $v.fromhour;
      _tohour = $v.tohour;
      _doctor = $v.doctor;
      _onclick = $v.onclick;
      _onclickMessage = $v.onclickMessage;
      _onclickData = $v.onclickData;
      _onclickAction = $v.onclickAction;
      _onclickWeek = $v.onclickWeek;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Creneaux other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Creneaux;
  }

  @override
  void update(void Function(CreneauxBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Creneaux build() => _build();

  _$Creneaux _build() {
    final _$result = _$v ??
        new _$Creneaux._(
            fromhour: fromhour,
            tohour: tohour,
            doctor: doctor,
            onclick: onclick,
            onclickMessage: onclickMessage,
            onclickData: onclickData,
            onclickAction: onclickAction,
            onclickWeek: onclickWeek);
    replace(_$result);
    return _$result;
  }
}

class _$Navigation extends Navigation {
  @override
  final Begin? begin;
  @override
  final Prev? prev;
  @override
  final Prevweek? prevweek;
  @override
  final Nextweek? nextweek;

  factory _$Navigation([void Function(NavigationBuilder)? updates]) =>
      (new NavigationBuilder()..update(updates))._build();

  _$Navigation._({required this.begin, this.prev, this.prevweek, this.nextweek})
      : super._();

  @override
  Navigation rebuild(void Function(NavigationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NavigationBuilder toBuilder() => new NavigationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Navigation &&
        begin == other.begin &&
        prev == other.prev &&
        prevweek == other.prevweek &&
        nextweek == other.nextweek;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, begin.hashCode);
    _$hash = $jc(_$hash, prev.hashCode);
    _$hash = $jc(_$hash, prevweek.hashCode);
    _$hash = $jc(_$hash, nextweek.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Navigation')
          ..add('begin', begin)
          ..add('prev', prev)
          ..add('prevweek', prevweek)
          ..add('nextweek', nextweek))
        .toString();
  }
}

class NavigationBuilder implements Builder<Navigation, NavigationBuilder> {
  _$Navigation? _$v;

  BeginBuilder? _begin;
  BeginBuilder get begin => _$this._begin ??= new BeginBuilder();
  set begin(BeginBuilder? begin) => _$this._begin = begin;

  PrevBuilder? _prev;
  PrevBuilder get prev => _$this._prev ??= new PrevBuilder();
  set prev(PrevBuilder? prev) => _$this._prev = prev;

  PrevweekBuilder? _prevweek;
  PrevweekBuilder get prevweek => _$this._prevweek ??= new PrevweekBuilder();
  set prevweek(PrevweekBuilder? prevweek) => _$this._prevweek = prevweek;

  NextweekBuilder? _nextweek;
  NextweekBuilder get nextweek => _$this._nextweek ??= new NextweekBuilder();
  set nextweek(NextweekBuilder? nextweek) => _$this._nextweek = nextweek;

  NavigationBuilder();

  NavigationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _begin = $v.begin?.toBuilder();
      _prev = $v.prev?.toBuilder();
      _prevweek = $v.prevweek?.toBuilder();
      _nextweek = $v.nextweek?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Navigation other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Navigation;
  }

  @override
  void update(void Function(NavigationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Navigation build() => _build();

  _$Navigation _build() {
    _$Navigation _$result;
    try {
      _$result = _$v ??
          new _$Navigation._(
              begin: _begin?.build(),
              prev: _prev?.build(),
              prevweek: _prevweek?.build(),
              nextweek: _nextweek?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'begin';
        _begin?.build();
        _$failedField = 'prev';
        _prev?.build();
        _$failedField = 'prevweek';
        _prevweek?.build();
        _$failedField = 'nextweek';
        _nextweek?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Navigation', _$failedField, e.toString())!;
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Begin extends Begin {
  @override
  final String label;
  @override
  final String onclickAction;
  @override
  final String onclickData;
  @override
  final String onclickWeek;

  factory _$Begin([void Function(BeginBuilder)? updates]) =>
      (new BeginBuilder()..update(updates))._build();

  _$Begin._(
      {required this.label,
      required this.onclickAction,
      required this.onclickData,
      required this.onclickWeek})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(label, r'Begin', 'label');
    BuiltValueNullFieldError.checkNotNull(
        onclickAction, r'Begin', 'onclickAction');
    BuiltValueNullFieldError.checkNotNull(onclickData, r'Begin', 'onclickData');
    BuiltValueNullFieldError.checkNotNull(onclickWeek, r'Begin', 'onclickWeek');
  }

  @override
  Begin rebuild(void Function(BeginBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BeginBuilder toBuilder() => new BeginBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Begin &&
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
    return (newBuiltValueToStringHelper(r'Begin')
          ..add('label', label)
          ..add('onclickAction', onclickAction)
          ..add('onclickData', onclickData)
          ..add('onclickWeek', onclickWeek))
        .toString();
  }
}

class BeginBuilder implements Builder<Begin, BeginBuilder> {
  _$Begin? _$v;

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

  BeginBuilder();

  BeginBuilder get _$this {
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
  void replace(Begin other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Begin;
  }

  @override
  void update(void Function(BeginBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Begin build() => _build();

  _$Begin _build() {
    final _$result = _$v ??
        new _$Begin._(
            label:
                BuiltValueNullFieldError.checkNotNull(label, r'Begin', 'label'),
            onclickAction: BuiltValueNullFieldError.checkNotNull(
                onclickAction, r'Begin', 'onclickAction'),
            onclickData: BuiltValueNullFieldError.checkNotNull(
                onclickData, r'Begin', 'onclickData'),
            onclickWeek: BuiltValueNullFieldError.checkNotNull(
                onclickWeek, r'Begin', 'onclickWeek'));
    replace(_$result);
    return _$result;
  }
}

class _$Prev extends Prev {
  @override
  final String label;
  @override
  final String onclickAction;
  @override
  final String onclickData;
  @override
  final String onclickWeek;

  factory _$Prev([void Function(PrevBuilder)? updates]) =>
      (new PrevBuilder()..update(updates))._build();

  _$Prev._(
      {required this.label,
      required this.onclickAction,
      required this.onclickData,
      required this.onclickWeek})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(label, r'Prev', 'label');
    BuiltValueNullFieldError.checkNotNull(
        onclickAction, r'Prev', 'onclickAction');
    BuiltValueNullFieldError.checkNotNull(onclickData, r'Prev', 'onclickData');
    BuiltValueNullFieldError.checkNotNull(onclickWeek, r'Prev', 'onclickWeek');
  }

  @override
  Prev rebuild(void Function(PrevBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PrevBuilder toBuilder() => new PrevBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Prev &&
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
    return (newBuiltValueToStringHelper(r'Prev')
          ..add('label', label)
          ..add('onclickAction', onclickAction)
          ..add('onclickData', onclickData)
          ..add('onclickWeek', onclickWeek))
        .toString();
  }
}

class PrevBuilder implements Builder<Prev, PrevBuilder> {
  _$Prev? _$v;

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

  PrevBuilder();

  PrevBuilder get _$this {
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
  void replace(Prev other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Prev;
  }

  @override
  void update(void Function(PrevBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Prev build() => _build();

  _$Prev _build() {
    final _$result = _$v ??
        new _$Prev._(
            label:
                BuiltValueNullFieldError.checkNotNull(label, r'Prev', 'label'),
            onclickAction: BuiltValueNullFieldError.checkNotNull(
                onclickAction, r'Prev', 'onclickAction'),
            onclickData: BuiltValueNullFieldError.checkNotNull(
                onclickData, r'Prev', 'onclickData'),
            onclickWeek: BuiltValueNullFieldError.checkNotNull(
                onclickWeek, r'Prev', 'onclickWeek'));
    replace(_$result);
    return _$result;
  }
}

class _$Prevweek extends Prevweek {
  @override
  final String? label;
  @override
  final String? onclickAction;
  @override
  final String? onclickData;
  @override
  final String? onclickWeek;

  factory _$Prevweek([void Function(PrevweekBuilder)? updates]) =>
      (new PrevweekBuilder()..update(updates))._build();

  _$Prevweek._(
      {this.label, this.onclickAction, this.onclickData, this.onclickWeek})
      : super._();

  @override
  Prevweek rebuild(void Function(PrevweekBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PrevweekBuilder toBuilder() => new PrevweekBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Prevweek &&
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
    return (newBuiltValueToStringHelper(r'Prevweek')
          ..add('label', label)
          ..add('onclickAction', onclickAction)
          ..add('onclickData', onclickData)
          ..add('onclickWeek', onclickWeek))
        .toString();
  }
}

class PrevweekBuilder implements Builder<Prevweek, PrevweekBuilder> {
  _$Prevweek? _$v;

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

  PrevweekBuilder();

  PrevweekBuilder get _$this {
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
  void replace(Prevweek other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Prevweek;
  }

  @override
  void update(void Function(PrevweekBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Prevweek build() => _build();

  _$Prevweek _build() {
    final _$result = _$v ??
        new _$Prevweek._(
            label: label,
            onclickAction: onclickAction,
            onclickData: onclickData,
            onclickWeek: onclickWeek);
    replace(_$result);
    return _$result;
  }
}

class _$Nextweek extends Nextweek {
  @override
  final String label;
  @override
  final String onclickAction;
  @override
  final String onclickData;
  @override
  final String onclickWeek;

  factory _$Nextweek([void Function(NextweekBuilder)? updates]) =>
      (new NextweekBuilder()..update(updates))._build();

  _$Nextweek._(
      {required this.label,
      required this.onclickAction,
      required this.onclickData,
      required this.onclickWeek})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(label, r'Nextweek', 'label');
    BuiltValueNullFieldError.checkNotNull(
        onclickAction, r'Nextweek', 'onclickAction');
    BuiltValueNullFieldError.checkNotNull(
        onclickData, r'Nextweek', 'onclickData');
    BuiltValueNullFieldError.checkNotNull(
        onclickWeek, r'Nextweek', 'onclickWeek');
  }

  @override
  Nextweek rebuild(void Function(NextweekBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NextweekBuilder toBuilder() => new NextweekBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Nextweek &&
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
    return (newBuiltValueToStringHelper(r'Nextweek')
          ..add('label', label)
          ..add('onclickAction', onclickAction)
          ..add('onclickData', onclickData)
          ..add('onclickWeek', onclickWeek))
        .toString();
  }
}

class NextweekBuilder implements Builder<Nextweek, NextweekBuilder> {
  _$Nextweek? _$v;

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

  NextweekBuilder();

  NextweekBuilder get _$this {
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
  void replace(Nextweek other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Nextweek;
  }

  @override
  void update(void Function(NextweekBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Nextweek build() => _build();

  _$Nextweek _build() {
    final _$result = _$v ??
        new _$Nextweek._(
            label: BuiltValueNullFieldError.checkNotNull(
                label, r'Nextweek', 'label'),
            onclickAction: BuiltValueNullFieldError.checkNotNull(
                onclickAction, r'Nextweek', 'onclickAction'),
            onclickData: BuiltValueNullFieldError.checkNotNull(
                onclickData, r'Nextweek', 'onclickData'),
            onclickWeek: BuiltValueNullFieldError.checkNotNull(
                onclickWeek, r'Nextweek', 'onclickWeek'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
