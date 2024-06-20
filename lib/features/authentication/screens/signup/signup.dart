import 'package:GoGoods/common/widgets/login_signup/custom_divider.dart';
import 'package:GoGoods/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:GoGoods/utils/constants/sizes.dart';
import 'package:GoGoods/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/widgets/login_signup/custom_footer.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(GSizes.defaultSpace),
          child: Column(
            children: [
              /// Title
              Text(
                GTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: GSizes.spaceBtwSections),

              /// Signup form
              const GCustomSignupForm(),
              const SizedBox(height: GSizes.spaceBtwSections),

              /// Divider
              GCustomDivider(dividerText: GTexts.orSignInWith.capitalize!),
              const SizedBox(height: GSizes.spaceBtwSections),

              /// Footer
              const GCustomFooter(),
            ],
          ),
        ),
      ),
    );
  }
}
