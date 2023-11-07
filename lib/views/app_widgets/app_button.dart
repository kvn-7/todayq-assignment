import 'package:flutter/material.dart';
import 'package:todayq_assignment/utils/colors/app_colors.dart';
import 'package:todayq_assignment/utils/ui/app_text_styles.dart';
import 'package:todayq_assignment/utils/ui/app_ui_utils.dart';
import 'package:todayq_assignment/views/app_widgets/app_loader.dart';
import 'package:todayq_assignment/views/app_widgets/app_text.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    required this.onPressed,
    required this.text,
    super.key,
    this.color,
    this.isLoading,
    this.padding,
    this.loaderColor,
    this.height,
    this.width,
    this.textStyle,
    this.constraints,
    this.prefix,
    this.elevation,
    this.side,
  });
  final void Function() onPressed;
  final String text;
  final Color? color;
  final TextStyle? textStyle;
  final bool? isLoading;
  final Color? loaderColor;
  final double? height;
  final double? width;
  final BoxConstraints? constraints;
  final EdgeInsets? padding;
  final Widget? prefix;
  final double? elevation;
  final BorderSide? side;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          side: side,
          elevation: elevation,
          shadowColor: color ?? AppColors.primary,
          shape: RoundedRectangleBorder(
            borderRadius: AppUIUtils.primaryBorderRadius,
          ),
          minimumSize: Size.zero,
          padding: padding ??
              const EdgeInsets.symmetric(
                horizontal: 8,
                vertical: 12,
              ),
          backgroundColor: color ?? AppColors.primary,
        ),
        child: isLoading ?? false
            ? AppLoader(
                center: false,
                color: loaderColor ?? AppColors.pureWhite,
                height: 30,
                width: 30,
              )
            : Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (prefix != null) prefix!,
                  AppText(
                    text: text,
                    style: textStyle ?? AppTextStyles.appButton,
                  ),
                ],
              ),
      ),
    );
  }
}
