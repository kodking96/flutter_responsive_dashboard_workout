import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_dashboard/data/side_menu_data.dart';
import 'package:responsive_dashboard/features/main/controllers/menu_selection_controller.dart';

class SideMenuEntryIcon extends GetView<MenuSelectionController> {
  SideMenuEntryIcon({
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
      () => Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 13,
          vertical: 7,
        ),
        child: Icon(
          data.menu[index].icon,
          color:
              controller.menuIndex.value == index ? Colors.black : Colors.grey,
        ),
      ),
    );
  }
}
