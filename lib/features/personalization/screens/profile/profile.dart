import 'package:GoGoods/common/widgets/appbar/appbar.dart';
import 'package:GoGoods/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:GoGoods/common/widgets/images/circular_border_image.dart';
import 'package:GoGoods/common/widgets/list_tiles/profile_menu_tile.dart';
import 'package:GoGoods/common/widgets/texts/section_heading.dart';
import 'package:GoGoods/utils/constants/colors.dart';
import 'package:GoGoods/utils/constants/image_strings.dart';
import 'package:GoGoods/utils/constants/sizes.dart';
import 'package:GoGoods/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: Column(
          children: [
            /// --AppBar, Photo and Name
            Stack(
              children: [
                // AppBar
                GPrimaryHeaderContainer(
                  height: 200,
                  child: GCustomAppBar(
                    title: Text(
                      'Edit Profile',
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .apply(color: GColors.white),
                    ),
                    // showBackArrow: true,
                    leadingIcon: Icons.arrow_back_ios,
                    leadingIconColor: GColors.white,
                    leadingOnPress: () => Get.back(),
                  ),
                ),

                // Profile Picture and Name
                const Padding(
                  padding: EdgeInsets.only(top: 110),
                  child: Center(
                    child: Column(
                      children: [
                        // Profile Picture
                        GProfilePicture(),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            /// --Body
            Padding(
              padding: const EdgeInsets.fromLTRB(GSizes.defaultSpace, GSizes.sm,
                  GSizes.defaultSpace, GSizes.defaultSpace),
              child: Column(
                children: [
                  const Divider(),

                  const SizedBox(height: GSizes.spaceBtwItems),
                  // Account Settings
                  const GSectionHeading(
                    title: 'Profile Information',
                    showActionButton: false,
                  ),
                  const SizedBox(height: GSizes.spaceBtwItems),

                  GProfileMenuTile(
                      title: 'Name', value: 'Omar Ashraf', onTap: () {}),
                  GProfileMenuTile(
                      title: 'Username', value: 'omar-26', onTap: () {}),

                  const SizedBox(height: GSizes.spaceBtwItems),
                  const Divider(),

                  const SizedBox(height: GSizes.spaceBtwItems),
                  const GSectionHeading(
                    title: 'Personal Information',
                    showActionButton: false,
                  ),
                  const SizedBox(height: GSizes.spaceBtwItems),

                  GProfileMenuTile(
                      title: 'User ID', value: '#390293', onTap: () {}),
                  GProfileMenuTile(
                      title: 'Email',
                      value: 'omarashraf@gogoods.com',
                      onTap: () {}),
                  GProfileMenuTile(
                      title: 'Phone Number',
                      value: '+20-11-1843-3735',
                      onTap: () {}),
                  GProfileMenuTile(
                      title: 'Gender', value: 'Male', onTap: () {}),
                  GProfileMenuTile(
                      title: 'Date of Birth',
                      value: '30 Aug, 2002',
                      onTap: () {}),
                  const SizedBox(height: GSizes.spaceBtwSections),

                  // Delete account button
                  ElevatedButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Iconsax.trash,
                            color: GColors.white, size: 20),
                        const SizedBox(width: GSizes.sm),
                        Text('Delete Account',
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge!
                                .apply(color: GColors.white)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class GProfilePicture extends StatelessWidget {
  const GProfilePicture({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = GHelperFunctions.isDarkMode(context);
    return Stack(children: [
      Column(
        children: [
          GCircularBorderImage(
            imageUrl: GImages.user,
            width: 140,
            height: 140,
            borderRadius: 140,
            border: Border.all(
              width: 7,
              color: dark ? GColors.black : GColors.white,
              strokeAlign: BorderSide.strokeAlignOutside,
            ),
            applyImageColor: false,
          ),
          const SizedBox(
            height: GSizes.md,
          )
        ],
      ),
      Positioned(
        bottom: 0,
        right: 0,
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: GColors.primary,
            shape: const CircleBorder(),
            padding: const EdgeInsets.all(10),
          ),
          child: const Icon(
            Iconsax.edit_2,
            color: GColors.white,
            size: 26,
          ),
        ),
      ),
    ]);
  }
}
