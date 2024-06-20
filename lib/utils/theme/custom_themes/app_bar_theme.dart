import 'package:GoGoods/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class GAppBarTheme {
  GAppBarTheme._(); // to prevent from instantiating this class

  // Customizable Light App Bar Theme
  static const lightAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: GColors.black, size: 24),
    actionsIconTheme: IconThemeData(color: GColors.black, size: 24),
    titleTextStyle: TextStyle(
        fontSize: 18.0, fontWeight: FontWeight.w600, color: GColors.black),
  );

  // Customizable Dark App Bar Theme
  static const darkAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: GColors.black, size: 24),
    actionsIconTheme: IconThemeData(color: GColors.white, size: 24),
    titleTextStyle: TextStyle(
        fontSize: 18.0, fontWeight: FontWeight.w600, color: GColors.white),
  );
}
