import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/data/pic_chart_data.dart';

class ThePieChart extends StatelessWidget {
  const ThePieChart({
    super.key,
    required this.pieChartData,
  });

  final ChartData pieChartData;

  @override
  Widget build(BuildContext context) {
    return PieChart(
      PieChartData(
        sectionsSpace: 0,
        centerSpaceRadius: 70,
        startDegreeOffset: -90,
        sections: pieChartData.paiChartSelectionDatas,
      ),
    );
  }
}
