import 'package:GoGoods/common/icons/circular_icon.dart';
import 'package:GoGoods/common/styles/shadows.dart';
import 'package:GoGoods/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:GoGoods/common/widgets/images/rounded_border_image.dart';
import 'package:GoGoods/common/widgets/texts/brand_title_text_with_icon.dart';
import 'package:GoGoods/common/widgets/texts/product_price_text.dart';
import 'package:GoGoods/common/widgets/texts/product_title_text.dart';
import 'package:GoGoods/utils/constants/colors.dart';
import 'package:GoGoods/utils/constants/image_strings.dart';
import 'package:GoGoods/utils/constants/sizes.dart';
import 'package:GoGoods/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class GVerticalProductCard extends StatelessWidget {
  const GVerticalProductCard({super.key, this.onTap});

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = GHelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 180,
        padding: const EdgeInsets.only(top: 3),
        // padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [GShadowStyles.verticalProductShadow],
          borderRadius: BorderRadius.circular(GSizes.cardRadiusLg),
          color: dark ? Colors.black12.withOpacity(0.2) : GColors.white,
        ),
        child: Column(
          children: [
            /// --Thumbnail, WishList Button and Discount Badge
            GCircularContainer(
              height: 160,
              width: 160,
              radius: GSizes.cardRadiusLg,
              padding: const EdgeInsets.all(GSizes.sm),
              backgroundColor: dark ? GColors.dark : GColors.white,
              showBorder: false,
              child: Stack(
                children: [
                  // Product Thumbnail
                  GRoundedBorderImage(
                    imageUrl: GImages.productImage1,
                    backgroundColor: dark ? GColors.dark : GColors.white,
                  ),

                  // Discount Badge
                  Positioned(
                    top: 6,
                    left: 3,
                    child: GCircularContainer(
                      radius: GSizes.sm,
                      backgroundColor: GColors.primary,
                      padding: const EdgeInsets.symmetric(
                          vertical: GSizes.xs, horizontal: GSizes.sm),
                      child: Text(
                        '25%',
                        style: Theme.of(context).textTheme.labelLarge!.apply(
                              color: GColors.white,
                            ),
                      ),
                    ),
                  ),

                  // Wishlist Button
                  const Positioned(
                      top: 0,
                      right: 0,
                      child: GCircularIcon(
                        icon: Iconsax.heart5,
                      )),
                ],
              ),
            ),
            const SizedBox(height: GSizes.spaceBtwItems / 2),

            /// --Product Details
            const Padding(
              padding: EdgeInsets.only(left: GSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Product Name
                  GProductTitleText(
                      text: 'Green Nike Air Shoes', isSmallText: true),
                  SizedBox(height: GSizes.spaceBtwItems / 2),

                  // Brand Name with Verified Badge
                  GBrandTitleTextWithIcon(title: 'Nike'),
                ],
              ),
            ),

            // To Utilize the remaining space
            const Spacer(),

            // Price and Add to Cart Button
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Price
                const Padding(
                  padding: EdgeInsets.only(left: GSizes.sm),
                  child: GProductPriceText(price: '120', isLargeText: true),
                ),

                // Add to cart Button
                Container(
                  decoration: BoxDecoration(
                    color: dark ? GColors.primary : GColors.dark,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(GSizes.cardRadiusMd),
                      bottomRight: Radius.circular(GSizes.productImageRadius),
                    ),
                  ),
                  child: const SizedBox(
                      width: GSizes.iconLg * 1.2,
                      height: GSizes.iconLg * 1.2,
                      child: Center(
                          child: Icon(Iconsax.add, color: GColors.white))),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
