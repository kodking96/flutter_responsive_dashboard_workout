import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_dashboard/configuration/routes/app_pages.dart';
import 'package:responsive_dashboard/configuration/routes/app_routes.dart';
import 'package:responsive_dashboard/configuration/themes/app_theme.dart';

class DashboardApp extends StatelessWidget {
  const DashboardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Responsive Dashboard",
      scrollBehavior: const MaterialScrollBehavior().copyWith(
        dragDevices: {
          PointerDeviceKind.mouse,
          PointerDeviceKind.touch,
        },
      ),
      theme: appTheme,
      getPages: AppPages.pages,
      initialRoute: AppRoutes.mainRoutePage,
    );
  }
}
