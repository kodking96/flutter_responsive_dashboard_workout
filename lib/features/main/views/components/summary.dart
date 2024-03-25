import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_dashboard/configuration/themes/constants.dart';
import 'package:responsive_dashboard/features/main/views/widgets/pie_chart_widget.dart';
import 'package:responsive_dashboard/features/main/views/widgets/scheduled.dart';
import 'package:responsive_dashboard/features/main/views/widgets/summary_widget.dart';

class Summary extends StatelessWidget {
  const Summary({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          const BoxDecoration(color: AppThemeConstants.cardBackgroundColor),
      child: const Padding(
        padding: EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Gap(20),
              PieChartWidget(),
              SummaryWidget(),
              Gap(40),
              Scheduled(),
            ],
          ),
        ),
      ),
    );
  }
}
