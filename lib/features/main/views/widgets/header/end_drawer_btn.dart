import 'package:flutter/material.dart';
import 'package:responsive_dashboard/features/main/views/components/summary.dart';

class EndDrawerBtn extends StatelessWidget {
  const EndDrawerBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      child: const Summary(),
    );
  }
}
