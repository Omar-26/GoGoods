import 'package:GoGoods/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:GoGoods/common/widgets/images/circular_border_image.dart';
import 'package:GoGoods/features/personalization/screens/profile/profile.dart';
import 'package:GoGoods/utils/constants/image_strings.dart';
import 'package:GoGoods/utils/constants/sizes.dart';
import 'package:GoGoods/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/appbar/appbar.dart';
import '../../../../../utils/constants/colors.dart';

class GSettingsAppBar extends StatelessWidget {
  const GSettingsAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = GHelperFunctions.isDarkMode(context);

    return SliverAppBar(
      pinned: true,
      floating: true,
      expandedHeight: 180,
      backgroundColor: dark ? GColors.black : GColors.white,
      automaticallyImplyLeading: false,
      flexibleSpace: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          double top = constraints.biggest.height;
          return Stack(
            children: [
              /// --Background of the AppBar
              FlexibleSpaceBar(
                background: GPrimaryHeaderContainer(
                  child: Column(
                    children: [
                      GCustomAppBar(
                        title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: GSizes.spaceBtwSections),
                            Text(
                              'Account',
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineMedium!
                                  .apply(color: GColors.white),
                            ),
                          ],
                        ),
                      ),
                            const SizedBox(height: GSizes.spaceBtwSections/2),

                      /// --User Profile Card
                      ListTile(
                        leading: const GCircularBorderImage(
                          imageUrl: GImages.user,
                          width: 50,
                          height: 50,
                          borderRadius: 50,
                          padding: EdgeInsets.zero,
                          applyImageColor: false,
                        ),
                        title: Text('Omar Ashraf',style: Theme.of(context).textTheme.headlineSmall!.apply(color: GColors.white),),
                        subtitle: Text('omarashraf@gogoods.com',style: Theme.of(context).textTheme.bodyMedium!.apply(color: GColors.white),),
                        trailing: IconButton( onPressed: ()=> Get.to(()=> const ProfileScreen()) ,icon: const Icon(Iconsax.edit,color: GColors.white,)),
                      )
                    ],
                  ),
                ),
              ),

              /// --Pinned Title and it's Closing Animation
              AnimatedOpacity(
                duration: const Duration(milliseconds: 50),
                opacity: top <= 80.0 ? 1.0 : 0.0,
                child: Container(
                  height: 90,
                  color: top <= 80.0 ?( dark ? GColors.black : GColors.white) : Colors.transparent,
                  child: GCustomAppBar(
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Account',
                          style: Theme.of(context)
                              .textTheme
                              .headlineMedium,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

// GCounterIcon(
// icon: Iconsax.shopping_bag,
// iconColor: GColors.white,
// onPressed: () {},
// ),
