import 'package:flutter/material.dart';
import 'package:shop_app/screens/right_drawer/components/header.dart';
import 'package:shop_app/screens/splash/splash_screen.dart';
import 'package:shop_app/constants.dart';

class DrawerMenu extends StatefulWidget {
  const DrawerMenu({Key? key}) : super(key: key);
  @override
  _DrawerMenuState createState() => _DrawerMenuState();
}

class _DrawerMenuState extends State<DrawerMenu> {
  Widget NavBtn = TextButton(
    child: Text(
      "Filters",
      style: TextStyle(
          color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
    ),
    onPressed: () {},
  );
  List<Map<String, String>> items = [
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
    setState(() {});
    return SingleChildScrollView(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        RightDrawerHeader(NavBtn),
        SizedBox(height: 10),
        ...items.map((e) => menuList(e))
      ],
    ));
  }

  Padding menuList(dynamic value) {
    Color col = Colors.amber;
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              NavBtn = TextButton.icon(
                  onPressed: () {
                    back();
                    setState(() {});
                  },
                  icon: Icon(Icons.arrow_back),
                  label: Text("Sort"));
              print(NavBtn);
              items.length = 0;
              items.addAll(drawerNavigator(value));
              setState(() {});
            },
            child: InkWell(
              child: Container(
                height: 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
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
            ),
          ),
          Divider(),
        ],
      ),
    );
  }

  drawerNavigator(dynamic val) {
    switch (val['name']) {
      case "Sort":
        final data = [
          {'name': 'Best Match', 'val': ' '},
          {'name': 'Time: ending soonest', 'val': ' '},
          {'name': 'Time: newly listed', 'val': ' '},
          {'name': 'Price + Shipping: lowest first', 'val': ' '},
          {'name': 'Price + Shipping: higest first', 'val': ' '}
        ];
        return data;
      default:
        final data = [
          {'name': 'Best Match', 'val': ' '},
          {'name': 'Time: ending soonest', 'val': ' '},
          {'name': 'Time: newly listed', 'val': ' '},
          {'name': 'Price + Shipping: lowest first', 'val': ' '},
          {'name': 'Price + Shipping: higest first', 'val': ' '}
        ];
        return data;
    }
  }

  back() {
    NavBtn = TextButton(
      child: Text(
        "Filters",
        style: TextStyle(
            color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
      ),
      onPressed: () {},
    );
    items.length = 0;
    return items = [
      {'name': 'Sort', 'val': 'Time: newly listed'},
      {'name': 'Buying Format', 'val': 'All'},
      {'name': 'Condition', 'val': 'any'},
      {'name': 'Category', 'val': 'Digital Cameras'},
      {'name': 'Brand', 'val': 'Canon'},
      {'name': 'Model', 'val': 'any'},
      {'name': 'Type', 'val': 'any'},
    ];
  }
  /*     case "Buying Format": 
        print(val['val']);

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
        items.add(
          {'name': 'INDOOR AC', 'val': ' '},
        );

        print(val['val']);
        break;
      case "Brand":
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
   } */
}
