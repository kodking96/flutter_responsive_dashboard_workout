import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_dashboard/features/main/views/widgets/scheduled/scheduled_tasks.dart';
import 'package:responsive_dashboard/features/main/views/widgets/scheduled/scheduled_text_header.dart';

class Scheduled extends StatelessWidget {
  const Scheduled({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ScheduledTextHeader(),
        Gap(12),
        ScheduledTasks(),
      ],
    );
  }
}
