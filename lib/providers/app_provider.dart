import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:todayq_assignment/providers/analysts/analysts_provider.dart';

/// Abstract class for the app provider.
abstract class AppProvider extends ChangeNotifier {
  /// List of providers.
  static List<SingleChildWidget> providers = [
    ChangeNotifierProvider(
      create: (context) => AnalystsProvider(),
    ),
  ];

  /// Cleans all the data.
  static void cleanAllData(BuildContext context) {
    context.read<AnalystsProvider>().clean();
  }

  /// Cleans the data.
  void clean();
}
