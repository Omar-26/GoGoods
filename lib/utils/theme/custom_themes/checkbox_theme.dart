import 'package:GoGoods/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class GCheckBoxTheme {
  GCheckBoxTheme._(); // to prevent from instantiating this class

  // Customizable Light CheckBox Theme
  static CheckboxThemeData lightCheckboxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    checkColor: MaterialStateProperty.resolveWith(
      (states) {
        if (states.contains(MaterialState.selected)) {
          return GColors.white;
        } else {
          return GColors.black;
        }
      },
    ),
    fillColor: MaterialStateProperty.resolveWith(
      (states) {
        if (states.contains(MaterialState.selected)) {
          return GColors.primary;
        } else {
          return Colors.transparent;
        }
      },
    ),
  );

  // Customizable Dark CheckBox Theme
  static CheckboxThemeData darkCheckboxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    checkColor: MaterialStateProperty.resolveWith(
      (states) {
        if (states.contains(MaterialState.selected)) {
          return Colors.white;
        } else {
          return Colors.black;
        }
      },
    ),
    fillColor: MaterialStateProperty.resolveWith(
      (states) {
        if (states.contains(MaterialState.selected)) {
          return GColors.buttonPrimary;
        } else {
          return Colors.transparent;
        }
      },
    ),
  );
}
