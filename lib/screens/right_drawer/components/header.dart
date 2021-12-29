import 'package:flutter/material.dart';

Widget header = Text("Filter",
    style: TextStyle(
        fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black));

class RightDrawerHeader extends StatefulWidget {
  const RightDrawerHeader({Key? key}) : super(key: key);

  @override
  State<RightDrawerHeader> createState() => _RightDrawerHeaderState();
}

class _RightDrawerHeaderState extends State<RightDrawerHeader> {
  @override
  Widget build(BuildContext context) {
    setState(() {
      header = Text("Filter",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black));
    });
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          header,
          GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Text("Done",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.blue)),
          ),
        ],
      ),
    );
  }
}
