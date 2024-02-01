import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:logic_rdv_v0/src/ui/screens/login_screen.dart';
import 'package:logic_rdv_v0/src/ui/screens/search_doctor_result_screens/search_result_screen.dart';

part 'navigation_event.dart';
part 'navigation_state.dart';

class NavigationBloc extends Bloc<NavigationEvent, NavigationState> {
  NavigationBloc() : super(NavigationEmpty());

  NavigationState get initialState => NavigationEmpty();

  
  Stream<NavigationState> mapEventToState(
    NavigationEvent event,
  ) async* {
    yield NavigationEmpty();
    if (event is GoToPreSignInPage) {
      yield* _mapGoToAPageToState(event.arguments);
    } else if (event is GoToListOfDoctor) {
      yield* _mapGoToAPageToState(event.arguments);
    }
  }

  Stream<NavigationState> _mapGoToAPageToState<T extends PagesArgumentType>(
      T arguments) async* {
    yield NavigationWasAsked(arguments);
  }
}
