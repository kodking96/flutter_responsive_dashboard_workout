import 'package:flutter/material.dart';
import 'package:responsive_dashboard/data/pic_chart_data.dart';
import 'package:responsive_dashboard/features/main/views/widgets/pie_chart/pie_chart_indicator.dart';
import 'package:responsive_dashboard/features/main/views/widgets/pie_chart/the_pie_chart.dart';

class PieChartWidget extends StatelessWidget {
  const PieChartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final pieChartData = ChartData();

    return SizedBox(
      height: 200,
      child: Stack(
        children: [
          ThePieChart(pieChartData: pieChartData),
          const PieChartIndicator(),
        ],
      ),
    );
  }
}
