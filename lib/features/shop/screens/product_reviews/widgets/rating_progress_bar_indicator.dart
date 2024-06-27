import 'package:flutter/material.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/device/device_utility.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class GRatingProgressIndicator extends StatelessWidget {
  const GRatingProgressIndicator(
      {super.key, required this.text, required this.value});

  final String text;
  final double value;

  @override
  Widget build(BuildContext context) {
    final dark = GHelperFunctions.isDarkMode(context);
    final screenWidth = GDeviceUtils.getScreenWidth(context);

    return Row(
      children: [
        Expanded(
            flex: 1,
            child: Text(text, style: Theme.of(context).textTheme.bodyMedium)),
        Expanded(
          flex: 11,
          child: SizedBox(
            width: screenWidth * 0.8,
            child: LinearProgressIndicator(
              value: value,
              minHeight: 11,
              borderRadius: BorderRadius.circular(10),
              backgroundColor: dark ? GColors.darkerGrey : GColors.grey,
              valueColor: const AlwaysStoppedAnimation<Color>(GColors.primary),
            ),
          ),
        )
      ],
    );
  }
}
