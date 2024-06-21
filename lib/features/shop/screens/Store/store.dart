import 'package:GoGoods/common/widgets/appbar/appbar.dart';
import 'package:GoGoods/common/widgets/appbar/tabbar.dart';
import 'package:GoGoods/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:GoGoods/common/widgets/layouts/grid_layout.dart';
import 'package:GoGoods/common/widgets/products/cart/counter_icon.dart';
import 'package:GoGoods/common/widgets/texts/section_heading.dart';
import 'package:GoGoods/features/shop/screens/Store/widgets/brand_card.dart';
import 'package:GoGoods/features/shop/screens/Store/widgets/category_tab.dart';
import 'package:GoGoods/features/shop/screens/Store/widgets/featured_brands_section.dart';
import 'package:GoGoods/utils/constants/colors.dart';

import 'package:GoGoods/utils/constants/image_strings.dart';
import 'package:GoGoods/utils/constants/sizes.dart';
import 'package:GoGoods/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = GHelperFunctions.isDarkMode(context);

    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: GCustomAppBar(
          title:
              Text('Store', style: Theme.of(context).textTheme.headlineMedium!),
          actions: [
            GCounterIcon(
              icon: Iconsax.shopping_bag,
              textColor: dark ? GColors.black : GColors.white,
              backgroundColor: GColors.primary,
              onPressed: () {},
            )
          ],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (_, isInnerBoxScroll) => [
            SliverAppBar(
              pinned: true,
              floating: true,
              expandedHeight: 440,
              automaticallyImplyLeading: false,
              backgroundColor: dark ? GColors.black : GColors.white,
              flexibleSpace: const Padding(
                padding: EdgeInsets.all(GSizes.defaultSpace),
                /// --Featured Brands Section
                child: GFeaturedBrandsSection(),
              ),
              /// --Categories Navigation Header
              bottom: const GTabBar(
                tabs: [
                  Tab(child: Text('Sports')),
                  Tab(child: Text('Clothes')),
                  Tab(child: Text('Electronics')),
                  Tab(child: Text('Furniture')),
                  Tab(child: Text('Cosmetics')),
                ],
              ),
            ),
          ],
          /// --Categories Section
          body: TabBarView(
            children: [const GCategoryTab(), Container(color: Colors.green), Container(color: Colors.blue), Container(color: Colors.yellow), Container(color: Colors.purple),],
          ),
        ),
      ),
    );
  }
}

