
import 'package:GoGoods/utils/constants/colors.dart';
import 'package:flutter/cupertino.dart';

class GShadowStyles {

  static final verticalProductShadow = BoxShadow(
    color: GColors.darkerGrey.withOpacity(0.1),
    blurRadius: 7,
    spreadRadius: 4,
    // offset: const Offset(-4, 4),
  );

  static final horizontalProductShadow = BoxShadow(
    color: GColors.darkerGrey.withOpacity(0.1),
    blurRadius: 4,
    spreadRadius: 4,
    offset: const Offset(-4, 4),
  );

}