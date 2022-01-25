import 'package:dropdown_sample1/controller/DropdownButtonController.dart';
import 'package:dropdown_sample1/widgets/DropdownButton.dart';
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
          DropdownButtonWidget(),
          Obx(() {
            switch (menuList.values[DropdownButtonController.to.index.value]) {
              case menuList.menu1:
                return Expanded(
                  child: Center(
                    child: Text('page1'),
                  ),
                );
                break;
              case menuList.menu2:
                return Expanded(
                  child: Center(
                    child: Text('page2'),
                  ),
                );
                break;
              case menuList.menu3:
                return Expanded(
                  child: Center(
                    child: Text('page3'),
                  ),
                );
                break;
              case menuList.menu4:
                return Expanded(
                  child: Center(
                    child: Text('page4'),
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
