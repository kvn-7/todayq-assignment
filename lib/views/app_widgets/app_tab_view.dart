import 'package:flutter/material.dart';

class AppTabView extends StatelessWidget {
  const AppTabView({
    required this.controller,
    required this.children,
    super.key,
  });

  final TabController controller;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      controller: controller,
      children: children,
    );
  }
}
