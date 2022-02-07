import 'package:dropdown_sample1/controller/DropdownButtonController.dart';
import 'package:dropdown_sample1/screen/Page1.dart';
import 'package:dropdown_sample1/screen/Page2.dart';
import 'package:dropdown_sample1/screen/Page3.dart';
import 'package:dropdown_sample1/screen/Page4.dart';
import 'package:dropdown_sample1/widgets/DropdownButton.dart';
import 'package:dropdown_sample1/widgets/PopupMenuButton.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DropDown Sample'),
      ),
      body: Column(
        children: [
          // DropdownButtonWidget(),
          PopupMenuButtonWidget(),
          Obx(() {
            switch (DropdownButtonController.to.currentItem.value) {
              case menuList.menu1:
                return Expanded(
                  child: Center(
                    child: Page1(),
                  ),
                );
                break;
              case menuList.menu2:
                return Expanded(
                  child: Page2(),
                );
                break;
              case menuList.menu3:
                return Expanded(
                  child: Center(
                    child: Page3(),
                  ),
                );
                break;
              case menuList.menu4:
                return Expanded(
                  child: Center(
                    child: Page4(),
                  ),
                );
                break;
            }
            return Container();
          }),
        ],
      ),
    );
  }
}
