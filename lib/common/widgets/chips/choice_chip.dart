import 'package:GoGoods/utils/constants/colors.dart';
import 'package:GoGoods/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class GChoiceChip extends StatelessWidget {
  const GChoiceChip({
    super.key,
    required this.label,
    required this.isSelected,
    this.onSelected,
  });

  final String label;
  final bool isSelected;
  final void Function(bool)? onSelected;

  @override
  Widget build(BuildContext context) {
    final dark = GHelperFunctions.isDarkMode(context);
    return ChoiceChip(
      label: Text(label),
      selected: isSelected,
      onSelected: onSelected,
      labelStyle: Theme.of(context)
          .textTheme
          .labelLarge!
          .apply(fontWeightDelta: 2, color: isSelected ? GColors.white : null),
      selectedColor: GColors.primary,
      backgroundColor: dark ? GColors.dark : GColors.light,
    );
  }
}
