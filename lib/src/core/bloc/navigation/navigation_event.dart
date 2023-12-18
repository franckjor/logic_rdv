part of 'navigation_bloc.dart';

abstract class NavigationEvent extends Equatable {
  const NavigationEvent();
}

class GoToPreSignInPage extends NavigationEvent {
  final LoginPageArguments arguments;

  GoToPreSignInPage({this.arguments});

  @override
  List<Object> get props => [arguments];

  @override
  String toString() => 'GoToPreSignInPage { '
      'objectKey:  $arguments}';
}

class GoToListOfDoctor extends NavigationEvent {
  final SearchResultPageArguments arguments;

  GoToListOfDoctor({this.arguments});

  @override
  List<Object> get props => [arguments];

  @override
  String toString() => 'GoToListOfDoctor { '
      'objectKey:  $arguments}';
}
