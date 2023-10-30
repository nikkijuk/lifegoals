import 'package:flutter/material.dart';
import 'package:lifegoals/constants/border_constants.dart';
import 'package:lifegoals/constants/color_constants.dart';

ThemeData get lightTheme {
  return ThemeData(
    primarySwatch: Colors.blue,
    textTheme: const TextTheme().apply(
      bodyColor: ColorConstants.lightFontColor,
      displayColor: ColorConstants.lightFontColor,
      decorationColor: ColorConstants.lightFontColor,
    ),
    scaffoldBackgroundColor: ColorConstants.backgroundColorLight,
    primaryColor: ColorConstants.primaryColor,
    iconTheme: IconThemeData(
      color: ColorConstants.lightFontColor,
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
    cardTheme: CardTheme(
      elevation: 0,
      color: ColorConstants.cardColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          BorderConstants.borderRadius,
        ),
      ),
    ),
  );
}
