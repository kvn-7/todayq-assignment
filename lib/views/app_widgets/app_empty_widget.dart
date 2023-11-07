import 'package:flutter/material.dart';
import 'package:todayq_assignment/utils/strings/app_strings.dart';
import 'package:todayq_assignment/utils/ui/app_text_styles.dart';
import 'package:todayq_assignment/views/app_widgets/app_text.dart';

class AppEmptyWidget extends StatelessWidget {
  const AppEmptyWidget({super.key, this.text});
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AppText(
        text: text ?? AppStrings.nothingToShow,
        style: AppTextStyles.empty,
      ),
    );
  }
}
