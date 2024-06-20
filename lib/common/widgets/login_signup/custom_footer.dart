import 'package:flutter/material.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';

class GCustomFooter extends StatelessWidget {
  const GCustomFooter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // App 1 : Google
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: GColors.grey,
            ),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              width: GSizes.iconMd,
              height: GSizes.iconMd,
              image: AssetImage(GImages.google),
            ),
          ),
        ),
        const SizedBox(width: GSizes.spaceBtwItems),
        // App 2 : Facebook
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: GColors.grey,
            ),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              width: GSizes.iconMd,
              height: GSizes.iconMd,
              image: AssetImage(GImages.facebook),
            ),
          ),
        ),
      ],
    );
  }
}
