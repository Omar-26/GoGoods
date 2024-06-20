import 'package:flutter/material.dart';

import '../../../../../common/widgets/vertical_icon_with_text_widget.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_strings.dart';

class GHomeCategories extends StatelessWidget {
  const GHomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return GVerticalIconWithText(
            image: GImages.sportIcon,
            title: 'Sports',
            textColor: GColors.white,
            onTap: () {},
          );
        },
      ),
    );
  }
}
