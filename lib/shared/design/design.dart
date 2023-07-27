import 'package:flutter/material.dart';

class AppStyles {
  static Color? primaryColor = const Color(0xFFD72F51);
  static Color? secondaryColor = const Color(0xFF0E0421);
  static Color? bgYellowColor = const Color(0xFFF4B84A);
  static Color? bgYellowDark100Color = const Color(0xFFF2A93B);
  static Color? bgBlueAccentColor = const Color(0xFFADDEED);
  static Color? bgGrayLighterColor = const Color(0xFFCBD4FA);
  static Color? bgGrayLightColor = const Color(0xFFAAB4DC);
  static Color? colorLineInput = const Color(0xFFDBDADD);
  static Color? colorPlaceholder = const Color(0xFF6F6978);
  static Color? colorPlaceholderDark = const Color(0xFF4A4357);
  static Color? bgWhiteAccentColor = const Color(0xFFF3F2F4);
  static Color? textColorParagraph = const Color(0xFF0E0520);

  static TextStyle heading1 = TextStyle(
    fontSize: 20.0,
    fontWeight: FontWeight.bold,
    color: AppStyles.secondaryColor,
  );

  static TextStyle heading2 = TextStyle(
    fontSize: 15.0,
    fontWeight: FontWeight.normal,
    color: AppStyles.textColorParagraph,
  );

  static TextStyle bodyTextBoldBlack = TextStyle(
    fontSize: 12.0,
    fontWeight: FontWeight.bold,
    color: AppStyles.textColorParagraph,
  );

  static TextStyle bodyTextBoldWhite = const TextStyle(
    fontSize: 12.0,
    fontWeight: FontWeight.bold,
    color: Color(0xFFFFFFFF),
  );

  static TextStyle textBottonNavigationBar = TextStyle(
      color: AppStyles.colorPlaceholder,
      fontSize: 12.00,
      fontWeight: FontWeight.normal);

  static TextStyle textBottonNavigationBarActive = TextStyle(
      color: AppStyles.colorPlaceholderDark,
      fontSize: 12.00,
      fontWeight: FontWeight.bold);

  static TextStyle textCardTryAgain = TextStyle(
      color: AppStyles.colorPlaceholderDark,
      fontSize: 12.00,
      fontWeight: FontWeight.normal);

  static List<BoxShadow>? boxShadowBottomNavigatorBar = const [
    BoxShadow(
      color: Color.fromRGBO(0, 0, 0, 0.1),
      spreadRadius: 0,
      blurRadius: 16.0,
      offset: Offset(0, 0),
    ),
  ];
}
