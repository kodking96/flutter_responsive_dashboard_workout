import 'package:flutter/material.dart';
import 'package:responsive_dashboard/configuration/themes/constants.dart';
import 'package:responsive_dashboard/features/main/views/widgets/common/custom_card.dart';
import 'package:responsive_dashboard/features/main/views/widgets/summary_widget/build_details.dart';

class SummaryDetailsCard extends StatelessWidget {
  const SummaryDetailsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: CustomCard(
        color: AppThemeConstants.summaryCardColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            buildDetails(key: 'Cal', value: '305'),
            buildDetails(key: 'Steps', value: '10983'),
            buildDetails(key: 'Distance', value: '7km'),
            buildDetails(key: 'Sleep', value: '7hr'),
          ],
        ),
      ),
    );
  }
}
