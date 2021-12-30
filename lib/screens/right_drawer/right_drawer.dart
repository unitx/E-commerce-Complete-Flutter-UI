import 'package:flutter/material.dart';
import 'package:shop_app/screens/right_drawer/components/header.dart';
import 'package:shop_app/screens/right_drawer/components/menu.dart';

class RightDrawer extends StatefulWidget {
  const RightDrawer({Key? key}) : super(key: key);

  @override
  State<RightDrawer> createState() => _RightDrawerState();
}

class _RightDrawerState extends State<RightDrawer> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: SingleChildScrollView(
          child: Column(children: [DrawerMenu()]),
        ),
      ),
    );
  }
}
