import 'package:GoGoods/common/icons/circular_icon.dart';
import 'package:GoGoods/common/widgets/appbar/appbar.dart';
import 'package:GoGoods/common/widgets/layouts/grid_layout.dart';
import 'package:GoGoods/common/widgets/products/cards/product_card_vertical.dart';
import 'package:GoGoods/features/shop/screens/home/home.dart';
import 'package:GoGoods/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';


class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GCustomAppBar(
        title:
        Text('Wishlist', style: Theme.of(context).textTheme.headlineMedium),
        // add icon with GCircularicon
        actions: [
          GCircularIcon(
            icon: Iconsax.add,
            onPressed: () => Get.to(const HomeScreen()),
          ),
        ],
      ),
      body :  SingleChildScrollView(
        child: Padding(
          padding:  const EdgeInsets.all(GSizes.defaultSpace),
          child: Column(
            children: [
              GGridLayout(itemCount: 6, itemBuilder: (_,index) => const GVerticalProductCard(),)
            ],
          ),
        ),
      ),
    );
  }
}