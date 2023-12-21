import 'package:logic_rdv_v0/src/common.dart';
import 'package:logic_rdv_v0/src/ui/themes/colors.dart';

class AppThemes {
  static get lightTheme => ThemeData(
        primaryColor: AppColors.primaryColor,
        scaffoldBackgroundColor: AppColors.scaffoldBackgroundColor,
        fontFamily: 'SF-Pro-Text',

        appBarTheme: AppBarTheme(
          elevation: 0,
          backgroundColor: AppColors.primaryColor,
          //brightness: Brightness.dark,
        ),
       // accentColor: AppColors.primaryColor,
        primaryTextTheme: TextTheme(
          headline6: TextStyle(
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
