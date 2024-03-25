import 'package:flutter/material.dart';
import 'package:responsive_dashboard/configuration/themes/constants.dart';
import 'package:responsive_dashboard/configuration/themes/text_themes.dart';

class PieChartIndicator extends StatelessWidget {
  const PieChartIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: AppThemeConstants.defaultPadding,
          ),
          Text(
            "70%",
            style: TextThemes.getPieChartStyle(context),
          ),
          const SizedBox(height: 8),
          const Text("of 100%")
        ],
      ),
    );
  }
}
