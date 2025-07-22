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
  static const TextStyle fontSize24=TextStyle(
    color:kDefaultFont,
    fontSize: 24,
    fontFamily: 'Cairo',
    fontWeight: FontWeight.w400,
    height: 1.33,
    
);
static const TextStyle fontSize20_defaultColor=TextStyle(
    color:kDefaultFont,
    fontSize: 20,
    fontFamily: 'Cairo',
    fontWeight: FontWeight.w400,
    height: 1.60,
    
);
static const TextStyle fontSize20_LoginColor=TextStyle(
    color:kLoginColor,
    fontSize: 20,
    fontFamily: 'Cairo',
    fontWeight: FontWeight.w400,
    height: 1.60,
    
);
      static const TextStyle fontSize14_LoginColor=TextStyle(
          color:kLoginColor,
          fontSize: 14,
          fontFamily: 'Cairo',
          fontWeight: FontWeight.w400,
          height: 1.60,
          
      );
}