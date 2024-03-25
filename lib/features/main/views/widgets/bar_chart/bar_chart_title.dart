import 'package:flutter/material.dart';
import 'package:responsive_dashboard/configuration/themes/text_themes.dart';
import 'package:responsive_dashboard/data/bar_graph_data.dart';

class BarChartTitle extends StatelessWidget {
  const BarChartTitle({
    super.key,
    required this.index,
    required this.barGraphData,
  });

  final int index;
  final BarGraphData barGraphData;

  @override
  Widget build(BuildContext context) {
    return Text(
      barGraphData.data[index].label,
      style: TextThemes.chartTitleStyle,
    );
  }
}
