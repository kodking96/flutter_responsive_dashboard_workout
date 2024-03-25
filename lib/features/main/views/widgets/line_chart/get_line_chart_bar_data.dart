import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/configuration/themes/constants.dart';
import 'package:responsive_dashboard/data/line_data.dart';

LineChartBarData getLineChartBarData(LineData data) {
  return LineChartBarData(
    color: AppThemeConstants.selectionColor,
    barWidth: 2.5,
    belowBarData: BarAreaData(
      gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          AppThemeConstants.selectionColor.withOpacity(0.5),
          Colors.transparent
        ],
      ),
      show: true,
    ),
    dotData: const FlDotData(show: false),
    spots: data.spots,
  );
}
