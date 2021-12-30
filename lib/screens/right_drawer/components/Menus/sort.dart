import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/screens/products/products_screen.dart';

class SortMenu extends StatefulWidget {
  const SortMenu(String s, {Key? key}) : super(key: key);

  @override
  _SortMenuState createState() => _SortMenuState();
}

class _SortMenuState extends State<SortMenu> {
  List<String> sort_sub = [
    'Best Match',
    'Time: ending soonest',
    'Time: newly listed',
    'Price + Shipping: lowest first',
    'Price + Shipping: higest first',
  ];

  List<bool> isHighlighted = [
    true,
    false,
    false,
    false,
    false,
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: sort_sub.length,
          itemBuilder: (_, index) {
            return GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => ProductList()));
                for (int i = 0; i < isHighlighted.length; i++) {
                  setState(() {
                    if (index == i) {
                      isHighlighted[index] = true;
                    } else {
                      //the condition to change the highlighted item
                      isHighlighted[i] = false;
                    }
                  });
                  Scaffold.of(context).openEndDrawer();
                }
              },
              child: SingleChildScrollView(
                  child: Container(
                child: ListTile(
                  title: Text(sort_sub[index],
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: isHighlighted[index]
                              ? kPrimaryColor
                              : Colors.black)),
                  trailing: Wrap(
                      spacing: 12, // space between two icons
                      children: isHighlighted[index]
                          ? <Widget>[
                              Icon(
                                Icons.check_circle_outline_outlined,
                                color: kPrimaryColor,
                              ), // icon-2
                            ]
                          : []),
                ),
              )),
            );
          }),
    );
  }
}
