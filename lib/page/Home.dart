import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DropDown Sample'),
      ),
      body: Column(
        children: [
          DropdownButton(
            value: index,
            onChanged: (int? value) => {
              setState(() {
                index = value!;
              }),
            },
            items: [
              DropdownMenuItem(
                value: 0,
                child: Text('menu 1'),
              ),
              DropdownMenuItem(
                value: 1,
                child: Text('menu 2'),
              ),
              DropdownMenuItem(
                value: 2,
                child: Text('menu 3'),
              ),
              DropdownMenuItem(
                value: 3,
                child: Text('menu 4'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
