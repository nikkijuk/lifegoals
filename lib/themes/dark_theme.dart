import 'package:flutter/material.dart';

import 'package:lifegoals/constants/border_constants.dart';
import 'package:lifegoals/constants/color_constants.dart';

ThemeData get darkTheme {
  return ThemeData.dark().copyWith(
    primaryColor: ColorConstants.primaryColor,
    scaffoldBackgroundColor: ColorConstants.backgroundColorDark,
    iconTheme: const IconThemeData(
      color: Colors.white,
    ),
    textTheme: const TextTheme().apply(),
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
