import 'package:GoGoods/features/shop/controllers/home_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../../common/widgets/custom_shapes/containers/circular_container.dart';
import '../../../../../common/widgets/images/rounded_border_image.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';

class CarouselPromoSlider extends StatelessWidget {
  const CarouselPromoSlider({
    super.key,
    required this.banners,
  });

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());

    return Column(
      children: [
        // Carousel Image Slider
        CarouselSlider(
          options: CarouselOptions(
            onPageChanged: (index, _) => controller.updateCarouselIndex(index),
            viewportFraction: 1,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 3),
            autoPlayAnimationDuration: const Duration(milliseconds: 500),
            autoPlayCurve: Curves.fastOutSlowIn,
            pauseAutoPlayOnTouch: true,
            enlargeCenterPage: true,
            scrollDirection: Axis.horizontal,
          ),
          items:
              banners.map((url) => GRoundedBorderImage(imageUrl: url)).toList(),
        ),

        // Carousel Page Indicator
        const SizedBox(height: GSizes.spaceBtwItems),
        Obx(
          () => AnimatedSmoothIndicator(
            curve: Curves.fastOutSlowIn,
            activeIndex: controller.carouselCurrentIndex.value,
            count: banners.length,
            effect: const ExpandingDotsEffect(
              dotWidth: 10,
              dotHeight: 7,
              dotColor: GColors.grey,
              activeDotColor: GColors.primary,
              expansionFactor: 3,
            ),
          ),
          // Another Shape for the Indicator (Without Animation)
          // () => Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     for (int i = 0; i < banners.length; i++)
          //       GCircularContainer(
          //         width: 20,
          //         height: 4,
          //         margin: const EdgeInsets.only(right: 10),
          //         backgroundColor: controller.carouselCurrentIndex.value == i
          //             ? GColors.primary
          //             : GColors.grey,
          //       ),
          //   ],
          // ),
        )
      ],
    );
  }
}
