import 'package:get/get.dart';

enum menuList { menu1, menu2, menu3, menu4 }

extension menuListExtension on menuList {
  String get name {
    switch (this) {
      case menuList.menu1:
        return "page1";
      case menuList.menu2:
        return "page2";
      case menuList.menu3:
        return "page3";
      case menuList.menu4:
        return "page4";
    }
  }
}

class DropdownButtonController extends GetxController {
  static DropdownButtonController get to => Get.find();

  RxInt index = 0.obs;

  void changeDropMenu(int? itemIndex) {
    index(itemIndex);
  }
}
