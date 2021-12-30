import 'package:flutter/material.dart';

class RightDrawerHeader extends StatefulWidget {
  RightDrawerHeader(this.header);
  Widget header;
  @override
  State<RightDrawerHeader> createState() => _RightDrawerHeaderState();
}

class _RightDrawerHeaderState extends State<RightDrawerHeader> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          widget.header,
          GestureDetector(
            onTap: () {
              setState(() {});
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
