import 'package:GoGoods/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class GElevatedButtonTheme {
  GElevatedButtonTheme._(); // to prevent from instantiating this class

  // Customizable Light Elevated Button Theme
  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: GColors.white, // foreground color does not apply to text inside button
      backgroundColor:GColors.primary,
      disabledForegroundColor: GColors.grey,
      disabledBackgroundColor: GColors.grey,
      side: const BorderSide(color: GColors.buttonPrimary),
      padding: const EdgeInsets.symmetric(vertical: 18.0),
      textStyle: const TextStyle(fontSize: 16.0, color: GColors.white, fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
    ),
  );

  // Customizable Dark Elevated Button Theme
  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: GColors.white, // foreground color does not apply to text inside button
      backgroundColor:GColors.primary,
      disabledForegroundColor: GColors.grey,
      disabledBackgroundColor: GColors.grey,
      side: const BorderSide(color: GColors.buttonPrimary),
      padding: const EdgeInsets.symmetric(vertical: 18.0),
      textStyle: const TextStyle(fontSize: 16.0, color: GColors.white, fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
    ),
  );
}