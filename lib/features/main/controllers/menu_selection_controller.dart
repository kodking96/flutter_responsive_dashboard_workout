import 'package:get/get.dart';

class MenuSelectionController extends GetxController {
  var menuIndex = 0.obs;

  void setIndex(int index) {
    menuIndex.value = index;
  }
}
