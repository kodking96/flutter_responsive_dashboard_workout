import 'package:flutter/material.dart';
import 'package:responsive_dashboard/configuration/themes/text_themes.dart';

class SummaryTextHeader extends StatelessWidget {
  const SummaryTextHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Summary",
      style: TextThemes.summaryTextStyle,
    );
  }
}
