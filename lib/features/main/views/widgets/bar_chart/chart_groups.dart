import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/graph_model.dart';

List<BarChartGroupData> chartGroups(
    {required List<GraphModel> points, required Color color}) {
  return points
      .map(
        (point) => BarChartGroupData(
          x: point.x.toInt(),
          barRods: [
            BarChartRodData(
              toY: point.y,
              width: 12,
              color: color.withOpacity(point.y.toInt() > 4 ? 1 : 0.4),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(3.0),
                topRight: Radius.circular(3.0),
              ),
            )
          ],
        ),
      )
      .toList();
}
