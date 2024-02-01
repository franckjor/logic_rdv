import 'package:logic_rdv_v0/src/common.dart';

class AppThemes {
  static get lightTheme => ThemeData(
        primaryColor: AppColors.primaryColor,
        scaffoldBackgroundColor: AppColors.scaffoldBackgroundColor,
        fontFamily: 'SF-Pro-Text',
        brightness: Brightness.dark,

        appBarTheme: AppBarTheme(
          elevation: 0,
          backgroundColor: AppColors.primaryColor,
        ),
        // accentColor: AppColors.primaryColor,
        textTheme: TextTheme(
          titleLarge: TextStyle(
              fontFamily: 'OpenSans',
              fontSize: 20.0,
              color: AppColors.primaryColor,
              fontWeight: FontWeight.bold),
        ),
        primaryTextTheme: TextTheme(
          titleLarge: TextStyle(
            color: AppColors.whiteColor,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        // cursorColor: AppColors.secondaryColor,
        buttonTheme: ButtonThemeData(
          height: 46,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          buttonColor: AppColors.buttonColor,
        ),
      );
}
