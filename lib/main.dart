import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:logic_rdv_v0/src/common.dart';
import 'package:logic_rdv_v0/src/core/api_services/service/blocs/simple_bloc_delegate.dart';
import 'package:logic_rdv_v0/src/core/bloc/bloc_of_shapreference/shared_preference.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/generate_and_check_token/bloc/generate_and_check_token_bloc.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/generate_and_check_token/repository/generate_and_check_token.dart';
import 'package:logic_rdv_v0/src/ui/themes/themes.dart';
import 'package:wonderpush_flutter/wonderpush_flutter.dart';

bool get isInDebugMode {
  bool inDebugMode = true;
  assert(inDebugMode = true);
  return inDebugMode;
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = SimpleBlocDelegate();
  // await initializeDateFormatting();
  runZonedGuarded(() async {
    runApp(
      const MyApp(),
    );
     // Add this line to trigger a push notifications prompt on iOS and subscribe users on Android.
  WonderPush.subscribeToNotifications();
  }, (error, stackTrace) async {
    print('Caught Errors');
    if (isInDebugMode) {
      // Print error in the console in the development mode
      print('$error');
      print('$stackTrace');
    } else {}
  });
}

class MyApp extends StatelessWidget {
  const MyApp();
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<GenerateAndCheckTokenBloc>(
          create: (context) {
            return GenerateAndCheckTokenBloc(
              repository: GenerateAndCheckTokenRepository(),
            );
          },
        ),
        BlocProvider<SharedPreferenceBloc>(
          create: (context) {
            return SharedPreferenceBloc();
          },
        )
      ],
      child: MaterialApp(
        theme: AppThemes.lightTheme,
        title: 'LogicRdv',
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
        ],
        supportedLocales: [
          const Locale('en'),
          const Locale('fr'),
        ],
        onGenerateTitle: (_) => 'LogicRdv',
        debugShowCheckedModeBanner: false,
        navigatorKey: RouteGenerator.key,
        initialRoute: RouteGenerator.splashScreen,
        onGenerateRoute: RouteGenerator.generateRoute,
      ),
    );
  }
}
