import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/version/bloc/version.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/version/repository/version_repository.dart';

class VersionBloc extends Bloc<VersionEvent, VersionState> {
  final VersionRepository repository;

  VersionBloc({required this.repository}) : super(VersionLoading());

  Stream<VersionState> mapEventToState(VersionEvent event) async* {
    yield VersionLoading();
    if (event is VersionRequestEvent) {
      yield* _mapGetVersionToState(event);
    }
  }

  Stream<VersionState> _mapGetVersionToState(
      VersionRequestEvent event) async* {
    try {
      final version = await repository.getVersion();
      yield VersionLoadingSuccess(response: version);
    } catch (error) {
      yield VersionFailure(error: error.toString());
    }
  }
}
