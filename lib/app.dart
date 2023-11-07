import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:todayq_assignment/providers/app_provider.dart';
import 'package:todayq_assignment/utils/colors/app_colors.dart';
import 'package:todayq_assignment/utils/keys/app_ui_keys.dart';
import 'package:todayq_assignment/views/analysts/analysts_screen.dart';

class Todayq extends StatefulWidget {
  const Todayq({super.key});

  @override
  State<Todayq> createState() => _TodayqState();
}

class _TodayqState extends State<Todayq> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: AppProvider.providers,
      child: ScreenUtilInit(
        builder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Todayq',
            theme: _themeData,
            navigatorKey: AppUIKeys.navKey,
            home: _home,
          );
        },
      ),
    );
  }

  Widget get _home {
    return const AnalystsScreen();
  }

  ThemeData get _themeData => ThemeData(
        textSelectionTheme: _textSelectionThemeData,
        colorScheme: _colorScheme,
        useMaterial3: true,
      );

  TextSelectionThemeData get _textSelectionThemeData => TextSelectionThemeData(
        cursorColor: AppColors.primary,
        selectionColor: AppColors.primary.withOpacity(0.3),
        selectionHandleColor: AppColors.primary,
      );

  ColorScheme get _colorScheme => ColorScheme.fromSeed(
        seedColor: AppColors.primary,
        background: AppColors.primaryBg,
        surface: AppColors.primaryBg,
      );
}
