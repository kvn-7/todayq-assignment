import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:todayq_assignment/utils/colors/app_colors.dart';
import 'package:todayq_assignment/utils/ui/app_text_styles.dart';
import 'package:todayq_assignment/views/app_widgets/app_spaces.dart';
import 'package:todayq_assignment/views/app_widgets/app_text.dart';

class AppLoader extends StatelessWidget {
  const AppLoader({
    super.key,
    this.color,
    this.height,
    this.width,
    this.text,
    this.center = true,
  });
  final Color? color;
  final double? height;
  final double? width;
  final String? text;
  final bool center;

  @override
  Widget build(BuildContext context) {
    if (center) {
      return Center(
        child: _loader,
      );
    }

    return _loader;
  }

  Widget get _loader {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: height ?? 60,
          width: width ?? 60,
          child: LoadingIndicator(
            indicatorType: Indicator.circleStrokeSpin,
            colors: [
              color ?? AppColors.primary,
            ],
          ),
        ),
        if (text != null) ...[
          AppSpaces.v4,
          AppText(
            text: text!,
            style: AppTextStyles.defaultLoaderText,
          ),
        ],
      ],
    );
  }
}
