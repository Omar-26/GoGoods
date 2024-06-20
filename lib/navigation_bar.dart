import 'package:GoGoods/utils/constants/colors.dart';
import 'package:GoGoods/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import 'features/shop/screens/Store/store.dart';
import 'features/shop/screens/home/home.dart';
import 'features/shop/screens/profile/profile.dart';
import 'features/shop/screens/wishlist/wishlist.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final dark = GHelperFunctions.isDarkMode(context);

    return Scaffold(
        bottomNavigationBar: Obx(
          () => NavigationBar(
            height: 80,
            elevation: 0,
            selectedIndex: controller.selectedIndex.value,
            onDestinationSelected: (indexBeingSelected) =>
                controller.selectedIndex.value = indexBeingSelected,
            backgroundColor: dark ? GColors.black : GColors.white,
            indicatorColor: dark ? GColors.white.withOpacity(0.1) : GColors.black.withOpacity(0.1),

            destinations: const [
              // Home
              NavigationDestination(
                icon: Icon(Iconsax.home),
                label: 'Home',
              ),
              // Store
              NavigationDestination(
                icon: Icon(Iconsax.shop),
                label: 'Store',
              ),
              // Wishlist
              NavigationDestination(
                icon: Icon(Iconsax.heart),
                label: 'Wishlist',
              ),
              // Profile
              NavigationDestination(
                icon: Icon(Iconsax.user),
                label: 'Profile',
              ),
            ],
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
    const ProfileScreen(),
  ];

  void onDestinationSelected(int index) {
    selectedIndex.value = index;
  }
}
