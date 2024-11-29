import 'package:flutter/material.dart';
import 'package:trainnnig/core/utils/appColors.dart';
import 'package:trainnnig/core/utils/appStrings.dart';

ThemeData appTheme() {
  return ThemeData(
      useMaterial3: true,
      primaryColor: appColors.primaryColor,
      textTheme: const TextTheme(
        bodyMedium: TextStyle(color: Colors.white,
          fontFamily: appStrings.fontFamily,
          fontSize: 20,
          fontWeight: FontWeight.w500
        ),
      ),
      backgroundColor: appColors.hintColor,
      appBarTheme: const AppBarTheme(
        backgroundColor: appColors.primaryColor,
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 25,
          fontFamily: appStrings.fontFamily,
        )
      ),
      fontFamily: appStrings.fontFamily);
}
