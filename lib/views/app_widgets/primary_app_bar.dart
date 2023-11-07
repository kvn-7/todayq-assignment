import 'package:flutter/material.dart';
import 'package:todayq_assignment/utils/colors/app_colors.dart';
import 'package:todayq_assignment/views/app_widgets/app_bar_title.dart';

class PrimaryAppBar {
  static AppBar appBar({
    required String title,
    bool primaryPage = false,
    List<Widget>? actions,
  }) {
    return AppBar(
      backgroundColor: AppColors.primaryBg,
      scrolledUnderElevation: 0,
      centerTitle: true,
      title: AppBarTitle(
        title: title,
      ),
      actions: actions,
    );
  }
}
