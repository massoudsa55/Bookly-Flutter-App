import 'package:flutter/material.dart';

abstract class Styles {
  // Font family for the app
  static const String fontFamily = 'GT Sectra Fine Regular';
  static const TextStyle titleMudium18 = TextStyle(
    fontSize: 18,
    fontFamily: fontFamily,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle titleBold20 = TextStyle(
    fontSize: 20,
    fontFamily: fontFamily,
    fontWeight: FontWeight.w700,
  );
  static const TextStyle subtitleRegular14 = TextStyle(
    fontSize: 14,
    fontFamily: fontFamily,
    fontWeight: FontWeight.w400,
  );
  static const TextStyle subtitleRegular16 = TextStyle(
    fontSize: 16,
    fontFamily: fontFamily,
    fontWeight: FontWeight.w400,
  );
}
