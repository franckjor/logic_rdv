import 'package:equatable/equatable.dart';
import 'package:logic_rdv_v0/src/core/models/telecons_model/teleconsultationrequest.dart';

abstract class TeleconsEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class GetTeleconsEvent extends TeleconsEvent {
  final TeleconsRequest teleconsRequest;

  GetTeleconsEvent({this.teleconsRequest});

  @override
  List<Object> get props => [teleconsRequest];

  @override
  String toString() => 'GetTeleconsEvent {teleconsRequest: $teleconsRequest}';
}
