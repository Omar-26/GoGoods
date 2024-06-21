import 'package:GoGoods/common/widgets/layouts/grid_layout.dart';
import 'package:GoGoods/common/widgets/texts/section_heading.dart';
import 'package:GoGoods/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:GoGoods/features/shop/screens/home/widgets/home_body.dart';
import 'package:GoGoods/features/shop/screens/home/widgets/home_promo_slider.dart';
import 'package:GoGoods/utils/constants/colors.dart';
import 'package:GoGoods/utils/constants/image_strings.dart';
import 'package:GoGoods/utils/constants/sizes.dart';
import 'package:GoGoods/utils/helpers/helper_functions.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../../../../common/widgets/products/cards/product_card_vertical.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        physics: const BouncingScrollPhysics(),
        dragStartBehavior: DragStartBehavior.down,
        /// --AppBar
        headerSliverBuilder: (context, _) => [const GHomeAppBar()],
        /// --Body
        body: const GHomeBody(),
      ),
    );
  }
}