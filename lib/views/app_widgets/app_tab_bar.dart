import 'package:flutter/material.dart';
import 'package:todayq_assignment/models/ui/app_tab_item_model.dart';
import 'package:todayq_assignment/utils/colors/app_colors.dart';
import 'package:todayq_assignment/utils/ui/app_text_styles.dart';
import 'package:todayq_assignment/views/app_widgets/app_text.dart';

/// Widget for the app tab bar.
/// [controller] is the tab controller.
/// [tabItems] is the list of tab items.
/// [onSelected] is the function to be executed when a tab is selected.
class AppTabBar extends StatefulWidget {
  const AppTabBar({
    required this.controller,
    required this.tabItems,
    required this.onSelected,
    super.key,
  });

  final TabController controller;
  final List<AppTabItem> tabItems;
  final void Function(int index) onSelected;

  @override
  State<AppTabBar> createState() => _AppTabBarState();
}

class _AppTabBarState extends State<AppTabBar> {
  late TabController _controller;
  late List<AppTabItem> _tabItems;
  late void Function(int index) _onSelected;

  bool _swipeIsInProgress = false;
  bool _tapIsBeingExecuted = false;
  late int _selectedIndex;
  late int _prevIndex;

  @override
  void initState() {
    super.initState();
    _setController();
  }

  /// Sets the tab controller.
  void _setController() {
    _controller = widget.controller;
    _tabItems = widget.tabItems;
    _onSelected = widget.onSelected;
    _selectedIndex = _controller.index;
    _prevIndex = _selectedIndex;

    _controller.animation?.addListener(_listenForSlide);
    _controller.addListener(_listenForTap);
  }

  /// Listens for the slide.
  void _listenForSlide() {
    /// If the tab is being swiped, change the selected index.
    /// If the tab is not being swiped, revert the selected index.
    /// This is done to prevent the tab from changing when the user swipes
    /// the tab but does not swipe it enough to change the tab.
    /// This is done to prevent the tab from changing when the user swipes
    /// the tab but does not swipe it enough to change the tab.
    if (!_tapIsBeingExecuted &&
        !_swipeIsInProgress &&
        (_controller.offset >= 0.5 || _controller.offset <= -0.5)) {
      final newIndex = _controller.offset > 0
          ? _controller.index + 1
          : _controller.index - 1;
      _swipeIsInProgress = true;
      _prevIndex = _selectedIndex;
      setState(() {
        _selectedIndex = newIndex;
      });
    } else {
      if (!_tapIsBeingExecuted &&
          _swipeIsInProgress &&
          ((_controller.offset < 0.5 && _controller.offset > 0) ||
              (_controller.offset > -0.5 && _controller.offset < 0))) {
        _swipeIsInProgress = false;
        setState(() {
          _selectedIndex = _prevIndex;
        });
      }
    }
  }

  /// Listens for the tap.
  /// If the tab is being tapped, change the selected index.
  /// If the tab is not being tapped, revert the selected index.
  void _listenForTap() {
    _swipeIsInProgress = false;
    setState(() {
      _selectedIndex = _controller.index;
    });
    if (_tapIsBeingExecuted == true) {
      _tapIsBeingExecuted = false;
    } else {
      if (_controller.indexIsChanging) {
        _tapIsBeingExecuted = true;
      }
    }
  }

  void removeListeners() {
    _controller.animation?.removeListener(_listenForSlide);
    _controller.removeListener(_listenForTap);
  }

  @override
  void dispose() {
    removeListeners();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TabBar(
      onTap: (value) {
        _onSelected(value);
      },
      controller: _controller,
      indicatorColor: AppColors.primary,
      indicatorSize: TabBarIndicatorSize.tab,
      tabs: _tabItems.map(_tabItemWidget).toList(),
    );
  }

  Widget _tabItemWidget(AppTabItem item) {
    final isSelected = item.index == _selectedIndex;

    return Tab(
      child: AppText(
        text: item.title,
        style: AppTextStyles.appTabItem(isSelected),
      ),
    );
  }
}
