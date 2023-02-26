import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_with_bloc/theme/colors.dart';

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: whiteColor,
    fontFamily: 'Avenir',
    textTheme: textTheme(),
  );
}

TextTheme textTheme() {
  return const TextTheme(
    headline1: TextStyle(
      color: whiteColor,
      fontSize: 32,
      fontFamily: 'Avenir',
      fontWeight: FontWeight.bold,
    ),
    headline2: TextStyle(
      color: blackColor,
      fontSize: 24,
      fontWeight: FontWeight.bold,
    ),
    headline3: TextStyle(
      color: blackColor,
      fontSize: 18,
      fontWeight: FontWeight.bold,
    ),
    headline4: TextStyle(
      color: blackColor,
      fontSize: 16,
      fontWeight: FontWeight.bold,
    ),
    headline5: TextStyle(
      color: blackColor,
      fontSize: 17,
      fontWeight: FontWeight.bold,
    ),
    headline6: TextStyle(
      color: blackColor,
      fontSize: 14,
      fontWeight: FontWeight.normal,
    ),
    bodyText1: TextStyle(
      color: blackColor,
      fontSize: 13,
      fontWeight: FontWeight.bold,
    ),
    bodyText2: TextStyle(
      color: blackColor,
      fontSize: 18,
      fontWeight: FontWeight.normal,
    ),
  );
}
