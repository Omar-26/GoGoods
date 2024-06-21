import 'package:GoGoods/common/widgets/texts/brand_title_text.dart';
import 'package:GoGoods/utils/constants/enums.dart';
import 'package:GoGoods/utils/constants/sizes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/colors.dart';

class GBrandTitleTextWithIcon extends StatelessWidget {
  const GBrandTitleTextWithIcon({
    super.key,
    required this.title,
    this.textColor,
    this.icon = Iconsax.verify5,
    this.iconColor,
    this.maxLines = 1,
    this.textAlign = TextAlign.center,
    this.brandTextSize = TextSizes.small,
  });

  final String title;
  final IconData icon;
  final Color? textColor, iconColor;
  final int maxLines;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: GBrandTitleText(
            title: title,
            color: textColor,
            maxLines: maxLines,
            textAlign: textAlign,
            brandTextSize: brandTextSize,
          ),
        ),
        const SizedBox(width: GSizes.xs),
        Icon(
          icon,
          color: iconColor?? GColors.primary,
          size: GSizes.iconXs,
        ),
      ],
    );
  }
}
