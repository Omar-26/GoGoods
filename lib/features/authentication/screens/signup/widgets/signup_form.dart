import 'package:GoGoods/features/authentication/screens/signup/verify_email.dart';
import 'package:GoGoods/features/authentication/screens/signup/widgets/terms_and_conditions_checkbox.dart';
import 'package:GoGoods/utils/constants/sizes.dart';
import 'package:GoGoods/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class GCustomSignupForm extends StatelessWidget {
  const GCustomSignupForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
          children: [
            // First and Last name
            Row(
              children: [
                // First Name
                Expanded(
                  child: TextFormField(
                    expands: false,
                    decoration: const InputDecoration(
                      labelText: GTexts.firstName,
                      prefixIcon: Icon(Iconsax.user),
                    ),
                  ),
                ),
                // space between items
                const SizedBox(width: GSizes.spaceBtwInputFields),

                // Last Name
                Expanded(
                  child: TextFormField(
                    expands: false,
                    decoration: const InputDecoration(
                      labelText: GTexts.lastName,
                      prefixIcon: Icon(Iconsax.user),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: GSizes.spaceBtwInputFields),

            // Username
            TextFormField(
              decoration: const InputDecoration(
                labelText: GTexts.username,
                prefixIcon: Icon(Iconsax.user_tick),
              ),
            ),
            const SizedBox(height: GSizes.spaceBtwInputFields),

            // Email
            TextFormField(
              decoration: const InputDecoration(
                labelText: GTexts.email,
                prefixIcon: Icon(Iconsax.direct),
              ),
            ),
            const SizedBox(height: GSizes.spaceBtwInputFields),

            // Phone Number
            TextFormField(
              decoration: const InputDecoration(
                labelText: GTexts.phoneNo,
                prefixIcon: Icon(Iconsax.call),
              ),
            ),
            const SizedBox(height: GSizes.spaceBtwInputFields),

            // Password
            TextFormField(
              decoration: const InputDecoration(
                labelText: GTexts.password,
                prefixIcon: Icon(Iconsax.password_check),
                suffixIcon: Icon(Iconsax.eye_slash),
              ),
            ),
            const SizedBox(height: GSizes.spaceBtwSections),

            // privacy policy and terms of use agreement
            const GCustomTermsAndConditionsCheckbox(),
            const SizedBox(height: GSizes.spaceBtwSections),

            // Create Account Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: ()=> Get.to(()=> const VerifyEmailScreen()), // TODO Add Account to data base
                child: const Text(GTexts.createAccount),
              ),
            ),
          ],
      ),
    );
  }
}