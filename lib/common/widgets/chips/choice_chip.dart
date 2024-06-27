import 'package:GoGoods/common/widgets/custom_shapes/containers/circular_container.dart';
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
    final color = GHelperFunctions.getColor(label);

    return Theme(
      data: Theme.of(context).copyWith(
            canvasColor : Colors.transparent
          ),
      child: ChoiceChip(
        label: color != null ? const SizedBox() : Text(label),
        selected: isSelected,
        onSelected: onSelected,
        tooltip: label,
        selectedShadowColor: Colors.transparent,
        labelStyle: Theme.of(context)
            .textTheme
            .labelLarge!
            .apply(fontWeightDelta: 2, color: isSelected ? GColors.white : null),
        selectedColor: GColors.primary,
        backgroundColor: dark ? GColors.dark : GColors.light,
        avatar: color != null
            ? GCircularContainer(width: 50, height: 50, backgroundColor: color)
            : null,
        shape: color != null
            ? CircleBorder(side: BorderSide(width: 1, color: isSelected ? GColors.primary : GColors.grey))
            : RoundedRectangleBorder(side: const BorderSide(color: Colors.transparent), borderRadius: BorderRadius.circular(10)),
        padding: color !=null ? const EdgeInsets.all(2) : null,
        labelPadding: color !=null ? const EdgeInsets.all(0) : null,
        shadowColor: Colors.black,

      ),
    );
  }
}