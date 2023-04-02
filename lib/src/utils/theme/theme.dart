import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mehahackuser/src/utils/theme/widgetthemes/texttheme.dart';

class AppTheme {

  AppTheme._();

  static ThemeData lightTheme = ThemeData(brightness: Brightness.light,
    textTheme:ATextTheme.lightThemeText,
    primarySwatch: MaterialColor(0xFF29AB87,<int, Color>{
    50: Color(0xFF89B3A5),
    100: Color(0xFF67A68B),
    200: Color(0xFF58A887),
    300: Color(0xFF3CEFBA),
    400: Color(0xFF33CCA3),
    500: Color(0xFF30C29A),
    600: Color(0xFF66A997),
    700: Color(0xFF228C6F),
    800: Color(0xFF29AB87),
    900: Color(0xFF228F71),
  }),
  );
  static ThemeData darkTheme = ThemeData(brightness: Brightness.dark,
      textTheme:ATextTheme.darkThemeText,
  primarySwatch: MaterialColor(0xFF29AB87,<int, Color>{
    50: Color(0xFF89B3A5),
    100: Color(0xFF67A68B),
    200: Color(0xFF58A887),
    300: Color(0xFF3CEFBA),
    400: Color(0xFF33CCA3),
    500: Color(0xFF30C29A),
    600: Color(0xFF66A997),
    700: Color(0xFF228C6F),
    800: Color(0xFF29AB87),
    900: Color(0xFF228F71),
  }
  ),
  );
}