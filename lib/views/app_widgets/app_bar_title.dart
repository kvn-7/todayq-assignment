import 'package:flutter/material.dart';
import 'package:todayq_assignment/utils/ui/app_text_styles.dart';
import 'package:todayq_assignment/views/app_widgets/app_text.dart';

class AppBarTitle extends StatelessWidget {
  const AppBarTitle({required this.title, super.key});
  final String title;

  @override
  Widget build(BuildContext context) {
    return AppText(
      text: title,
      style: AppTextStyles.appBarTitle,
    );
  }
}
