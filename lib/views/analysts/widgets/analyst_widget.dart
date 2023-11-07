import 'package:flutter/material.dart';
import 'package:todayq_assignment/models/analysts/analyst_model.dart';
import 'package:todayq_assignment/utils/colors/app_colors.dart';
import 'package:todayq_assignment/utils/enums/analysts_tab.dart';
import 'package:todayq_assignment/utils/strings/app_strings.dart';
import 'package:todayq_assignment/utils/ui/app_text_styles.dart';
import 'package:todayq_assignment/utils/ui/app_ui_utils.dart';
import 'package:todayq_assignment/views/app_widgets/app_button.dart';
import 'package:todayq_assignment/views/app_widgets/app_image.dart';
import 'package:todayq_assignment/views/app_widgets/app_spaces.dart';
import 'package:todayq_assignment/views/app_widgets/app_text.dart';

/// Widget for the analyst.
/// [analyst] is the analyst.
/// [index] is the index of the analyst.
/// [tab] is the tab for which the analyst is to be displayed.
class AnalystWidget extends StatelessWidget {
  const AnalystWidget({
    required this.analyst,
    required this.index,
    required this.tab,
    super.key,
  });

  final AnalystsTab tab;
  final Analyst analyst;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.lightGreyBg,
        borderRadius: AppUIUtils.primaryBorderRadius,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 16,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _rank,
          AppSpaces.v4,
          _details,
        ],
      ),
    );
  }

  Widget get _rank {
    /// Add 1 to the index to get the rank.
    final rankText = AppStrings.hash + (index + 1).toString();

    return AppText(
      text: rankText,
      style: AppTextStyles.analystRank,
    );
  }

  Widget get _details {
    return Row(
      children: [
        _image,
        AppSpaces.h8,
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _name,
              AppSpaces.v4,
              _subscribers,
              AppSpaces.v4,
              _reward,
            ],
          ),
        ),
        AppSpaces.h16,
        _actions,
      ],
    );
  }

  Widget get _image {
    return AppImage.network(
      url: analyst.profilePhoto ??

          /// If the profile photo is not available, use a placeholder.
          'https://xsgames.co/randomusers/avatar.php?g=male',
      height: 80,
      width: 80,
      radius: AppUIUtils.circleRadius,
    );
  }

  Widget get _name {
    return AppText(
      text: analyst.name,
      style: AppTextStyles.analystName,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    );
  }

  Widget get _subscribers {
    final subscribersText =
        '${AppStrings.subscribers} ${analyst.totalSubscribers}';

    return AppText(
      text: subscribersText,
      style: AppTextStyles.analystSubscribers,
    );
  }

  Widget get _reward {
    final rewardValue = analyst.rewardsGenerated[tab]!;

    /// Add a plus sign if the reward is not negative.
    final rewardText = !rewardValue.isNegative
        ? AppStrings.plus + rewardValue.toString()
        : rewardValue.toString();

    return Row(
      children: [
        AppText(
          text: AppStrings.rewardGenerated,
          style: AppTextStyles.analystRewardGeneratedTitle,
        ),
        AppSpaces.h4,
        AppText(
          text: rewardText,
          style: AppTextStyles.analystRewardGeneratedValue(
            !rewardValue.isNegative,
          ),
        ),
      ],
    );
  }

  Widget get _actions {
    return Column(
      children: [
        /// If the analyst is subscribed by the user,
        /// show the subscribed button.
        if (analyst.isSubscribedByUser) _subscribed else _subscribe,
        _history,
      ],
    );
  }

  Widget get _subscribe {
    return AppButton(
      width: AppUIUtils.buttonWidth,
      onPressed: () {},
      text: AppStrings.subscribe,
      color: AppColors.secondary,
    );
  }

  Widget get _subscribed {
    return AppButton(
      width: AppUIUtils.buttonWidth,
      onPressed: () {},
      text: AppStrings.subscribed,
      color: AppColors.primary,
    );
  }

  Widget get _history {
    return AppButton(
      width: AppUIUtils.buttonWidth,
      onPressed: () {},
      text: AppStrings.history,
      color: Colors.transparent,
      textStyle: AppTextStyles.appButton.copyWith(
        color: AppColors.primaryText,
      ),
      elevation: 0,
      side: BorderSide(
        color: AppColors.primaryText,
      ),
    );
  }
}
