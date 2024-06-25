import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';


class GRatingAndShare extends StatelessWidget {
  const GRatingAndShare({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // --Rating
        Row(
          children: [
            const Icon(
              Iconsax.star5,
              color: Colors.amber,
              size: 24,
            ),
            const SizedBox(
                width: GSizes.spaceBtwItems / 2),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: '5.0',
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .apply(
                      color: dark
                          ? GColors.grey
                          : GColors.darkerGrey,
                    ),
                  ),
                  TextSpan(
                      text: ' (200)',
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall),
                ],
              ),
            ),
          ],
        ),
        // --Share Button
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.share),
        ),
      ],
    );
  }
}
