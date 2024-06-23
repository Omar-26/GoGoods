import 'package:GoGoods/common/widgets/list_tiles/settings_menu_tile.dart';
import 'package:GoGoods/common/widgets/texts/section_heading.dart';
import 'package:GoGoods/features/personalization/screens/settings/widgets/settings_appbar.dart';
import 'package:GoGoods/utils/constants/colors.dart';
import 'package:GoGoods/utils/constants/sizes.dart';
import 'package:day_night_switcher/day_night_switcher.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        physics: const BouncingScrollPhysics(),
        dragStartBehavior: DragStartBehavior.down,

        /// --AppBar
        headerSliverBuilder: (context, _) => [const GSettingsAppBar()],

        /// --Body
        body: Padding(
          padding: const EdgeInsets.all(GSizes.defaultSpace),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const GSectionHeading(
                  title: 'Account Settings',
                  showActionButton: false,
                ),
                const SizedBox(height: GSizes.spaceBtwItems),

                /// --Account Settings
                const GSettingsMenuTile(
                    icon: Iconsax.safe_home,
                    title: 'My Addresses',
                    subTitle: 'Set shopping delivery address'),
                const GSettingsMenuTile(
                    icon: Iconsax.shopping_cart,
                    title: 'My Cart',
                    subTitle: 'Add, remove products and move to checkout'),
                const GSettingsMenuTile(
                    icon: Iconsax.bag_tick,
                    title: 'My Orders',
                    subTitle: 'In-progress and Completed Orders'),
                const GSettingsMenuTile(
                    icon: Iconsax.bank,
                    title: 'Bank Account',
                    subTitle: 'Withdraw balance to registered bank account'),
                const GSettingsMenuTile(
                    icon: Iconsax.discount_shape,
                    title: 'My Coupons',
                    subTitle: 'List of all the discounted coupons'),
                const GSettingsMenuTile(
                    icon: Iconsax.notification,
                    title: 'Notifications',
                    subTitle: 'Set any kind of notification message'),
                const GSettingsMenuTile(
                    icon: Iconsax.security_card,
                    title: 'Account Privacy',
                    subTitle: 'Manage data usage and connected accounts'),

                /// --App Settings
                const SizedBox(height: GSizes.spaceBtwSections),
                const GSectionHeading(
                  title: 'App Settings',
                  showActionButton: false,
                ),
                const SizedBox(height: GSizes.spaceBtwItems),
                const GSettingsMenuTile(
                    icon: Iconsax.document_upload,
                    title: 'Load Data',
                    subTitle: 'Upload Data to your Cloud Firebase'),

                GSettingsMenuTile(
                  icon: Iconsax.moon,
                  title: 'Dark Mode',
                  subTitle: 'Set the app to dark mode',
                  trailing: Expanded(
                    child: DayNightSwitcher(
                      onStateChanged: (bool isDarkModeEnabled) {},
                      isDarkModeEnabled: false,
                      dayBackgroundColor: GColors.primary,
                      nightBackgroundColor: GColors.primary,
                      // sunColor: GColors.primary,
                    ),
                  ),
                  // trailing: Switch(value: true, onChanged: (value) {} ,),
                ), // TSettingsMenuTile

                GSettingsMenuTile(
                  icon: Iconsax.location,
                  title: 'Geolocation',
                  subTitle: 'Set recommendation based on location',
                  trailing: Switch(
                    value: true,
                    onChanged: (value) {},
                  ),
                ), // TSettingsMenuTile
                GSettingsMenuTile(
                  icon: Iconsax.security_user,
                  title: 'Safe Mode',
                  subTitle: 'Search result is safe for all ages',
                  trailing: Switch(value: false, onChanged: (value) {}),
                ), // TSettingsMenuTile
                GSettingsMenuTile(
                  icon: Iconsax.image,
                  title: 'HD Image Quality',
                  subTitle: 'Set image quality to be seen',
                  trailing: Switch(value: false, onChanged: (value) {}),
                ), // TSettingsMenuTile
              ],
            ),
          ),
        ),
      ),
    );
  }
}
