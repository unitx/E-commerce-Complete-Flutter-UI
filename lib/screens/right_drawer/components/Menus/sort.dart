import 'package:flutter/material.dart';

class SortMenu extends StatefulWidget {
  const SortMenu(String s, {Key? key}) : super(key: key);

  @override
  _SortMenuState createState() => _SortMenuState();
}

class _SortMenuState extends State<SortMenu> {
  List<String> texts = ['first', 'second', 'third'];

  List<bool> isHighlighted = [true, false, false];
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Expanded(
        child: ListView.builder(
            itemCount: texts.length,
            itemBuilder: (_, index) {
              return GestureDetector(
                onTap: () {
                  for (int i = 0; i < isHighlighted.length; i++) {
                    setState(() {
                      if (index == i) {
                        isHighlighted[index] = true;
                      } else {
                        //the condition to change the highlighted item
                        isHighlighted[i] = false;
                      }
                    });
                  }
                },
                child: Container(
                  child: ListTile(
                    //the item
                    title: Text(
                      texts[index],
                      style: TextStyle(
                          color: isHighlighted[index]
                              ? Colors.blue
                              : Colors.black),
                    ),
                  ),
                ),
              );
            }),
      ),
      Container(
        child: Text(
          'this is footer',
          style: TextStyle(fontSize: 20),
        ),
      )
    ]);
  }
}
