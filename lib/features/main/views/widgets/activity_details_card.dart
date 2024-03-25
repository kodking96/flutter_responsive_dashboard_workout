import 'package:flutter/material.dart';
import 'package:responsive_dashboard/data/health_details.dart';
import 'package:responsive_dashboard/features/main/views/widgets/activity_details_card/activity_details_card_widgets.dart';
import 'package:responsive_dashboard/features/main/views/widgets/common/custom_card.dart';
import 'package:responsive_dashboard/util/responsive.dart';

class ActivityDetailsCard extends StatelessWidget {
  const ActivityDetailsCard({super.key});

  @override
  Widget build(BuildContext context) {
    final healthDetails = HealthDetails();

    return GridView.builder(
      itemCount: healthDetails.healthData.length,
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: Responsive.isMobile(context) ? 2 : 4,
        crossAxisSpacing: Responsive.isMobile(context) ? 12 : 15,
        mainAxisSpacing: 12.0,
      ),
      itemBuilder: (context, index) => CustomCard(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ActivityDetailsIcon(index: index),
            ActivityDetailsValue(index: index),
            ActivityDetailsTitle(index: index),
          ],
        ),
      ),
    );
  }
}
