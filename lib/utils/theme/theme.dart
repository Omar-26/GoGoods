import 'package:GoGoods/utils/constants/colors.dart';
import 'package:GoGoods/utils/theme/custom_themes/app_bar_theme.dart';
import 'package:GoGoods/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:GoGoods/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:GoGoods/utils/theme/custom_themes/chip_theme.dart';
import 'package:GoGoods/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:GoGoods/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:GoGoods/utils/theme/custom_themes/text_field_theme.dart';
import 'package:GoGoods/utils/theme/custom_themes/text_theme.dart';
import 'package:flutter/material.dart';

class GAppTheme {
  GAppTheme._(); // to prevent from instantiating this class

  // Customizable light theme
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: GColors.primary,
    scaffoldBackgroundColor: GColors.white,
    textTheme: GTextTheme.lightTextTheme,
    chipTheme: GChipTheme.lightChipTheme,
    appBarTheme: GAppBarTheme.lightAppBarTheme,
    checkboxTheme: GCheckBoxTheme.lightCheckboxTheme,
    bottomSheetTheme: GBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: GElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: GOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: GTextFieldFormTheme.lightInputDecorationTheme,
  );

  // Customizable dark theme
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: GColors.primary,
    scaffoldBackgroundColor: GColors.black,
    textTheme: GTextTheme.darkTextTheme,
    chipTheme: GChipTheme.darkChipTheme,
    appBarTheme: GAppBarTheme.darkAppBarTheme,
    checkboxTheme: GCheckBoxTheme.darkCheckboxTheme,
    bottomSheetTheme: GBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: GElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: GOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: GTextFieldFormTheme.darkInputDecorationTheme,
  );
}
