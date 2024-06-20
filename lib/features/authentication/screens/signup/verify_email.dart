import 'package:GoGoods/common/widgets/success_screens/success_screen.dart';
import 'package:GoGoods/features/authentication/screens/login/login.dart';
import 'package:GoGoods/utils/constants/image_strings.dart';
import 'package:GoGoods/utils/constants/sizes.dart';
import 'package:GoGoods/utils/constants/text_strings.dart';
import 'package:GoGoods/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Get.offAll(() => const LoginScreen()),
            icon: const Icon(CupertinoIcons.clear),
            padding: const EdgeInsets.only(top :GSizes.defaultSpace, right: GSizes.defaultSpace),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(GSizes.defaultSpace),
          child: Column(
            children: [
              /// Image
              Image(
                width: 0.6 * GHelperFunctions.screenWidth(),
                image: const AssetImage(GImages.deliveredEmailIllustration),
              ),
              const SizedBox(height: GSizes.spaceBtwSections),

              /// Title ,User Email and SubTitle
              // Title
              Text(
                GTexts.confirmEmail,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: GSizes.spaceBtwItems),

              // User Email Address
              Text(
                "User@gmail.com",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              const SizedBox(height: GSizes.spaceBtwItems),

              // SubTitle
              Text(
                textAlign: TextAlign.center,
                GTexts.confirmEmailSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
              ),
              const SizedBox(height: GSizes.spaceBtwSections),

              /// Buttons
              // Continue Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Get.to(() => SuccessScreen(
                        image: GImages.staticSuccessIllustration,
                        title: GTexts.yourAccountCreatedTitle,
                        subTitle: GTexts.yourAccountCreatedSubTitle,
                        onPressed: () => Get.to(() => const LoginScreen()),
                      )),
                  child: const Text(GTexts.tContinue),
                ),
              ),
              const SizedBox(height: GSizes.spaceBtwItems),

              //Resend Email Button
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  // onPressed: () => Get.offAll(() => const SucessfullyCreatedScreen()),
                  child: const Text(GTexts.resendEmail),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
