import 'package:GoGoods/common/widgets/appbar/appbar.dart';
import 'package:GoGoods/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:GoGoods/features/shop/screens/product_details/widgets/product_details_showcase.dart';
import 'package:GoGoods/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:GoGoods/features/shop/screens/product_details/widgets/rating_and_share.dart';
import 'package:GoGoods/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/helpers/helper_functions.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = GHelperFunctions.isDarkMode(context);
    final screenWidth = GHelperFunctions.screenWidth();

    return Scaffold(
      backgroundColor: dark ? GColors.dark : GColors.light,
      appBar: GCustomAppBar(
        showBackgroundColor: false,
        leadingIcon: Iconsax.arrow_left_2,
        leadingOnPress: () => Get.back(),
        actions: [
          IconButton(
            icon: const Icon(Iconsax.maximize),
            onPressed: () {},
          ),
        ],
      ),
      body: NestedScrollView(
          physics: const BouncingScrollPhysics(),

          /// --Product Showcase
          headerSliverBuilder: (context, _) =>
              [const GProductDetailsShowcase()],

          /// --Body
          body: Container(
            width: screenWidth,
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              color: dark ? GColors.black : GColors.white,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(36),
                topRight: Radius.circular(36),
              ),
            ),
            child: Stack(
              children: [
                SingleChildScrollView(
                  keyboardDismissBehavior:
                      ScrollViewKeyboardDismissBehavior.onDrag,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(GSizes.defaultSpace),
                        child: Column(
                          children: [
                            // --Rating and Share Button
                            GRatingAndShare(dark: dark),

                            // --Price, Title, Stock and Brand
                            const GProductMetaData(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                // --Bar that Indicates the page is Scrollable
                Positioned(
                  top: 6,
                  right: screenWidth / 2.5,
                  left: screenWidth / 2.5,
                  child: Center(
                    child: GCircularContainer(
                      height: 5,
                      width: 70,
                      backgroundColor: dark
                          ? GColors.grey.withOpacity(0.4)
                          : GColors.darkerGrey.withOpacity(0.4),
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
