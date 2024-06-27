import 'package:GoGoods/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

import '../../../../common/widgets/chips/choice_chip.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';

class GDetailsTab extends StatelessWidget {
  const GDetailsTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = GHelperFunctions.isDarkMode(context);

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // --Colors Title
        const Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
              flex: 1,
              child: GSectionHeading(title: 'Colors', showActionButton: false),
            ),
            Expanded(
              flex: 4,
              child: Divider(
                color: GColors.grey,
                endIndent: 15,
              ),
            ),
          ],
        ),
        const SizedBox(height: GSizes.spaceBtwItems / 2),
        // --Colors
        Column(
          children: [
            Wrap(
              spacing: GSizes.sm,
              children: [
                GChoiceChip(
                  label: 'Red',
                  isSelected: true,
                  onSelected: (value) {},
                ),
                GChoiceChip(
                  label: 'Black',
                  isSelected: false,
                  onSelected: (value) {},
                ),
                GChoiceChip(
                  label: 'Orange',
                  isSelected: false,
                  onSelected: (value) {},
                ),
              ],
            )
          ],
        ),

        const SizedBox(height: GSizes.spaceBtwItems),

        // --Sizes Title
        const Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
              flex: 1,
              child: GSectionHeading(
                title: 'Sizes',
                showActionButton: false,
              ),
            ),
            Expanded(
              flex: 5,
              child: Divider(
                color: GColors.grey,
                endIndent: 13,
              ),
            ),
          ],
        ),
        const SizedBox(height: GSizes.spaceBtwItems / 2),
        // --Sizes
        Column(
          children: [
            Wrap(
              spacing: GSizes.sm,
              children: [
                GChoiceChip(
                  label: 'Eu 32',
                  isSelected: false,
                  onSelected: (value) {},
                ),
                GChoiceChip(
                  label: 'EU 34',
                  isSelected: false,
                  onSelected: (value) {},
                ),
                GChoiceChip(
                  label: 'Eu 36',
                  isSelected: true,
                  onSelected: (value) {},
                ),
              ],
            )
          ],
        ),
        const SizedBox(height: GSizes.spaceBtwItems),

        // --Description Title
        const GSectionHeading(
          title: 'Description',
          showActionButton: false,
        ),
        const SizedBox(height: GSizes.spaceBtwItems / 2),
        // -Description
        ReadMoreText(
          'The Nike Air Max 270 React ENG combines a full-length React foam midsole with a 270 Max Air unit for unrivaled comfort and a striking visual experience.',
          trimLines: 3,
          trimMode: TrimMode.Line,
          trimCollapsedText: 'read more',
          trimExpandedText: ' show less',
          moreStyle: Theme.of(context)
              .textTheme
              .bodySmall!
              .apply(color: GColors.primary, fontWeightDelta: 1),
          lessStyle: Theme.of(context)
              .textTheme
              .bodySmall!
              .apply(color: GColors.primary, fontWeightDelta: 1),
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ],
    );
  }
}
