import 'package:todayq_assignment/helpers/dev/dev_helper.dart';
import 'package:todayq_assignment/models/analysts/analyst_model.dart';
import 'package:todayq_assignment/utils/enums/analysts_tab.dart';
import 'package:todayq_assignment/utils/lists/app_lists.dart';

/// Repository for the analysts screen.
class AnalystsRepository {
  /// Fetches the analysts for the given tab.
  /// [tab] is the tab for which the analysts are to be fetched.
  /// Returns a list of analysts.
  static Future<List<Analyst>> fetchAnalysts(AnalystsTab tab) async {
    try {
      /// Simulate a delay.
      await Future<void>.delayed(const Duration(milliseconds: 500));

      /// Sort the analysts by the rewards generated.
      /// This is done to simulate the sorting of analysts by rewards generated.
      final analystsJsons = AppLists.analysts
        ..sort(
          (a, b) => (b['rewardsGenerated'] as Map<String, num>)[tab.stringDB]!
              .compareTo(
            (a['rewardsGenerated'] as Map<String, num>)[tab.stringDB]!,
          ),
        );

      final analysts = <Analyst>[];

      /// Convert the jsons to analysts.
      for (final json in analystsJsons) {
        final analyst = Analyst.fromJson(json);

        analysts.add(analyst);
      }

      /// Return the analysts.
      return analysts;
    } catch (e) {
      /// Log the error.
      DevHelper.log(e);
      return [];
    }
  }
}
