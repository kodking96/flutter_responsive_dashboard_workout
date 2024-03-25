import 'package:flutter/material.dart';
import 'package:responsive_dashboard/configuration/themes/text_themes.dart';
import 'package:responsive_dashboard/data/health_details.dart';

class ActivityDetailsTitle extends StatelessWidget {
  ActivityDetailsTitle({
    super.key,
    required this.index,
  });

  final int index;
  final healthDetails = HealthDetails();

  @override
  Widget build(BuildContext context) {
    return Text(
      healthDetails.healthData[index].title,
      style: TextThemes.detailsCardTitleStyle,
    );
  }
}
