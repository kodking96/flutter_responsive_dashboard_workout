import 'package:flutter/material.dart';
import 'package:responsive_dashboard/features/main/views/components/side_menu.dart';

class DrawerBtn extends StatelessWidget {
  const DrawerBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      child: SideMenu(),
    );
  }
}
