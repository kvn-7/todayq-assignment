import 'package:flutter/material.dart';
import 'package:todayq_assignment/utils/colors/app_colors.dart';
import 'package:todayq_assignment/utils/enums/analysts_tab.dart';
import 'package:todayq_assignment/utils/strings/app_strings.dart';
import 'package:todayq_assignment/views/analysts/widgets/analysts_tab_view.dart';
import 'package:todayq_assignment/views/app_widgets/app_scaffold.dart';
import 'package:todayq_assignment/views/app_widgets/app_tab_bar.dart';
import 'package:todayq_assignment/views/app_widgets/app_tab_view.dart';
import 'package:todayq_assignment/views/app_widgets/primary_app_bar.dart';

/// Screen for the analysts.
class AnalystsScreen extends StatefulWidget {
  const AnalystsScreen({super.key});

  @override
  State<AnalystsScreen> createState() => _AnalystsScreenState();
}

class _AnalystsScreenState extends State<AnalystsScreen>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _setController();
  }

  /// Sets the tab controller.
  void _setController() {
    /// Set the tab controller.
    _tabController = TabController(
      length: AnalystsTab.values.length,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBar: PrimaryAppBar.appBar(
        title: AppStrings.analysts,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.analytics_outlined,
              color: AppColors.primaryText,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          _tabBar,
          Expanded(
            child: _tabBarView,
          ),
        ],
      ),
    );
  }

  Widget get _tabBar {
    return AppTabBar(
      controller: _tabController,

      /// Map the tab items from the tab values.
      tabItems: AnalystsTab.values.map((tab) => tab.tabItem).toList(),
      onSelected: (index) {
        // _tabController.index = index;
        // setState(() {});
      },
    );
  }

  Widget get _tabBarView {
    return AppTabView(
      controller: _tabController,

      /// Map the tab views from the tab values.
      children: AnalystsTab.values
          .map((tab) => AnalystsTabView(analystsTab: tab))
          .toList(),
    );
  }
}
