import 'package:flutter/material.dart';
import 'package:logic_rdv_v0/src/ui/themes/colors.dart';
import 'package:logic_rdv_v0/src/ui/themes/sizes.dart';

class AppTextStyles {
  AppTextStyles._();

  static const Color primaryColor = AppColors.primaryColor;
  static const Color whiteColor = AppColors.whiteColor;

  static const appoitmentTitleStyle = TextStyle(
    color: Color(0xFFe3e2e3),
    fontWeight: FontWeight.w500,
    fontSize: 14,
  );

  static const appoitmentInfoStyle = TextStyle(
    fontWeight: FontWeight.bold,
    color: Color(0xFF304170),
    fontSize: 12.5,
  );

  static const TextStyle contentSmallStyle2 = TextStyle(
    fontFamily: 'SourceSansProRegular',
    fontSize: fontSizeXS,
    color: AppColors.whiteColor,
  );

  static const TextStyle contentLargeStyle = TextStyle(
    fontFamily: 'SourceSansProRegular',
    fontSize: fontSizeL,
    color: whiteColor,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle display1Style = TextStyle(
    fontFamily: 'OpenSans',
    fontSize: fontSizeS,
    color: primaryColor,
  );

  static const TextStyle chartTitleSyle = TextStyle(
    fontFamily: 'OpenSans',
    fontSize: fontSizeS,
    color: primaryColor,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle displayStyleDrawer = TextStyle(
    fontFamily: 'OpenSans',
    fontSize: fontSizeXS,
    color: primaryColor,
  );

  static const TextStyle display21Style = TextStyle(
      fontFamily: 'OpenSans',
      fontSize: fontSizeML,
      color: primaryColor,
      fontWeight: FontWeight.bold);

  static const TextStyle displayStyleOfBottomNavigationUnSelected = TextStyle(
      fontFamily: 'OpenSans',
      fontSize: fontSizeXS,
      color: Colors.grey,
      fontWeight: FontWeight.bold);

  static const TextStyle forgotPasswordLinkStyle = TextStyle(
    fontFamily: 'OpenSans',
    fontSize: fontSizeXS,
    decoration: TextDecoration.underline,
    color: primaryColor,
  );

  static const TextStyle display3Style = TextStyle(
    fontFamily: 'OpenSans',
    fontSize: fontSizeL,
    color: primaryColor,
  );
  static const TextStyle initialStyle = TextStyle(
      fontFamily: 'OpenSans',
      fontSize: fontSizeXS,
      fontWeight: FontWeight.bold);

  static const TextStyle titleStyle = TextStyle(
    fontFamily: 'OpenSans',
    fontSize: fontSizeM,
    color: primaryColor,
  );

  static const TextStyle textFormFieldTextVerificationStyle = TextStyle(
      fontFamily: 'OpenSans',
      fontSize: fontSizeS,
      color: primaryColor,
      fontWeight: FontWeight.w500);

  static const TextStyle textFormFieldHintTextStyle = TextStyle(
    fontFamily: 'OpenSans',
    fontSize: fontSizeXS,
    color: Color(0x7AC77314),
  );

  static const TextStyle HintTextStyleVerification = TextStyle(
      fontFamily: 'OpenSans',
      fontSize: fontSizeS,
      color: primaryColor,
      fontWeight: FontWeight.bold);

  static const TextTheme txtTheme = TextTheme(
    subtitle1: contentLargeStyle,
    button: TextStyle(
      color: whiteColor,
    ),
  );

  static const TextStyle styleCoupon = TextStyle(
    fontFamily: 'OpenSans',
    fontSize: fontSizeS,
    color: Colors.white,
  );

  static const TextStyle labelProfileTextStyle = TextStyle(
    fontFamily: 'OpenSans',
    fontSize: fontSizeXS,
    color: Colors.grey,
  );

  ///
  static TextStyle headerTitleStyle = TextStyle(
    fontSize: 22,
    color: Colors.white,
    fontWeight: FontWeight.bold,
  );

  static const AppBarTheme appBarTheme = AppBarTheme(
    iconTheme: IconThemeData(color: whiteColor),
    textTheme: TextTheme(headline6: display21Style),
  );

  /// Font family for the button label
  static const String buttonFontFamily = 'OpenSans';

  /// Font family for the button label
  static const FontWeight buttonTextFontWeight = FontWeight.w400;
}
