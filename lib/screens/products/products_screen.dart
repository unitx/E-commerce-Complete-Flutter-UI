import 'package:flutter/material.dart';
import 'package:shop_app/components/coustom_bottom_nav_bar.dart';
import 'package:shop_app/enums.dart';
import 'package:shop_app/screens/products/components/body.dart';
import 'package:shop_app/screens/right_drawer/right_drawer.dart';

class ProductList extends StatefulWidget {
  const ProductList({Key? key}) : super(key: key);

  @override
  _ProductListState createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: RightDrawer(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
      body: SafeArea(
        child: Body(),
      ),
    );
  }
}
