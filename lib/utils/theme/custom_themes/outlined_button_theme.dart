import 'package:GoGoods/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class GOutlinedButtonTheme {
  GOutlinedButtonTheme._(); // to prevent from instantiating this class

  // Customizable light outlined button theme
  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        elevation: 0,
        foregroundColor: GColors.black,
        side: const BorderSide(color: GColors.buttonPrimary),
        textStyle: const TextStyle(fontSize: 16, color: GColors.black, fontWeight: FontWeight.w600),
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
      ),);

  // Customizable dark outlined button theme
  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
  style: OutlinedButton.styleFrom(
  foregroundColor: GColors.white,
  side: const BorderSide(color: GColors.white),
  textStyle: const TextStyle(fontSize: 16, color: GColors.white, fontWeight: FontWeight.w600),
  padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
  ),);
}


