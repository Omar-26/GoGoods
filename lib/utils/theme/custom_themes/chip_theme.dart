import 'package:GoGoods/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class GChipTheme {
  GChipTheme._(); // to prevent from instantiating this class

  // Customizable Light Chip Theme
  static ChipThemeData lightChipTheme = ChipThemeData(
    disabledColor: GColors.grey.withOpacity(0.4),
    labelStyle: const TextStyle(color: GColors.black),
    selectedColor: GColors.primary,
    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    checkmarkColor: GColors.white,
  );

  // Customizable Dark Chip Theme
  static ChipThemeData darkChipTheme = const ChipThemeData(
    disabledColor: GColors.grey,
    labelStyle: TextStyle(color: GColors.white),
    selectedColor: GColors.primary,
    padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    checkmarkColor: GColors.white,
  );
}
