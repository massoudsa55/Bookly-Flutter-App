import 'package:bookly_flutter_app/constants.dart';
import 'package:flutter/material.dart';

abstract class Styles {
  // Text styles used throughout the app
  static const TextStyle textStyle18 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );
  // FontWeight.normal is the default, regular text style
  static const TextStyle textStyle20 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.normal,
  );
  static const TextStyle textStyle30 = TextStyle(
    fontSize: 30,
    fontFamily: kFontGTSectraFine,
    fontWeight: FontWeight.normal,
  );
  static const TextStyle textStyle14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
  );
  static const TextStyle textStyle16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );
}
