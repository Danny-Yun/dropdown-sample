import 'package:get/get.dart';

enum menuList { menu1, menu2, menu3, menu4 }

extension menuListExtension on menuList {
  String get name {
    switch (this) {
      case menuList.menu1:
        return "menu1";
      case menuList.menu2:
        return "menu2";
      case menuList.menu3:
        return "menu3";
      case menuList.menu4:
        return "menu4";
    }
  }
}

class DropdownButtonController extends GetxController {
  static DropdownButtonController get to => Get.find();

  Rx<menuList> currentItem = menuList.menu1.obs;

  void changeDropMenu(int? itemIndex) {
    var selectedItem =
        menuList.values.where((menu) => menu.index == itemIndex).first;
    currentItem(selectedItem);
  }
}
