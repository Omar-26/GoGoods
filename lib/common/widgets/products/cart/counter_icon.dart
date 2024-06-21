import 'package:GoGoods/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';

class GCounterIcon extends StatelessWidget {
  const GCounterIcon({
    super.key,
    required this.icon,
    this.iconColor,
    this.onPressed,
    this.backgroundColor,
    this.textColor,
  });

  final IconData icon;
  final Color? iconColor, backgroundColor, textColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Shopping Bag Icon
        IconButton(
          onPressed: onPressed,
          icon: Icon(
            icon,
            color: iconColor,
          ),
        ),

        // Notification Badge
        Positioned(
          right: 5,
          top: 5,
          child: Container(
            // padding: const EdgeInsets.all(4),
            width: 18,
            height: 18,
            decoration: BoxDecoration(
              color: backgroundColor ?? GColors.black.withOpacity(0.8),
              borderRadius: BorderRadius.circular(18),
            ),
            child: Text(
              '2', // will be variable
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.labelLarge!.apply(
                    color: textColor ?? GColors.white,
                  ),
            ),
          ),
        )
      ],
    );
  }
}
