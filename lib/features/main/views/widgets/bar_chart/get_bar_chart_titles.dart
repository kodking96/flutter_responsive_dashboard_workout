import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/data/bar_graph_data.dart';
import 'package:responsive_dashboard/features/main/views/widgets/common/false_axis_title.dart';

FlTitlesData getBarChartTitles(BarGraphData barGraphData) {
  return FlTitlesData(
    bottomTitles: AxisTitles(
      sideTitles: SideTitles(
        showTitles: true,
        getTitlesWidget: (value, meta) {
          return Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Text(
              barGraphData.label[value.toInt()],
              style: const TextStyle(
                  fontSize: 11,
                  color: Colors.grey,
                  fontWeight: FontWeight.w500),
            ),
          );
        },
      ),
    ),
    leftTitles: falseAxisTitle(),
    topTitles: falseAxisTitle(),
    rightTitles: falseAxisTitle(),
  );
}
