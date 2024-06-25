import 'package:GoGoods/common/widgets/appbar/appbar.dart';
import 'package:GoGoods/features/shop/screens/Store/widgets/brand_card.dart';
import 'package:GoGoods/features/shop/screens/product_details/widgets/product_details_showcase.dart';
import 'package:GoGoods/utils/constants/image_strings.dart';
import 'package:GoGoods/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/helpers/helper_functions.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = GHelperFunctions.isDarkMode(context);
    return Scaffold(
      backgroundColor: dark ? GColors.dark : GColors.light,
      // backgroundColor: GColors.grey,
      appBar: GCustomAppBar(
        showBackgroundColor: false,
        leadingIcon: Iconsax.arrow_left_2,
        leadingOnPress: ()=> Get.back(),
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
            width: MediaQuery.of(context).size.width,
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              color: dark ? GColors.black : GColors.white,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(36),
                topRight: Radius.circular(36),
              ),
            ),
            child: const Stack(
              children: [
                SingleChildScrollView(
                  keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(GSizes.defaultSpace),
                        child: Column(
                          children: [
                            /// --Popular Products Section
                            // Products Title
                            GSectionHeading(title: 'Nike Air Max 270', showActionButton: false),
                            SizedBox(height: GSizes.spaceBtwSections),
                            GBrandCard(
                              imageUrl: GImages.nikeLogo,
                              brandTitle: 'Nike',
                              photoFit: BoxFit.scaleDown,
                              showBorder: false,
                            ),
                            SizedBox(height: GSizes.spaceBtwSections),
                            GSectionHeading(title: 'in stock', showActionButton: false),
                            SizedBox(height: GSizes.spaceBtwSections),
                            GSectionHeading(title: 'Nike Air Max 270', showActionButton: false),
                            SizedBox(height: GSizes.spaceBtwSections),
                            GSectionHeading(title: 'Size', showActionButton: false),
                            SizedBox(height: GSizes.spaceBtwSections),
                            GSectionHeading(title: 'Colors', showActionButton: false),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(thickness: GSizes.xs,indent: 160,endIndent: 160,),

              ],
            ),
          )),
    );
  }
}
