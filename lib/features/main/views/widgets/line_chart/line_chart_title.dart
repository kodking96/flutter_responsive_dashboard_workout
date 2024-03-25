import 'package:flutter/material.dart';
import 'package:responsive_dashboard/configuration/themes/text_themes.dart';

class LineChartTitle extends StatelessWidget {
  const LineChartTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Steps Overview",
      style: TextThemes.chartTitleStyle,
    );
  }
}
