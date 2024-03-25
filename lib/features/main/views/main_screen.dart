import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_dashboard/features/main/controllers/menu_selection_controller.dart';
import 'package:responsive_dashboard/features/main/views/components/dashboard.dart';
import 'package:responsive_dashboard/features/main/views/components/side_menu.dart';
import 'package:responsive_dashboard/features/main/views/components/summary.dart';
import 'package:responsive_dashboard/features/main/views/widgets/header/drawer_btn.dart';
import 'package:responsive_dashboard/features/main/views/widgets/header/end_drawer_btn.dart';
import 'package:responsive_dashboard/util/responsive.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  final menuSelectionController = Get.put(MenuSelectionController());

  @override
  Widget build(BuildContext context) {
    final isDesktop = Responsive.isDesktop(context);
    return Scaffold(
      drawer: !isDesktop ? const DrawerBtn() : null,
      endDrawer: const EndDrawerBtn(),
      body: SafeArea(
        child: Row(
          children: [
            if (isDesktop)
              Expanded(
                flex: 2,
                child: SizedBox(
                  child: SideMenu(),
                ),
              ),
            const Expanded(
              flex: 7,
              child: Dashboard(),
            ),
            if (isDesktop)
              const Expanded(
                flex: 3,
                child: Summary(),
              ),
          ],
        ),
      ),
    );
  }
}
