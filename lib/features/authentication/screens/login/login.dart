import 'package:GoGoods/common/styles/spacing_styles.dart';
import 'package:GoGoods/common/widgets/login_signup/custom_divider.dart';
import 'package:GoGoods/features/authentication/screens/login/widgets/login_form.dart';
import 'package:GoGoods/features/authentication/screens/login/widgets/login_header.dart';
import 'package:GoGoods/utils/constants/sizes.dart';
import 'package:GoGoods/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/widgets/login_signup/custom_footer.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Padding(
        padding: GSpacingStyle.paddingWithAppbaarHeight,
        child: Column(
          children: [
            ///  Header : Logo, Title, SubTitle
            const GCustomLoginHeader(),

            /// Login Form
            const GCustomLoginForm(),

            /// Divider
            GCustomDivider(
              dividerText: GTexts.orSignInWith.capitalize!,
            ),
            const SizedBox(height: GSizes.spaceBtwSections),

            /// Footer : Register with Google, Facebook ... etc
            const GCustomFooter()
          ],
        ),
      ),
    ));
  }
}
