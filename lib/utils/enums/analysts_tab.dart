import 'package:todayq_assignment/models/ui/app_tab_item_model.dart';
import 'package:todayq_assignment/utils/strings/app_strings.dart';

/// Enum for the analysts tab.
enum AnalystsTab {
  hotToday,
  week1,
  weeks2,
  month1;

  /// Returns the analysts tab from the given string.
  factory AnalystsTab.fromString(String type) {
    switch (type) {
      case 'hotToday':
        return AnalystsTab.hotToday;
      case 'week1':
        return AnalystsTab.week1;
      case 'weeks2':
        return AnalystsTab.weeks2;
      case 'month1':
        return AnalystsTab.month1;
      default:
        return AnalystsTab.hotToday;
    }
  }

  /// Returns the string from the given analysts tab.
  String get stringDB {
    switch (this) {
      case AnalystsTab.hotToday:
        return 'hotToday';
      case AnalystsTab.week1:
        return 'week1';
      case AnalystsTab.weeks2:
        return 'weeks2';
      case AnalystsTab.month1:
        return 'month1';
    }
  }

  /// Returns the analysts tab from the given index.
  AppTabItem get tabItem {
    switch (this) {
      case AnalystsTab.hotToday:
        return AppTabItem(
          index: 0,
          title: AppStrings.hotToday,
        );
      case AnalystsTab.week1:
        return AppTabItem(
          index: 1,
          title: AppStrings.week1,
        );
      case AnalystsTab.weeks2:
        return AppTabItem(
          index: 2,
          title: AppStrings.weeks2,
        );
      case AnalystsTab.month1:
        return AppTabItem(
          index: 3,
          title: AppStrings.month1,
        );
    }
  }
}
