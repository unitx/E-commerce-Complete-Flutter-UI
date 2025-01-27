import 'package:flutter/material.dart';
import 'package:shop_app/screens/cart/cart_screen.dart';

import '../../../size_config.dart';
import 'icon_btn_with_counter.dart';
import 'search_field.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconBtnWithCounter(
              svgSrc: "assets/icons/menu.svg",
              press: () {},
            ),
            SizedBox(
              width: 5,
            ),
            IconBtnWithCounter(
              svgSrc: "assets/icons/Bell.svg",
              numOfitem: 3,
              press: () {},
            ),
          ],
        ),
        SizedBox(height: getProportionateScreenHeight(10)),
        SearchField(),
      ]),
    );
  }
}
