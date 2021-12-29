import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/screens/right_drawer/components/Menus/Sort.dart';
import 'package:flutter/services.dart';
import 'package:shop_app/screens/right_drawer/components/header.dart';
import 'package:shop_app/screens/right_drawer/right_drawer.dart';

class DrawerMenu extends StatefulWidget {
  const DrawerMenu({Key? key}) : super(key: key);

  @override
  _DrawerMenuState createState() => _DrawerMenuState();
}

class _DrawerMenuState extends State<DrawerMenu> {
  final items = [
    {'name': 'Sort', 'val': 'Time: newly listed'},
    {'name': 'Buying Format', 'val': 'All'},
    {'name': 'Condition', 'val': 'any'},
    {'name': 'Category', 'val': 'Digital Cameras'},
    {'name': 'Brand', 'val': 'Canon'},
    {'name': 'Model', 'val': 'any'},
    {'name': 'Type', 'val': 'any'},
  ];

  // ignore: non_constant_identifier_names
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[...items.map((e) => menuList(e))],
    ));
  }

  Padding menuList(dynamic value) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          GestureDetector(
            onTap: () => {drawerNavigator(value), HapticFeedback.heavyImpact()},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  value['name'],
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.black),
                ),
                Text(
                  value['val'],
                  style: TextStyle(color: kPrimaryColor),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Divider(),
        ],
      ),
    );
  }

  drawerNavigator(dynamic val) {
    switch (val['name']) {
      case "Sort":
        setState(() {});
        header = TextButton.icon(
            icon: Icon(Icons.arrow_back_sharp),
            label: Text("Sort"),
            onPressed: () {});
        items.length = 0;

        items.add(
          {'name': 'Best Match', 'val': ' '},
        );
        items.add(
          {'name': 'Time: ending soonest', 'val': ' '},
        );
        items.add(
          {'name': 'Time: newly listed', 'val': ' '},
        );
        items.add(
          {'name': 'Price + Shipping: lowest first', 'val': ' '},
        );
        items.add(
          {'name': 'Price + Shipping: higest first', 'val': ' '},
        );
        print(val['val']);
        break;
      case "Buying Format":
        print(val['val']);
        setState(() {});
        header = TextButton.icon(
            icon: Icon(Icons.arrow_back_sharp),
            label: Text("Sort"),
            onPressed: () {});
        items.length = 0;

        items.add(
          {'name': 'All', 'val': ' '},
        );
        items.add(
          {'name': 'Best Offer', 'val': ' '},
        );
        items.add(
          {'name': 'Auction', 'val': ' '},
        );
        items.add(
          {'name': 'Buy It Now', 'val': ' '},
        );
        break;
      case "Condition":
        setState(() {});
        header = TextButton.icon(
            icon: Icon(Icons.arrow_back_sharp),
            label: Text("Sort"),
            onPressed: () {});
        items.length = 0;

        items.add(
          {'name': 'New', 'val': ' '},
        );
        items.add(
          {'name': 'Open box', 'val': ' '},
        );
        items.add(
          {'name': 'Certified - Refurbished', 'val': ' '},
        );
        items.add(
          {'name': 'Seller refurbished', 'val': ' '},
        );
        items.add(
          {'name': 'Used', 'val': ' '},
        );
        items.add(
          {'name': 'For parts or not working', 'val': ' '},
        );
        items.add(
          {'name': 'Not Specified', 'val': ' '},
        );
        print(val['val']);
        break;
      case "Category":
        setState(() {});
        header = TextButton.icon(
            icon: Icon(Icons.arrow_back_sharp),
            label: Text("Sort"),
            onPressed: () {});
        items.length = 0;

        items.add(
          {'name': 'INDOOR AC', 'val': ' '},
        );

        print(val['val']);
        break;
      case "Brand":
        setState(() {});
        header = TextButton.icon(
            icon: Icon(Icons.arrow_back_sharp),
            label: Text("Sort"),
            onPressed: () {});
        items.length = 0;

        items.add(
          {'name': 'Haier', 'val': ' '},
        );
        items.add(
          {'name': 'Dawlance', 'val': ' '},
        );
        items.add(
          {'name': 'Orient', 'val': ' '},
        );
        items.add(
          {'name': 'TCL', 'val': ' '},
        );
        items.add(
          {'name': 'Changhong Ruba', 'val': ' '},
        );

        print(val['val']);
        break;
      case "Model":
        setState(() {});
        header = TextButton.icon(
            icon: Icon(Icons.arrow_back_sharp),
            label: Text("Sort"),
            onPressed: () {});
        items.length = 0;

        items.add(
          {'name': 'Haier Candy', 'val': ' '},
        );
        items.add(
          {'name': 'Dawlance Powercon', 'val': ' '},
        );
        items.add(
          {'name': 'Dawlance Elegance', 'val': ' '},
        );
        items.add(
          {'name': 'Pearl Inverter Series', 'val': ' '},
        );
        items.add(
          {'name': 'Marvel Series', 'val': ' '},
        );
        items.add(
          {'name': 'Dawlance Suave', 'val': ' '},
        );
        items.add(
          {'name': 'Dawlance Enercon', 'val': ' '},
        );
        items.add(
          {'name': 'Dawlance Tropical', 'val': ' '},
        );
        print(val['val']);
        break;
      case "Type":
        print(val['val']);
        break;
    }
  }
}
