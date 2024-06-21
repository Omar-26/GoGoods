import 'package:GoGoods/utils/constants/colors.dart';
import 'package:GoGoods/utils/device/device_utility.dart';
import 'package:GoGoods/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class GTabBar extends StatelessWidget implements PreferredSizeWidget {
  const GTabBar({super.key, required this.tabs});

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final dark = GHelperFunctions.isDarkMode(context);
    return Material(
      color: dark ? GColors.black : GColors.white,
      child: TabBar(
        isScrollable: true,
        enableFeedback: true,
        tabAlignment: TabAlignment.start,
        physics: const BouncingScrollPhysics(),
        labelColor: GColors.primary,
        labelStyle: Theme.of(context).textTheme.titleLarge,
        unselectedLabelColor: dark ? GColors.grey : GColors.darkerGrey,
        splashFactory: InkRipple.splashFactory,
        splashBorderRadius: BorderRadius.circular(50),
        indicatorWeight: 7,
        indicatorColor: GColors.primary,
        dividerColor: Colors.transparent,
        overlayColor:
            MaterialStateProperty.all(GColors.primary.withOpacity(0.1)),
        tabs: tabs,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(GDeviceUtils.getAppBarHeight());
}
