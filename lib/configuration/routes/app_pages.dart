import 'package:get/get.dart';
import 'package:responsive_dashboard/configuration/routes/app_routes.dart';
import 'package:responsive_dashboard/features/main/views/main_screen.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(
      name: AppRoutes.mainRoutePage,
      page: () => MainScreen(),
    ),
  ];
}
