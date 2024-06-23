import 'package:GoGoods/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class GSettingsMenuTile extends StatelessWidget {
  const GSettingsMenuTile({super.key,
    required this.icon,
    required this.title,
    required this.subTitle,
    this.trailing,
    this.onTap,
  });

  final IconData icon;
  final String title, subTitle;
  final Widget? trailing;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        size: 28,
        color: GColors.primary,
      ),
      title: Text(title, style: Theme
          .of(context)
          .textTheme
          .titleMedium),
      subtitle: Text(subTitle, style: Theme
          .of(context)
          .textTheme
          .labelMedium),
      trailing: trailing,
      onTap: onTap,
      hoverColor: GColors.lightGrey,

    );
  }
}
