import 'package:flutter/material.dart';
import 'package:todayq_assignment/utils/ui/app_text_styles.dart';

class AppText extends StatelessWidget {
  const AppText({
    required this.text,
    super.key,
    this.style,
    this.align,
    this.overflow,
    this.maxLines,
  });
  final String text;
  final TextStyle? style;
  final TextAlign? align;
  final TextOverflow? overflow;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style ?? AppTextStyles.defaultText,
      textAlign: align,
      overflow: overflow,
      maxLines: maxLines,
    );
  }
}
