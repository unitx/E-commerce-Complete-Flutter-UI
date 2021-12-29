import 'package:flutter/material.dart';
import 'package:shop_app/screens/right_drawer/components/header.dart';
import 'package:shop_app/screens/right_drawer/components/menu.dart';

// ignore: non_constant_identifier_names

class RightDrawer extends StatefulWidget {
  const RightDrawer({Key? key}) : super(key: key);

  @override
  State<RightDrawer> createState() => _RightDrawerState();
}

class _RightDrawerState extends State<RightDrawer> {
  List<String> texts = ['first', 'second', 'third'];

  List<bool> isHighlighted = [true, false, false];
  List<Widget> menu_items = [
    RightDrawerHeader(),
    SizedBox(
      height: 20,
    ),
    DrawerMenu(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: SingleChildScrollView(
          child: Column(children: menu_items),
        ),
      ),
    );
  }
}
