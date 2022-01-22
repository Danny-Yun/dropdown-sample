import '/router/RoutePage.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'DropDown Sample',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: RoutePage.HOME_ROUTE,
      getPages: RoutePage.getPageList,
    );
  }
}
