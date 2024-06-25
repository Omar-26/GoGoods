import 'package:GoGoods/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:GoGoods/common/widgets/images/circular_border_image.dart';
import 'package:GoGoods/utils/constants/image_strings.dart';
import 'package:GoGoods/utils/constants/sizes.dart';
import 'package:GoGoods/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../../../../utils/constants/colors.dart';

class GProductDetailsShowcase extends StatelessWidget {
  const GProductDetailsShowcase({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = GHelperFunctions.isDarkMode(context);
    final screenWidth = GHelperFunctions.screenWidth();

    return SliverAppBar(
      pinned: true,
      floating: true,
      expandedHeight: 240,
      backgroundColor: Colors.transparent,
      automaticallyImplyLeading: false,
      flexibleSpace: LayoutBuilder(
        builder: (_, BoxConstraints constraints) {
          double top = constraints.biggest.height;

          /// --Product Image Area
          return Stack(
            clipBehavior: Clip.hardEdge,
            children: [
              // --background Product Image Area
              FlexibleSpaceBar(
                background: Stack(
                  children: [
                    // Text Behind Product Image
                    Positioned(
                      right: 0,
                      left: 0,
                      bottom: 20,
                      child: Center(
                        child: Text(
                          'AIR',
                          style: TextStyle(
                            fontSize: 200,
                            color: dark
                                ? GColors.grey.withOpacity(0.4)
                                : GColors.darkerGrey.withOpacity(0.4),
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                    ),
                    // Product Image
                    SizedBox(
                      height: 170,
                      width: screenWidth,
                      child: const Center(
                        child: Image(
                          fit: BoxFit.fitHeight,
                          image: AssetImage(GImages.productImage10),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // --Photos of various angles of the product
              Positioned(
                bottom: 8,
                right: 0,
                left: 0,
                child: Center(
                  child: AnimatedOpacity(
                    opacity: top >= 100.0 ? 1 : 0,
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.decelerate,
                    child: SizedBox(
                      height: 80,
                      child: ListView.separated(
                        shrinkWrap: true,
                        physics: const BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemCount: 4,
                        separatorBuilder: (_, __) =>
                            const SizedBox(width: GSizes.spaceBtwItems),
                        itemBuilder: (_, index) => GCircularBorderImage(
                          width: 80,
                          imageUrl: GImages.productImage10,
                          fit: BoxFit.contain,
                          applyImageColor: false,
                          backgroundColor: dark ? GColors.black : GColors.white,
                          border: Border.all(color: GColors.primary),
                        ),
                      ),
                    ),
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
