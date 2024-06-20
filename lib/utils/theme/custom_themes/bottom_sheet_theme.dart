import 'package:GoGoods/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class GBottomSheetTheme {
  GBottomSheetTheme._(); // to prevent from instantiating this class

  // Customizable Light Bottom Sheet Theme
  static BottomSheetThemeData lightBottomSheetTheme = BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: GColors.white,
    modalBackgroundColor: GColors.white,
    constraints: const BoxConstraints(minWidth: double.infinity),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
  );

  // Customizable Dark Bottom Sheet Theme
  static BottomSheetThemeData darkBottomSheetTheme = BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: GColors.black,
    modalBackgroundColor: GColors.black,
    constraints: const BoxConstraints(minWidth: double.infinity),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
  );
}