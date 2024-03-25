import 'package:flutter/material.dart';
import 'package:responsive_dashboard/data/schedule_data.dart';
import 'package:responsive_dashboard/features/main/views/widgets/scheduled/scheduled_task_card.dart';

class ScheduledTasks extends StatelessWidget {
  const ScheduledTasks({super.key});

  @override
  Widget build(BuildContext context) {
    final data = ScheduleTasksData();

    return Column(
      children: [
        for (var index = 0; index < data.scheduled.length; index++)
          ScheduledTaskCard(
            title: data.scheduled[index].title,
            date: data.scheduled[index].date,
          )
      ],
    );
  }
}
