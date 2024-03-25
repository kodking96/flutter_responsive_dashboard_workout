import 'package:flutter/material.dart';
import 'package:responsive_dashboard/data/health_details.dart';

class ActivityDetailsIcon extends StatelessWidget {
  ActivityDetailsIcon({
    super.key,
    required this.index,
  });

  final int index;
  final healthDetails = HealthDetails();

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      healthDetails.healthData[index].icon,
      width: 30,
      height: 30,
    );
  }
}
