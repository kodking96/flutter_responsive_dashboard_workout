import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_dashboard/features/main/views/components/summary.dart';
import 'package:responsive_dashboard/features/main/views/widgets/activity_details_card.dart';
import 'package:responsive_dashboard/features/main/views/widgets/bar_chart_card.dart';
import 'package:responsive_dashboard/features/main/views/widgets/header.dart';
import 'package:responsive_dashboard/features/main/views/widgets/line_chart_card.dart';
import 'package:responsive_dashboard/util/responsive.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          children: [
            const Gap(18),
            const Header(),
            const Gap(18),
            const ActivityDetailsCard(),
            const Gap(18),
            const LineChartCard(),
            const Gap(18),
            const BarGraphCard(),
            const Gap(18),
            if (Responsive.isTablet(context))
              const Column(
                children: [Summary(), Gap(18)],
              )
          ],
        ),
      ),
    );
  }
}
