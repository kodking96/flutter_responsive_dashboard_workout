import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_dashboard/configuration/themes/text_themes.dart';
import 'package:responsive_dashboard/data/side_menu_data.dart';
import 'package:responsive_dashboard/features/main/controllers/menu_selection_controller.dart';

class SideMenuEntryText extends GetView<MenuSelectionController> {
  SideMenuEntryText({
    super.key,
    required this.data,
    required this.index,
  });

  final SideMenuData data;
  final int index;

  final menuSelectionController = Get.find<MenuSelectionController>();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Text(
        data.menu[index].title,
        style: controller.menuIndex.value == index
            ? TextThemes.getMenuEntryTextStyle(
                fontWeight: FontWeight.w600,
                color: controller.menuIndex.value == index
                    ? Colors.black
                    : Colors.grey,
              )
            : TextThemes.getMenuEntryTextStyle(
                fontWeight: FontWeight.normal,
                color: controller.menuIndex.value == index
                    ? Colors.black
                    : Colors.grey,
              ),
      ),
    );
  }
}
