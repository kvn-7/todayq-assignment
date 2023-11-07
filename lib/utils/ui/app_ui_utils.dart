import 'package:flutter/material.dart';

class AppUIUtils {
  static double get primaryRadius => 6;
  static BorderRadius get primaryBorderRadius =>
      BorderRadius.circular(primaryRadius);
  static BorderRadius get circleRadius => BorderRadius.circular(100);

  /// --------------------------------------------------------------------------

  static ShapeBorder get primaryCardShape => RoundedRectangleBorder(
        borderRadius: AppUIUtils.primaryBorderRadius,
      );

  static double get buttonWidth => 90;
}
