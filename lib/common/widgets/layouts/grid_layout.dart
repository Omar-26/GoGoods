import 'package:flutter/material.dart';

import '../../../utils/constants/sizes.dart';
import '../products/cards/product_card_vertical.dart';

class GGridLayout extends StatelessWidget {
  const GGridLayout({
    super.key,
    required this.itemCount,
    required this.itemBuilder,
    this.mainAxisExtent = 288,
  });

  final int itemCount;
  final double mainAxisExtent;
  final Widget? Function(BuildContext, int) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: itemCount,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisExtent: mainAxisExtent,
        mainAxisSpacing: GSizes.gridViewSpacing,
        crossAxisSpacing: GSizes.gridViewSpacing,
      ),
      itemBuilder: itemBuilder,
    );
  }
}
