import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';

Widget heading = Text("Fil",
    style: TextStyle(
        fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black));

class SubHeader extends StatefulWidget {
  const SubHeader();

  @override
  _SubHeaderState createState() => _SubHeaderState();
}

class _SubHeaderState extends State<SubHeader> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton.icon(
            label: Text("heading"),
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Text("Donee",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: kPrimaryColor)),
          ),
        ],
      ),
    );
  }
}
