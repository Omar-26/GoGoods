import 'package:flutter/material.dart';

class GProductTitleText extends StatelessWidget {
  const GProductTitleText({
    super.key,
    required this.text,
    this.isSmallText = false,
    this.maxLines = 2,
    this.textAlign = TextAlign.left,
  });

  final String text;
  final bool isSmallText;
  final int maxLines;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: isSmallText
          ? Theme.of(context).textTheme.labelLarge
          : Theme.of(context).textTheme.titleSmall,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      textAlign: textAlign,
    );
  }
}
