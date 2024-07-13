import 'package:flutter/material.dart';
import '../constants/colors.dart';
import 'customs/appbar_theme.dart';
import 'customs/checkbox_theme.dart';
import 'customs/elevated_button_theme.dart';
import 'customs/text_theme.dart';
import 'customs/text_field_theme.dart';

class TaiyoTheme {
  TaiyoTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: TaiyoColors.white,
    textTheme: TTaiyoTheme.lightTextTheme,
    appBarTheme: TaiyoAppBarTheme.lightAppBarTheme,
    checkboxTheme: TaiyoCheckboxTheme.lightCheckboxTheme,
    elevatedButtonTheme: TaiyoElevatedButtonTheme.lightElevatedButtonTheme,
    inputDecorationTheme: TaiyoTextFormFieldTheme.lightInputDecorationTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    primaryColor: Colors.blue,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: TaiyoColors.dark,
    textTheme: TTaiyoTheme.darkTextTheme,
    appBarTheme: TaiyoAppBarTheme.darkAppBarTheme,
    checkboxTheme: TaiyoCheckboxTheme.darkCheckboxTheme,
    elevatedButtonTheme: TaiyoElevatedButtonTheme.darkElevatedButtonTheme,
    inputDecorationTheme: TaiyoTextFormFieldTheme.darkInputDecorationTheme,
  );
}
