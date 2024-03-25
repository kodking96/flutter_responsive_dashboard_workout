import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_dashboard/data/line_data.dart';
import 'package:responsive_dashboard/features/main/views/widgets/common/custom_card.dart';
import 'package:responsive_dashboard/features/main/views/widgets/line_chart/line_chart_widgets.dart';

class LineChartCard extends StatelessWidget {
  const LineChartCard({super.key});

  @override
  Widget build(BuildContext context) {
    final data = LineData();

    return CustomCard(
      child: Column(
        children: [
          const LineChartTitle(),
          const Gap(20),
          AspectRatio(
            aspectRatio: 16 / 6,
            child: LineChart(
              LineChartData(
                lineTouchData: const LineTouchData(
                  handleBuiltInTouches: true,
                ),
                gridData: const FlGridData(show: false),
                titlesData: getLineChartTitles(data),
                borderData: FlBorderData(show: false),
                lineBarsData: [
                  getLineChartBarData(data),
                ],
                minX: 0,
                maxX: 120,
                maxY: 105,
                minY: -5,
              ),
            ),
          )
        ],
      ),
    );
  }
}
