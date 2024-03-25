import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_dashboard/configuration/themes/constants.dart';
import 'package:responsive_dashboard/configuration/themes/text_themes.dart';
import 'package:responsive_dashboard/features/main/views/widgets/common/custom_card.dart';

class ScheduledTaskCard extends StatelessWidget {
  const ScheduledTaskCard({
    super.key,
    required this.title,
    required this.date,
  });

  final String title;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: CustomCard(
        color: AppThemeConstants.scheduleTaskColor,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title, style: TextThemes.scheduledTitleStyle),
                    const Gap(2),
                    Text(date, style: TextThemes.scheduledDateStyle),
                  ],
                ),
                const Icon(Icons.more)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
