import 'package:flutter/material.dart';
import 'package:responsive_dashboard/configuration/themes/constants.dart';
import 'package:responsive_dashboard/data/side_menu_data.dart';
import 'package:responsive_dashboard/features/main/views/widgets/side_menu_entry.dart';

class SideMenu extends StatelessWidget {
  SideMenu({super.key});

  final data = SideMenuData();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 20),
      color: AppThemeConstants.sideMenuColor,
      child: ListView.builder(
        itemCount: data.menu.length,
        itemBuilder: (context, index) => SideMenuEntry(
          data: data,
          index: index,
        ),
      ),
    );
  }
}
