import 'package:GoGoods/features/authentication/screens/login/login.dart';
import 'package:GoGoods/utils/constants/image_strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Get.back(),
            icon: const Icon(CupertinoIcons.clear),
            padding: const EdgeInsets.only(
                top: GSizes.defaultSpace, right: GSizes.defaultSpace),
          ),
        ],
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all( GSizes.defaultSpace),
        child: Column(
          children: [
            /// Image
            Image(
              width: 0.6 * GHelperFunctions.screenWidth(),
              image: const AssetImage(GImages.deliveredEmailIllustration),
            ),
            const SizedBox(height: GSizes.spaceBtwSections),

            /// Title and SubTitle
            // Title
            Text(
              GTexts.changeYourPasswordTitle,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: GSizes.spaceBtwItems),

            // SubTitle
            Text(
              GTexts.changeYourPasswordSubTitle,
              style: Theme.of(context).textTheme.labelMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: GSizes.spaceBtwSections),

            /// Buttons
            // Done Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.offAll(() => const LoginScreen()),
                child: const Text(GTexts.done),
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
      )),
    );
  }
}
