import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/telecons/bloc/telecons.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/telecons/telecons_repository/telecons_repository.dart';

class TeleconsBloc extends Bloc<TeleconsEvent, TeleconsState> {
  final TeleconsRepository repository;

  TeleconsBloc({required this.repository}) : super(TeleconsLoading());

  
  TeleconsState get initialState => TeleconsLoading();

  
  Stream<TeleconsState> mapEventToState(TeleconsEvent event) async* {
    yield TeleconsLoading();
    if (event is GetTeleconsEvent) {
      yield* _mapGetTeleconsToState(event);
    }
  }

  Stream<TeleconsState> _mapGetTeleconsToState(GetTeleconsEvent event) async* {
    try {
      final result =
          await repository.getTelecons(teleconsRequest: event.teleconsRequest);
      yield TeleconsLoadingSuccess(response: result);
    } catch (error) {
      yield TeleconsFailure(error: error.toString());
    }
  }
}
