import 'package:GoGoods/common/widgets/appbar/appbar.dart';
import 'package:GoGoods/common/widgets/appbar/tabbar.dart';
import 'package:GoGoods/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:GoGoods/common/widgets/texts/section_heading.dart';
import 'package:GoGoods/features/shop/screens/product_details/details_section.dart';
import 'package:GoGoods/features/shop/screens/product_details/widgets/product_details_bottom_nav_bar.dart';
import 'package:GoGoods/features/shop/screens/product_details/widgets/product_details_showcase.dart';
import 'package:GoGoods/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:GoGoods/features/shop/screens/product_reviews/reviews_section.dart';
import 'package:GoGoods/utils/constants/sizes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';
import '../../../../common/widgets/chips/choice_chip.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/helpers/helper_functions.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = GHelperFunctions.isDarkMode(context);
    final screenWidth = GHelperFunctions.screenWidth();
    final screenHeight = GHelperFunctions.screenHeight();

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: dark ? GColors.dark : GColors.light,
        appBar: GCustomAppBar(
          centerTitle: true,
          showBackgroundColor: false,
          title: Text('Product Details',
              style: Theme.of(context).textTheme.headlineSmall),
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
            body: Stack(
              children: [
                Container(
                  width: screenWidth,
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                      color: dark ? GColors.black : GColors.white,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(36),
                        topRight: Radius.circular(36),
                      )),
                  child: SingleChildScrollView(
                    keyboardDismissBehavior:
                        ScrollViewKeyboardDismissBehavior.onDrag,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(GSizes.defaultSpace,
                          GSizes.md/1.2, GSizes.defaultSpace, GSizes.defaultSpace),
                      child: Column(
                        children: [
                          Center(
                            child: GCircularContainer(
                              height: 5,
                              width: 70,
                              backgroundColor: dark
                                  ? GColors.grey.withOpacity(0.4)
                                  : GColors.darkerGrey.withOpacity(0.4),
                            ),
                          ),
                          const SizedBox(height: GSizes.spaceBtwItems / 1.2),
                          // --Brand, Title, Stock
                          const GProductMetaData(),
                          const SizedBox(height: GSizes.spaceBtwSections),

                          // --Details and Reviews TabBar
                          const GDetailsSection(),
                          const SizedBox(height: GSizes.spaceBtwSections),
                          const GReviewsSection(),
                        ],
                      ),
                    ),
                  ),
                ),

                // add to favorites button
                // Positioned(
                //   top: 160,
                //   right: 0,
                //   child: Container(
                //     width: 50,
                //     padding: const EdgeInsets.all(GSizes.xs / 2),
                //     decoration: BoxDecoration(
                //       color: Colors.redAccent.withOpacity(0.3),
                //       borderRadius: const BorderRadius.only(
                //         topLeft: Radius.circular(36),
                //         bottomLeft: Radius.circular(36),
                //       ),
                //       boxShadow: [
                //         BoxShadow(
                //           color: dark
                //               ? GColors.black.withOpacity(0.1)
                //               : GColors.grey.withOpacity(0.1),
                //           offset: const Offset(0, 2),
                //           blurRadius: 10,
                //         ),
                //       ],
                //     ),
                //     // convert to icon button
                //
                //     child: IconButton(
                //       icon: const Icon(
                //         Iconsax.heart5,
                //         size: 30,
                //         color: Colors.red,
                //       ),
                //       onPressed: () {},
                //     ),
                //   ),
                // ),
              ],
            )),

        /// --Price and Add to Cart Button
        bottomNavigationBar: const GProductDetailsBottomNavBar(),
      ),
    );
  }
}
