import 'package:GoGoods/features/authentication/screens/password/configuration/forget_password.dart';
import 'package:GoGoods/features/authentication/screens/signup/signup.dart';
import 'package:GoGoods/navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';

class GCustomLoginForm extends StatelessWidget {
  const GCustomLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: GSizes.spaceBtwSections),
        child: Column(
          children: [
            // Email Field
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: GTexts.email,
              ),
            ),
            const SizedBox(height: GSizes.spaceBtwInputFields),

            // Password Field
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                suffixIcon: Icon(Iconsax.eye_slash),
                labelText: GTexts.password,
              ),
            ),
            const SizedBox(height: GSizes.spaceBtwInputFields / 2),

            // Remember Me & Forgot Password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Remember Me
                Row(
                  children: [
                    Checkbox(
                        value: true,
                        onChanged: (value) {
                          value = value!;
                        }),
                    const Text(GTexts.rememberMe),
                  ],
                ),

                // Forgot Password
                TextButton(
                  onPressed: () => Get.to(() => const ForgetPasswordScreen()),
                  child: const Text(
                    GTexts.forgetPassword,
                  ),
                ),
              ],
            ),
            const SizedBox(height: GSizes.spaceBtwSections),

            // Sign-in Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.to(() => const CustomNavigationBar()),
                child: const Text(GTexts.signIn),
              ),
            ),

            const SizedBox(height: GSizes.spaceBtwItems),

            // Create Account Button
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () => Get.to(() => const SignupScreen()),
                child: const Text(GTexts.createAccount),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
