import 'package:flutter/material.dart';

class AppTabItem {
  AppTabItem({
    required this.index,
    required this.title,
  });

  int index;
  String title;

  AppTabItem copyWith({
    int? index,
    String? title,
    Widget? view,
  }) {
    return AppTabItem(
      index: index ?? this.index,
      title: title ?? this.title,
    );
  }
}
