import 'package:flutter/material.dart';
import 'package:todayq_assignment/utils/colors/app_colors.dart';

class AppRefreshIndicator extends StatelessWidget {
  const AppRefreshIndicator({
    required this.child,
    required this.onRefresh,
    super.key,
  });

  final Widget child;
  final Future<void> Function() onRefresh;

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      backgroundColor: AppColors.primary,
      color: AppColors.whiteText,
      onRefresh: onRefresh,
      child: child,
    );
  }
}
