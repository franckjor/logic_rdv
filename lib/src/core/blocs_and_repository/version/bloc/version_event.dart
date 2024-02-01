import 'package:equatable/equatable.dart';

abstract class VersionEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class VersionRequestEvent extends VersionEvent {

  VersionRequestEvent();

  @override
  List<Object> get props => [];

  @override
  String toString() =>
      'VersionRequestEvent {addDoctorRequest:}';
}


