import 'package:flutter/material.dart';
import 'package:todayq_assignment/utils/enums/theme_type.dart';

class AppColors {
  /// --------------------------------------------------------------------------

  //
  static final AppColor _primary = AppColor(
    // light: const Color.fromRGBO(235, 107, 34, 1),
    // dark: const Color.fromRGBO(235, 107, 34, 1),
    light: const Color.fromRGBO(0, 139, 252, 1),
    dark: const Color.fromRGBO(0, 139, 252, 1),
  );

  static final AppColor _secondary = AppColor(
    light: const Color.fromRGBO(18, 18, 18, 1),
    dark: const Color.fromRGBO(18, 18, 18, 1),
  );

  static final AppColor _pureWhite = AppColor(
    light: const Color.fromRGBO(255, 255, 255, 1),
    dark: const Color.fromRGBO(255, 255, 255, 1),
  );

  /// --------------------------------------------------------------------------

  // Text
  static final AppColor _primaryText = AppColor(
    light: const Color.fromRGBO(48, 48, 48, 1),
    dark: const Color.fromRGBO(255, 255, 255, 1),
  );

  static final AppColor _whiteText = AppColor(
    light: const Color.fromRGBO(255, 255, 255, 1),
    dark: const Color.fromRGBO(48, 48, 48, 1),
  );

  static final AppColor _lightGreyText = AppColor(
    light: const Color.fromRGBO(192, 192, 192, 1),
    dark: const Color.fromRGBO(192, 192, 192, 1),
  );

  static final AppColor _darkGreyText = AppColor(
    light: const Color.fromRGBO(167, 167, 167, 1),
    dark: const Color.fromRGBO(167, 167, 167, 1),
  );

  static final AppColor _redText = AppColor(
    light: const Color.fromRGBO(255, 0, 0, 1),
    dark: const Color.fromRGBO(255, 0, 0, 1),
  );

  static final AppColor _pureWhiteText = AppColor(
    light: const Color.fromRGBO(255, 255, 255, 1),
    dark: const Color.fromRGBO(255, 255, 255, 1),
  );

  /// --------------------------------------------------------------------------

  // Bg
  static final AppColor _primaryBg = AppColor(
    light: const Color.fromRGBO(255, 255, 255, 1),
    dark: const Color.fromRGBO(255, 255, 255, 1),
  );

  static final AppColor _whiteBg = AppColor(
    light: const Color.fromRGBO(255, 255, 255, 1),
    dark: const Color.fromRGBO(255, 255, 255, 1),
  );

  static final AppColor _authBg = AppColor(
    light: const Color.fromRGBO(255, 239, 231, 1),
    dark: const Color.fromRGBO(255, 239, 231, 1),
  );

  static final AppColor _lightPrimaryBg = AppColor(
    light: const Color.fromRGBO(255, 237, 243, 1),
    dark: const Color.fromRGBO(255, 237, 243, 1),
  );

  static final AppColor _lightGreyBg = AppColor(
    light: const Color.fromRGBO(242, 242, 242, 1),
    dark: const Color.fromRGBO(242, 242, 242, 1),
  );

  static final AppColor _textFieldBg = AppColor(
    light: const Color.fromRGBO(245, 245, 245, 1),
    dark: const Color.fromRGBO(245, 245, 245, 1),
  );

  static final AppColor _success = AppColor(
    light: const Color.fromRGBO(24, 186, 146, 1),
    dark: const Color.fromRGBO(24, 186, 146, 1),
  );

  static final AppColor _error = AppColor(
    light: const Color.fromRGBO(200, 0, 48, 1),
    dark: const Color.fromRGBO(200, 0, 48, 1),
  );

  static final AppColor _pureWhiteBg = AppColor(
    light: const Color.fromRGBO(255, 255, 255, 1),
    dark: const Color.fromRGBO(255, 255, 255, 1),
  );

  static final AppColor _eliteBg = AppColor(
    light: const Color.fromRGBO(253, 246, 231, 1),
    dark: const Color.fromRGBO(253, 246, 231, 1),
  );

  static final AppColor _ratedStarBg = AppColor(
    light: const Color.fromRGBO(255, 193, 7, 1),
    dark: const Color.fromRGBO(255, 193, 7, 1),
  );

  static final AppColor _unratedStarBg = AppColor(
    light: const Color.fromRGBO(255, 193, 7, 0.2),
    dark: const Color.fromRGBO(255, 193, 7, 0.2),
  );

  /// --------------------------------------------------------------------------

  // Borders
  static final AppColor _textFieldBorder = AppColor(
    light: const Color.fromRGBO(167, 167, 167, 1),
    dark: const Color.fromRGBO(167, 167, 167, 1),
  );

  /// --------------------------------------------------------------------------

  // Gradients
  static final AppGradient _primaryGradient = AppGradient(
    light: const LinearGradient(
      colors: [
        Color.fromRGBO(244, 1, 80, 1),
        Color.fromRGBO(178, 1, 59, 1),
      ],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    ),
    dark: const LinearGradient(
      colors: [
        Color.fromRGBO(244, 1, 80, 1),
        Color.fromRGBO(178, 1, 59, 1),
      ],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    ),
  );

  /// --------------------------------------------------------------------------

  static ThemeType type = ThemeType.light;

  /// --------------------------------------------------------------------------

  static Color get primary => _primary.color(type);
  static Color primaryWithT({double t = 0.1}) =>
      _primary.color(type).withOpacity(t);
  static Color get secondary => _secondary.color(type);
  static Color get pureWhite => _pureWhite.color(type);

  /// --------------------------------------------------------------------------

  static Color get primaryText => _primaryText.color(type);
  static Color get whiteText => _whiteText.color(type);
  static Color get lightGreyText => _lightGreyText.color(type);
  static Color get darkGreyText => _darkGreyText.color(type);
  static Color get redText => _redText.color(type);
  static Color get pureWhiteText => _pureWhiteText.color(type);

  /// --------------------------------------------------------------------------

  static Color get primaryBg => _primaryBg.color(type);
  static Color get whiteBg => _whiteBg.color(type);
  static Color get lightPrimaryBg => _lightPrimaryBg.color(type);
  static Color get lightGreyBg => _lightGreyBg.color(type);
  static Color get authBg => _authBg.color(type);
  static Color get textFieldBg => _textFieldBg.color(type);
  static Color get success => _success.color(type);
  static Color get error => _error.color(type);
  static Color get pureWhiteBg => _pureWhiteBg.color(type);
  static Color get eliteBg => _eliteBg.color(type);
  static Color get ratedStarBg => _ratedStarBg.color(type);
  static Color get unratedStarBg => _unratedStarBg.color(type);

  /// --------------------------------------------------------------------------

  static Color get textFieldBorder => _textFieldBorder.color(type);

  /// --------------------------------------------------------------------------

  static Gradient get primaryGradient => _primaryGradient.gradient(type);
}

class AppColor {
  AppColor({
    required this.light,
    required this.dark,
  });
  Color light;
  Color dark;

  Color color(ThemeType type) {
    return type == ThemeType.light ? light : dark;
  }
}

/// A Model of app's gradient
/// which carries `light` and `dark` version of this gradient
class AppGradient {
  AppGradient({
    required this.light,
    required this.dark,
  });

  Gradient light;
  Gradient dark;

  Gradient gradient(ThemeType type) {
    return type == ThemeType.light ? light : dark;
  }
}
