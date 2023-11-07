// ignore_for_file: avoid_positional_boolean_parameters

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todayq_assignment/utils/colors/app_colors.dart';

class AppTextStyles {
  static double get extraLargeFontSize => 20;
  static double get largeFontSize => 18;
  static double get defaultFontSize => 16;
  static double get smallFontSize => 14;
  static double get extraSmallFontSize => 12;

  static TextStyle appStyle({required TextStyle textStyle}) =>
      GoogleFonts.openSans(textStyle: textStyle);

  /// --------------------------------------------------------------------------

  //
  static TextStyle get defaultText => appStyle(
        textStyle: TextStyle(
          fontSize: defaultFontSize,
          fontWeight: FontWeight.w400,
          color: AppColors.primaryText,
        ),
      );
  static TextStyle get appButton => appStyle(
        textStyle: TextStyle(
          fontSize: extraSmallFontSize,
          fontWeight: FontWeight.w500,
          color: AppColors.whiteText,
        ),
      );
  static TextStyle get defaultTextButton => appStyle(
        textStyle: TextStyle(
          fontSize: smallFontSize,
          fontWeight: FontWeight.w500,
          color: AppColors.primary,
        ),
      );
  static TextStyle get appBarTitle => appStyle(
        textStyle: TextStyle(
          fontSize: largeFontSize,
          fontWeight: FontWeight.bold,
          color: AppColors.primaryText,
        ),
      );
  static TextStyle bottomNavBar(bool isSelected) => appStyle(
        textStyle: TextStyle(
          fontSize: extraSmallFontSize,
          fontWeight: isSelected ? FontWeight.w600 : FontWeight.w400,
          color: isSelected ? AppColors.primary : AppColors.primaryText,
        ),
      );
  static TextStyle get defaultLoaderText => appStyle(
        textStyle: TextStyle(
          fontSize: smallFontSize,
          fontWeight: FontWeight.w500,
          color: AppColors.primaryText,
        ),
      );
  static TextStyle get textFieldText => appStyle(
        textStyle: TextStyle(
          fontSize: defaultFontSize,
          fontWeight: FontWeight.normal,
          color: AppColors.primaryText,
        ),
      );
  static TextStyle get textFieldHint => appStyle(
        textStyle: TextStyle(
          fontSize: smallFontSize,
          fontWeight: FontWeight.normal,
          color: AppColors.lightGreyText,
        ),
      );
  static TextStyle get textFieldTitle => appStyle(
        textStyle: TextStyle(
          fontSize: smallFontSize,
          fontWeight: FontWeight.w600,
          color: AppColors.primaryText,
        ),
      );
  static TextStyle get requiredSign => appStyle(
        textStyle: TextStyle(
          fontSize: smallFontSize,
          fontWeight: FontWeight.w600,
          color: AppColors.redText,
        ),
      );
  static TextStyle get textFieldExample => appStyle(
        textStyle: TextStyle(
          fontSize: extraSmallFontSize,
          fontWeight: FontWeight.w500,
          color: AppColors.darkGreyText,
        ),
      );
  static TextStyle textFieldLabel({required bool isFloating}) => appStyle(
        textStyle: TextStyle(
          fontSize: isFloating ? extraSmallFontSize : smallFontSize,
          fontWeight: FontWeight.normal,
          color: isFloating ? AppColors.primaryText : AppColors.lightGreyText,
        ),
      );
  static TextStyle get bottomSheetTitle => appStyle(
        textStyle: TextStyle(
          fontSize: largeFontSize,
          fontWeight: FontWeight.bold,
          color: AppColors.primaryText,
        ),
      );
  static TextStyle get logout => appStyle(
        textStyle: TextStyle(
          fontSize: defaultFontSize,
          fontWeight: FontWeight.w500,
          color: AppColors.error,
        ),
      );
  static TextStyle get alertDialogTitle => appStyle(
        textStyle: TextStyle(
          fontSize: defaultFontSize,
          fontWeight: FontWeight.w600,
          color: AppColors.primaryText,
        ),
      );
  static TextStyle get alertDialogText => appStyle(
        textStyle: TextStyle(
          fontSize: smallFontSize,
          fontWeight: FontWeight.w500,
          color: AppColors.primaryText,
        ),
      );
  static TextStyle get empty => appStyle(
        textStyle: TextStyle(
          fontSize: defaultFontSize,
          fontWeight: FontWeight.w400,
          color: AppColors.primaryText,
        ),
      );
  static TextStyle filterButton(bool isSelected) => appStyle(
        textStyle: TextStyle(
          fontSize: smallFontSize,
          fontWeight: FontWeight.w500,
          color: isSelected ? AppColors.primary : AppColors.darkGreyText,
        ),
      );
  static TextStyle get appRadioLabel => appStyle(
        textStyle: TextStyle(
          fontSize: smallFontSize,
          fontWeight: FontWeight.w400,
          color: AppColors.primaryText,
        ),
      );
  static TextStyle get nameImage => appStyle(
        textStyle: TextStyle(
          fontSize: extraLargeFontSize,
          fontWeight: FontWeight.bold,
          color: AppColors.pureWhiteText,
        ),
      );
  static TextStyle appTabItem(bool isSelected) => appStyle(
        textStyle: TextStyle(
          fontSize: smallFontSize,
          fontWeight: isSelected ? FontWeight.w600 : FontWeight.w400,
          color: isSelected ? AppColors.primaryText : AppColors.primaryText,
        ),
      );

  /// --------------------------------------------------------------------------

  // Analysts
  static TextStyle get analystRank => appStyle(
        textStyle: TextStyle(
          fontSize: smallFontSize,
          fontWeight: FontWeight.w500,
          color: AppColors.primaryText,
        ),
      );
  static TextStyle get analystName => appStyle(
        textStyle: TextStyle(
          fontSize: defaultFontSize,
          fontWeight: FontWeight.bold,
          color: AppColors.primaryText,
        ),
      );
  static TextStyle get analystRewardGeneratedTitle => appStyle(
        textStyle: TextStyle(
          fontSize: extraSmallFontSize,
          fontWeight: FontWeight.w500,
          color: AppColors.primaryText,
        ),
      );
  static TextStyle analystRewardGeneratedValue(bool isPlus) => appStyle(
        textStyle: TextStyle(
          fontSize: extraSmallFontSize,
          fontWeight: FontWeight.w500,
          color: isPlus ? AppColors.success : AppColors.error,
        ),
      );
  static TextStyle get analystSubscribers => appStyle(
        textStyle: TextStyle(
          fontSize: extraSmallFontSize,
          fontWeight: FontWeight.w400,
          color: AppColors.darkGreyText,
        ),
      );
}
