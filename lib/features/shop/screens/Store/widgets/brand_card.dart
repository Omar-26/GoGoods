import 'package:GoGoods/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:GoGoods/common/widgets/images/circular_border_image.dart';
import 'package:GoGoods/common/widgets/texts/brand_title_text_with_icon.dart';
import 'package:GoGoods/utils/constants/colors.dart';
import 'package:GoGoods/utils/constants/enums.dart';
import 'package:GoGoods/utils/constants/sizes.dart';
import 'package:GoGoods/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class GBrandCard extends StatelessWidget {
  const GBrandCard({
    super.key,
    required this.imageUrl,
    required this.brandTitle,
    required this.brandSubtitle,
    this.photoFit = BoxFit.contain,
    this.showBorder = true,
    this.borderColor,
    this.backgroundColor,
    this.onTap,
  });

  final String imageUrl, brandTitle, brandSubtitle;
  final BoxFit? photoFit;
  final bool showBorder;
  final Color? borderColor, backgroundColor;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = GHelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: () {},
      child: GCircularContainer(
        showBorder: showBorder,
        borderColor: borderColor?? (dark ? GColors.darkerGrey : GColors.grey),
        backgroundColor: backgroundColor ?? Colors.transparent,
        padding: const EdgeInsets.all(GSizes.sm),
        child: Row(
          children: [
            // Brand Icon
            Flexible(
              child: GCircularBorderImage(
                imageUrl: imageUrl,
                padding: const EdgeInsets.all(GSizes.sm),
                fit: photoFit,
              ),
            ),
            const SizedBox(width: GSizes.spaceBtwItems / 4),

            // Brand Name
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  GBrandTitleTextWithIcon(
                    title: brandTitle,
                    brandTextSize: TextSizes.large,
                  ),
                  const SizedBox(height: GSizes.spaceBtwItems / 8),
                  Text(brandSubtitle,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.labelMedium)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
