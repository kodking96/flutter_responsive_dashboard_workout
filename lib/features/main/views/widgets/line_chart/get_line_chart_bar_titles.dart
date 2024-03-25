import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/data/line_data.dart';

FlTitlesData getLineChartTitles(LineData data) {
  return FlTitlesData(
    rightTitles: const AxisTitles(
      sideTitles: SideTitles(
        showTitles: false,
      ),
    ),
    topTitles: const AxisTitles(
      sideTitles: SideTitles(
        showTitles: false,
      ),
    ),
    bottomTitles: AxisTitles(
      sideTitles: SideTitles(
        showTitles: true,
        getTitlesWidget: (double value, TitleMeta meta) {
          return data.bottomTitle[value.toInt()] != null
              ? SideTitleWidget(
                  axisSide: meta.axisSide,
                  child: Text(data.bottomTitle[value.toInt()].toString(),
                      style: TextStyle(fontSize: 12, color: Colors.grey[400])),
                )
              : const SizedBox();
        },
      ),
    ),
    leftTitles: AxisTitles(
      sideTitles: SideTitles(
        getTitlesWidget: (double value, TitleMeta meta) {
          return data.leftTitle[value.toInt()] != null
              ? Text(data.leftTitle[value.toInt()].toString(),
                  style: TextStyle(fontSize: 12, color: Colors.grey[400]))
              : const SizedBox();
        },
        showTitles: true,
        interval: 1,
        reservedSize: 40,
      ),
    ),
  );
}
