import 'package:flutter/material.dart';
import 'package:shop_app/components/customDialog.dart';
import 'package:shop_app/components/product_card.dart';
import 'package:shop_app/models/ModelHandler.dart';
import 'package:shop_app/models/Product.dart';
import 'package:shop_app/services/product_service.dart';

import '../../../size_config.dart';
import 'section_title.dart';

class PopularProducts extends StatefulWidget {
  @override
  State<PopularProducts> createState() => _PopularProductsState();
}

class _PopularProductsState extends State<PopularProducts> {
  late Future<List<Items>> futureData;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    futureData = HttpService.getProduct();
  }

  showConfirmationDialog(BuildContext context) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return CustomDialog();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SectionTitle(
              title: "Popular Products",
              press: () {
                showConfirmationDialog(context);
              }),
        ),
        SizedBox(height: getProportionateScreenWidth(20)),
        SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: FutureBuilder<List<Items>>(
              future: futureData,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  List<Items>? products = snapshot.data;
                  return Row(
                    children: [
                      ...List.generate(
                        products!.length,
                        // demoProducts.length,
                        (index) {
                          if (products[index].status == 1)
                            return ProductCard(product: products[index]);

                          return SizedBox
                              .shrink(); // here by default width and height is 0
                        },
                      ),
                      SizedBox(width: getProportionateScreenWidth(20)),
                    ],
                  );
                } else if (snapshot.hasError) {
                  return Text(snapshot.error.toString());
                } else {
                  return CircularProgressIndicator();
                }
              },
            )
            // Column(
            //   children: [
            //     ...List.generate(
            //       3,
            //       // demoProducts.length,
            //       (index) {
            //         if (demoProducts[index].isPopular)
            //           return ProductCard(product: demoProducts[index]);

            //         return SizedBox
            //             .shrink(); // here by default width and height is 0
            //       },
            //     ),
            //     SizedBox(width: getProportionateScreenWidth(20)),
            //   ],
            // ),
            )
      ],
    );
  }
}
