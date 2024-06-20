import 'package:GoGoods/utils/constants/sizes.dart';
import 'package:GoGoods/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class GCustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const GCustomAppBar({
    super.key,
    this.title,
    this.showBackArrow = false,
    this.leadingIcon,
    this.leadingOnPress,
    this.actions,
  });

  final Widget? title;
  final bool? showBackArrow;
  final IconData? leadingIcon;
  final VoidCallback? leadingOnPress;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: GSizes.md),
      child: AppBar(
        automaticallyImplyLeading: showBackArrow!,
        leading: showBackArrow!
            ?
            // Back Arrow Icon
            IconButton(
                onPressed: () => Get.back(),
                icon: const Icon(Iconsax.arrow_left))
            :
            // User Desired Icon
            leadingIcon != null
                ? IconButton(
                    onPressed: leadingOnPress,
                    icon: Icon(leadingIcon),
                  )
                : null,
        title: title,
        actions: actions,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(GDeviceUtils.getAppBarHeight());
}
