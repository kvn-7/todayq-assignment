import 'package:todayq_assignment/models/analysts/analyst_model.dart';
import 'package:todayq_assignment/providers/app_provider.dart';
import 'package:todayq_assignment/repositories/analysts/analysts_repo.dart';
import 'package:todayq_assignment/utils/enums/analysts_tab.dart';

/// Provider for the analysts screen.
class AnalystsProvider extends AppProvider {
  /// The analysts for each tab.
  final Map<AnalystsTab, List<Analyst>> _analysts = {};
  Map<AnalystsTab, List<Analyst>> get analysts => _analysts;

  /// Whether the analysts are currently being fetched.
  bool _isLoading = false;
  bool get isLoading => _isLoading;

  /// Cached analysts for each tab.
  final Map<AnalystsTab, List<Analyst>> _cachedAnalysts = {};
  Map<AnalystsTab, List<Analyst>> get cachedAnalysts => _cachedAnalysts;

  /// Fetches the analysts for the given tab.
  /// [analystsTab] is the tab for which the analysts are to be fetched.
  /// [notify] is whether to notify the listeners after fetching the analysts.
  /// [refresh] is whether to refresh the analysts.
  Future<void> setAnalysts(
    AnalystsTab analystsTab, {
    bool notify = true,
    bool refresh = false,
  }) async {
    /// If the analysts are already cached, use them.
    if (!refresh) {
      _analysts[analystsTab] = _cachedAnalysts[analystsTab] ?? [];

      /// If the analysts are already fetched, return.
      if (_analysts[analystsTab]?.isNotEmpty ?? false) {
        if (notify) notifyListeners();
        return;
      }
    }

    /// If the analysts are not cached, fetch them.

    _isLoading = true;
    if (notify) notifyListeners();

    /// Fetch the analysts.
    final result = await AnalystsRepository.fetchAnalysts(analystsTab);

    if (!_isLoading) return;

    _analysts[analystsTab] = result;

    /// Cache the analysts.
    _cachedAnalysts[analystsTab] = _analysts[analystsTab] ?? [];

    _isLoading = false;
    notifyListeners();
  }

  @override
  void clean() {
    _isLoading = false;
    _analysts.clear();
    _cachedAnalysts.clear();
    notifyListeners();
  }
}
