import 'package:dropdown_sample1/controller/DropdownButtonController.dart';
import 'package:get/get.dart';

class DropdownButtonControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DropdownButtonController());
  }
}
