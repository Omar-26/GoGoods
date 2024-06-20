import 'package:GoGoods/utils/constants/colors.dart';
import 'package:GoGoods/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class GCircularContainer extends StatelessWidget {
  const GCircularContainer({
    super.key,
    this.child,
    this.width,
    this.height,
    this.margin,
    this.padding,
    this.radius = GSizes.cardRadiusLg,
    this.backgroundColor,
    this.showBorder = false,
    this.borderColor = GColors.borderPrimary,
  });

  final double? width, height, radius;
  final EdgeInsets? margin, padding;
  final Widget? child;
  final Color? backgroundColor, borderColor;
  final bool showBorder;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(radius!),
        border: showBorder ? Border.all(color: borderColor!) : null,
      ),
      child: child,
    );
  }
}
