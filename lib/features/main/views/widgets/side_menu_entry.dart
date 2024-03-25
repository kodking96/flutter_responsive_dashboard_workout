import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_dashboard/configuration/themes/constants.dart';
import 'package:responsive_dashboard/data/side_menu_data.dart';
import 'package:responsive_dashboard/features/main/controllers/menu_selection_controller.dart';
import 'package:responsive_dashboard/features/main/views/widgets/side_menu_entry/side_menu_entry_icon.dart';
import 'package:responsive_dashboard/features/main/views/widgets/side_menu_entry/side_menu_entry_text.dart';

class SideMenuEntry extends GetView<MenuSelectionController> {
  SideMenuEntry({
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
      () => Container(
        margin: const EdgeInsets.symmetric(vertical: 5),
        decoration: BoxDecoration(
          color: controller.menuIndex.value == index
              ? AppThemeConstants.selectionColor
              : Colors.transparent,
        ),
        child: InkWell(
          onTap: () => controller.setIndex(index),
          child: Row(
            children: [
              SideMenuEntryIcon(data: data, index: index),
              SideMenuEntryText(data: data, index: index),
            ],
          ),
        ),
      ),
    );
  }
}
