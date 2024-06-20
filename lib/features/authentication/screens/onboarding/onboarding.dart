import 'package:GoGoods/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:GoGoods/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:GoGoods/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:GoGoods/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:GoGoods/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:GoGoods/utils/constants/image_strings.dart';
import 'package:GoGoods/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
        body: Stack(
      children: [
        /// Horizontal Scrollable Page
        PageView(
          controller: controller.pageController,
          onPageChanged: controller.updatePageIndicator,
          children: const [
            // Page 1
            OnBoardingPage(
                image: GImages.onBoardingImage1,
                title: GTexts.onBoardingTitle1,
                subTitle: GTexts.onBoardingSubTitle1),
            // Page 2
            OnBoardingPage(
                image: GImages.onBoardingImage2,
                title: GTexts.onBoardingTitle2,
                subTitle: GTexts.onBoardingSubTitle2),
            // Page 3
            OnBoardingPage(
                image: GImages.onBoardingImage3,
                title: GTexts.onBoardingTitle3,
                subTitle: GTexts.onBoardingSubTitle3),
          ],
        ),

        /// Skip Button
        const OnBoardingSkip(),

        /// Dot Navigation SmoothPageIndicator
        const OnBoardingDotNavigation(),

        /// Circular Button
        const OnBoardingNextButton(),
      ],
    ));
  }
}
