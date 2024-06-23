import 'package:GoGoods/features/personalization/screens/settings/settings.dart';
import 'package:GoGoods/utils/constants/colors.dart';
import 'package:GoGoods/utils/constants/sizes.dart';
import 'package:GoGoods/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'features/shop/screens/Store/store.dart';
import 'features/shop/screens/home/home.dart';
import 'features/shop/screens/wishlist/wishlist.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final dark = GHelperFunctions.isDarkMode(context);

    return Scaffold(
        bottomNavigationBar: Obx(
          () => GNav(
            gap: 8,
            iconSize: 24,
            activeColor: GColors.primary,
            tabMargin: const EdgeInsets.symmetric(vertical: 8),
            padding: const EdgeInsets.symmetric(
                horizontal: GSizes.defaultSpace, vertical: GSizes.sm),
            curve: Curves.easeInOutCubic,
            duration: const Duration(milliseconds: 300),
            textStyle: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(color: GColors.primary),
            tabBackgroundColor: dark ? GColors.black : GColors.white,
            tabs: const [
              GButton(
                icon: Iconsax.home,
                text: 'Home',
              ),
              GButton(
                icon: Iconsax.shop,
                text: 'Store',
              ),
              GButton(
                icon: Iconsax.heart,
                text: 'Wishlist',
              ),
              GButton(
                icon: Iconsax.user,
                text: 'Profile',
              ),
            ],
            selectedIndex: controller.selectedIndex.value,
            onTabChange: controller.onDestinationSelected,
          ),
        ),
        body: Obx(() => controller.screens[controller.selectedIndex.value]));
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    // Home
    const HomeScreen(),
    // Store
    const StoreScreen(),
    // Wishlist
    const WishlistScreen(),
    // Profile
    const SettingsScreen(),
  ];

  void onDestinationSelected(int index) {
    selectedIndex.value = index;
  }
}

// Old Nav Bar
// NavigationBar(
// height: 80,
// elevation: 0,
// selectedIndex: controller.selectedIndex.value,
// onDestinationSelected: (indexBeingSelected) =>
// controller.selectedIndex.value = indexBeingSelected,
// backgroundColor: dark ? GColors.black : GColors.white,
// indicatorColor: GColors.primary.withOpacity(0.1),
// destinations: const [
// // Home
// NavigationDestination(
// icon: Icon(Iconsax.home),
// label: 'Home',
// ),
// // Store
// NavigationDestination(
// icon: Icon(Iconsax.shop),
// label: 'Store',
// ),
// // Wishlist
// NavigationDestination(
// icon: Icon(Iconsax.heart),
// label: 'Wishlist',
// ),
// // Profile
// NavigationDestination(
// icon: Icon(Iconsax.user),
// label: 'Profile',
// ),
// ],
// ),
