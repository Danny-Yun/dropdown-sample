import 'package:dropdown_sample1/controller/DropdownButtonController.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class PopupMenuButtonWidget extends StatelessWidget {
  const PopupMenuButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      // offset - 메뉴 리스트의 위치를 이동
      offset: Offset(0, 45),
      // shape - 메뉴 리스트의 모양을 둥글게
      shape: ShapeBorder.lerp(
        RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10))),
        RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10))),
        0.5,
      ),
      elevation: 0,
      onSelected: (int value) {
        DropdownButtonController.to.changeDropMenu(value);
      },
      itemBuilder: (context) {
        return menuList.values
            .map(
              (menu) => PopupMenuItem(
                value: menu.index,
                child: Text(menu.name),
              ),
            )
            .toList();
      },
      child: Obx(
        () => Container(
          padding: const EdgeInsets.all(15),
          color: Colors.blueGrey,
          child: Row(
            children: [
              Text(
                DropdownButtonController.to.currentItem.value.name,
                style: TextStyle(fontSize: 16),
              ),
              Icon(Icons.arrow_drop_down),
            ],
          ),
        ),
      ),
    );
  }
}
