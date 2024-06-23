import 'package:GoGoods/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:GoGoods/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:GoGoods/common/widgets/texts/section_heading.dart';
import 'package:GoGoods/features/shop/screens/home/widgets/home_categories.dart';
import 'package:GoGoods/utils/constants/image_strings.dart';
import 'package:GoGoods/utils/constants/sizes.dart';
import 'package:GoGoods/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/appbar/appbar.dart';
import '../../../../../common/widgets/custom_shapes/curved_edges/custom_curved_edges_widget.dart';
import '../../../../../common/widgets/products/cart/counter_icon.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/text_strings.dart';

class GProductDetailsShowcase extends StatelessWidget {
  const GProductDetailsShowcase({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = GHelperFunctions.isDarkMode(context);

    return SliverAppBar(
      pinned: true,
      floating: true,
      // collapsedHeight: 62,
      expandedHeight: 220,
      backgroundColor: Colors.transparent,
      // backgroundColor: Colors.green,
      automaticallyImplyLeading: false,
      flexibleSpace: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          double top = constraints.biggest.height;
          return Stack(
            children: [
              /// --Background of the AppBar
              FlexibleSpaceBar(
                background: Container(
                  color: dark ? GColors.dark : GColors.light,
                  child: Image(
                    image: AssetImage(GImages.productImage1),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
