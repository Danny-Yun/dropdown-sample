import 'package:dropdown_sample1/screen/Home.dart';
import 'package:get/get.dart';

class RoutePage {
  static const String HOME_ROUTE = '/home';

  static movePage(String pageName) => Get.toNamed(pageName);

  static final List<GetPage> getPageList = [
    GetPage(
      name: HOME_ROUTE,
      page: () => Home(),
    ),
  ];
}
