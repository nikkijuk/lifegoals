import 'package:flutter/material.dart';
import 'package:lifegoals/constants/border_constants.dart';
import 'package:lifegoals/constants/color_constants.dart';

ThemeData get lightTheme {
  return ThemeData(
    primaryColor: ColorConstants.primaryColor,
    primarySwatch: Colors.blue,
    scaffoldBackgroundColor: ColorConstants.backgroundColorLight,
    iconTheme: IconThemeData(
      color: ColorConstants.lightFontColor,
    ),
    textTheme: const TextTheme().apply(
      displayColor: ColorConstants.lightFontColor,
      bodyColor: ColorConstants.lightFontColor,
      decorationColor: ColorConstants.lightFontColor,
    ),
    cardTheme: CardTheme(
      color: ColorConstants.cardColor,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          BorderConstants.borderRadius,
        ),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(
          ColorConstants.primaryColor,
        ),
        elevation: MaterialStateProperty.all<double>(0),
        shape: MaterialStateProperty.all<OutlinedBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              BorderConstants.buttonRadius,
            ),
          ),
        ),
      ),
    ),
  );
}
