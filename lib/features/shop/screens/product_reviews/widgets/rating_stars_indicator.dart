import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class GRatingStarsIndicator extends StatelessWidget {
  const GRatingStarsIndicator({
    super.key,
    required this.rating,
    this.starsColor, this.unratedColor,
  });

  final double rating;
  final Color? starsColor, unratedColor;

  @override
  Widget build(BuildContext context) {
    final dark = GHelperFunctions.isDarkMode(context);

    return RatingBarIndicator(
      rating: rating,
      itemSize: 20,
      unratedColor: unratedColor ?? (dark ? GColors.darkerGrey : GColors.grey),
      itemBuilder: (_, __) =>
          Icon(Iconsax.star1, color: starsColor ?? GColors.primary),
    );
  }
}
