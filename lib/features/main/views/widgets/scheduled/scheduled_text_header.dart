import 'package:flutter/material.dart';
import 'package:responsive_dashboard/configuration/themes/text_themes.dart';

class ScheduledTextHeader extends StatelessWidget {
  const ScheduledTextHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Schedule",
      style: TextThemes.scheduledTextStyle,
    );
  }
}
