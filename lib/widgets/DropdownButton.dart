import 'package:dropdown_sample1/controller/DropdownButtonController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DropdownButtonWidget extends StatelessWidget {
  const DropdownButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => DropdownButton(
        value: DropdownButtonController.to.index.value,
        onChanged: (int? value) => {
          DropdownButtonController.to.changeDropMenu(value),
        },
        items: menuList.values
            .map(
              (menu) => DropdownMenuItem(
                value: menu.index,
                child: Text(menu.name),
              ),
            )
            .toList(),
        // items: [
        //   DropdownMenuItem(
        //     value: 0,
        //     child: Text('menu 1'),
        //   ),
        //   DropdownMenuItem(
        //     value: 1,
        //     child: Text('menu 2'),
        //   ),
        //   DropdownMenuItem(
        //     value: 2,
        //     child: Text('menu 3'),
        //   ),
        //   DropdownMenuItem(
        //     value: 3,
        //     child: Text('menu 4'),
        //   ),
        // ],
      ),
    );
  }
}
