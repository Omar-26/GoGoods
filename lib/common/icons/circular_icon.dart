import 'package:GoGoods/utils/constants/colors.dart';
import 'package:GoGoods/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class GCircularIcon extends StatelessWidget {
  const GCircularIcon({
    super.key,
    this.width,
    this.height,
    this.iconSize,
    required this.icon,
    this.iconColor,
    this.backgroundColor,
    this.onPressed,
  });

  final double? width, height, iconSize;
  final IconData? icon;
  final Color? iconColor, backgroundColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final dark = GHelperFunctions.isDarkMode(context);
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: backgroundColor != null
            ? backgroundColor!
            : dark
                ? GColors.black.withOpacity(0.9)
                : GColors.white.withOpacity(0.9),
        borderRadius: BorderRadius.circular(100),
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(
          icon,
          color: iconColor != null
              ? iconColor!
              : dark
                  ? GColors.white
                  : GColors.black,
          size: iconSize,
        ),
      ),
    );
  }
}
