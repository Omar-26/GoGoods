import 'package:GoGoods/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';

class GCircularBorderImage extends StatelessWidget {
  const GCircularBorderImage({
    super.key,
    required this.imageUrl,
    this.width = 56,
    this.height = 56,
    this.overlayColor,
    this.backgroundColor,
    this.fit = BoxFit.cover,
    this.padding,
    this.isNetworkImage = false,
    this.border,
    this.borderRadius = GSizes.md,
    this.applyImageBorderRadius = true,
    this.onPressed,
    this.applyImageColor = true,
  });

  final double width, height;
  final Color? overlayColor, backgroundColor;
  final EdgeInsetsGeometry? padding;
  final String imageUrl;
  final bool isNetworkImage, applyImageBorderRadius, applyImageColor;
  final BoxBorder? border;
  final double borderRadius;
  final BoxFit? fit;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final dark = GHelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        padding: padding,
        decoration: BoxDecoration(
            border: border,
            color: backgroundColor ?? (dark ? GColors.black : GColors.white),
            borderRadius: BorderRadius.circular(borderRadius)),
        child: ClipRRect(
          borderRadius: applyImageBorderRadius
              ? BorderRadius.circular(borderRadius)
              : BorderRadius.zero,
          child: Image(
            fit: fit,
            color:
                applyImageColor ? (dark ? GColors.white : GColors.black) : null,
            image: isNetworkImage
                ? NetworkImage(imageUrl)
                : AssetImage(imageUrl) as ImageProvider,
          ),
        ),
      ),
    );
  }
}
