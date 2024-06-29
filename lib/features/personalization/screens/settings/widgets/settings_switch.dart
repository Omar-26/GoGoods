import 'package:flutter/material.dart';

import '../../../../../utils/constants/colors.dart';

class GSwitch extends StatelessWidget {
  const GSwitch({
    super.key,
    required this.isActive,
    required this.onChanged,
  });

  final bool isActive;
  final Function(bool) onChanged;

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: isActive,
      onChanged: onChanged,
      activeColor: GColors.white,
      overlayColor: MaterialStateProperty.all(GColors.primary),
      trackOutlineColor: MaterialStateProperty.all(GColors.primary),
      activeTrackColor: GColors.primary,
      inactiveTrackColor: GColors.primary.withOpacity(0.15),
      inactiveThumbColor: GColors.primary,
    );
  }
}
