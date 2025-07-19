import 'package:flutter/material.dart';

import 'colors.dart';
abstract class AppTextStyle {
  static const TextStyle defaultFontStyle = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.w600,
    height: 1.50,
    color: kDefaultFont
  );
   static const TextStyle subtitleFontStyle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    height: 1.50,
    color: kDarkGrey
  );
  static const TextStyle labelStyle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    height: 1.50,
    color: kLightGrey,
    fontFamily: 'Cairo',
  );
}