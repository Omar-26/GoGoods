import 'package:GoGoods/utils/constants/colors.dart';
import 'package:GoGoods/utils/constants/sizes.dart';
import 'package:GoGoods/utils/device/device_utility.dart';
import 'package:GoGoods/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class GCustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const GCustomAppBar({
    super.key,
    this.title,
    this.showBackArrow = false,
    this.showBackgroundColor = false,
    this.leadingIcon,
    this.leadingOnPress,
    this.actions,
    this.leadingIconColor,
  });

  final Widget? title;
  final bool? showBackArrow;
  final bool showBackgroundColor;
  final IconData? leadingIcon;
  final Color? leadingIconColor;

  final VoidCallback? leadingOnPress;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    final dark = GHelperFunctions.isDarkMode(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: GSizes.md),
      child: AppBar(
        elevation: 0,
        scrolledUnderElevation: 0,
        bottomOpacity: 1,
        titleSpacing: 0,
        // backgroundColor: Colors.red,
        backgroundColor: showBackgroundColor
            ? (dark ? GColors.black : GColors.white)
            : Colors.transparent,
        automaticallyImplyLeading: showBackArrow!,
        leading: showBackArrow!
            ?
            // Back Arrow Icon
            IconButton(
                onPressed: () => Get.back(),
                icon: Icon(
                  Iconsax.arrow_left,
                  color: dark ? GColors.white : GColors.black,
                ),
              )
            :
            // User Desired Icon
            leadingIcon != null
                ? IconButton(
                    onPressed: leadingOnPress,
                    icon: Icon(leadingIcon,
                        color: leadingIconColor ??
                            (dark ? GColors.white : GColors.black)),
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
