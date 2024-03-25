import 'package:flutter/material.dart';
import 'package:responsive_dashboard/configuration/themes/text_themes.dart';
import 'package:responsive_dashboard/data/health_details.dart';

class ActivityDetailsValue extends StatelessWidget {
  ActivityDetailsValue({
    super.key,
    required this.index,
  });

  final int index;
  final healthDetails = HealthDetails();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, bottom: 4),
      child: Text(
        healthDetails.healthData[index].value,
        style: TextThemes.detailsCardValueStyle,
      ),
    );
  }
}
