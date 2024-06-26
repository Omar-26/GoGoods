import 'package:GoGoods/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:GoGoods/utils/constants/colors.dart';
import 'package:GoGoods/utils/constants/sizes.dart';
import 'package:GoGoods/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class GSectionHeading extends StatelessWidget {
  const GSectionHeading({
    super.key,
    required this.title,
    this.textColor,
    this.buttonText = 'View All',
    this.onPressed,
    this.showActionButton = true,
  });

  final Color? textColor;
  final String title, buttonText;
  final bool showActionButton;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    final dark = GHelperFunctions.isDarkMode(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.headlineSmall!.apply(
                color: textColor ?? (dark ? GColors.white : GColors.black),
              ),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        if (showActionButton)
          TextButton(
            onPressed: onPressed,
            child: Row(
              children: [
                Text(
                  buttonText,
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .apply(color: GColors.primary),
                ),
                const SizedBox(width: GSizes.sm),
                const GCircularContainer(
                  padding: EdgeInsets.all(GSizes.xs),
                  radius: GSizes.lg,
                  backgroundColor: GColors.primary,
                  child: Icon(
                    Icons.arrow_forward_rounded,
                    color: GColors.white,
                    size: 16,
                  ),
                ),
              ],
            ),
          )
      ],
    );
  }
}
