import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todayq_assignment/providers/analysts/analysts_provider.dart';
import 'package:todayq_assignment/utils/enums/analysts_tab.dart';
import 'package:todayq_assignment/views/analysts/widgets/analyst_widget.dart';
import 'package:todayq_assignment/views/app_widgets/app_empty_widget.dart';
import 'package:todayq_assignment/views/app_widgets/app_loader.dart';
import 'package:todayq_assignment/views/app_widgets/app_refresh_indicator.dart';
import 'package:todayq_assignment/views/app_widgets/app_spaces.dart';

/// Widget for the analysts tab view.
/// [analystsTab] is the tab for which the analysts are to be displayed.
class AnalystsTabView extends StatelessWidget {
  const AnalystsTabView({
    required this.analystsTab,
    super.key,
  });

  final AnalystsTab analystsTab;

  @override
  Widget build(BuildContext context) {
    context.read<AnalystsProvider>().setAnalysts(analystsTab, notify: false);

    return Consumer<AnalystsProvider>(
      builder: (context, provider, child) {
        final isLoading = provider.isLoading;

        /// If the analysts are being fetched, show the loader.
        if (isLoading) return const AppLoader();

        final analysts = provider.analysts[analystsTab] ?? [];

        /// If the analysts are empty, show the empty widget.
        if (analysts.isEmpty) return const AppEmptyWidget();

        /// Return the analysts.
        return AppRefreshIndicator(
          onRefresh: () async {
            /// Refresh the analysts.
            await provider.setAnalysts(
              analystsTab,
              refresh: true,
            );
          },
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 16,
            ),
            itemBuilder: (context, index) {
              final analyst = analysts[index];

              return AnalystWidget(
                index: index,
                tab: analystsTab,
                analyst: analyst,
              );
            },
            separatorBuilder: (context, index) {
              return AppSpaces.v8;
            },
            itemCount: analysts.length,
          ),
        );
      },
    );
  }
}
