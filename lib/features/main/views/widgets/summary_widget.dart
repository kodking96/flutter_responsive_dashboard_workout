import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_dashboard/features/main/views/widgets/summary_widget/summary_details_card.dart';
import 'package:responsive_dashboard/features/main/views/widgets/summary_widget/summary_text_header.dart';

class SummaryWidget extends StatelessWidget {
  const SummaryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SummaryTextHeader(),
        Gap(16),
        SummaryDetailsCard(),
      ],
    );
  }
}
