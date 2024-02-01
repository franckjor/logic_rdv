import 'package:equatable/equatable.dart';
import 'package:logic_rdv_v0/src/core/models/app_version/app_version_summary.dart';

class VersionState extends Equatable {
  @override
  List<Object> get props => [];
}

class VersionEmpty extends VersionState {}

class VersionLoading extends VersionState {}

class VersionLoadingSuccess extends VersionState {
  final AppVersionSummary response;
  VersionLoadingSuccess({required this.response});

  @override
  List<Object> get props => [response];

  @override
  String toString() => 'VersionLoadingSuccess {response: $response}';
}

class VersionFailure extends VersionState {
  final String error;

  VersionFailure({required this.error});

  @override
  List<Object> get props => [error];

  @override
  String toString() => 'VersionFailure { error: $error }';
}
