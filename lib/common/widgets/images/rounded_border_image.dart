import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';

class GRoundedBorderImage extends StatelessWidget {
  const GRoundedBorderImage({
    super.key,
    required this.imageUrl,
    this.width,
    this.height,
    this.padding,
    this.border,
    this.isNetworkImage = false,
    this.applyImageBorderRadius = true,
    this.borderRadius = GSizes.md,
    this.backgroundColor,
    this.fit = BoxFit.contain,
    this.onPressed,
  });

  final double? width, height;
  final EdgeInsetsGeometry? padding;
  final String imageUrl;
  final bool isNetworkImage, applyImageBorderRadius;
  final BoxBorder? border;
  final double borderRadius;
  final Color? backgroundColor;
  final BoxFit? fit;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        padding: padding,
        decoration: BoxDecoration(
            border: border,
            color: backgroundColor,
            borderRadius: BorderRadius.circular(borderRadius)),
        child: ClipRRect(
          borderRadius: applyImageBorderRadius
              ? BorderRadius.circular(borderRadius)
              : BorderRadius.zero,
          child: Image(
            fit: fit,
            image: isNetworkImage
                ? NetworkImage(imageUrl)
                : AssetImage(imageUrl) as ImageProvider,
          ),
        ),
      ),
    );
  }
}
