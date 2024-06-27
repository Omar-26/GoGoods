import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class GRatingStarsIndicator extends StatelessWidget {
  const GRatingStarsIndicator({
    super.key,
    required this.rating,
  });

  final double rating;

  @override
  Widget build(BuildContext context) {
    final dark = GHelperFunctions.isDarkMode(context);

    return RatingBarIndicator(
      rating: rating,
      itemSize: 20,
      unratedColor: dark ? GColors.darkerGrey : GColors.grey,
      itemBuilder: (_, __) => const Icon(Iconsax.star1, color: GColors.primary),
    );
  }
}
