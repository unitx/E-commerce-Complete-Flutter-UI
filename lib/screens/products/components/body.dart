import 'package:flutter/material.dart';
import 'package:shop_app/models/ModelHandler.dart';
import 'package:shop_app/screens/home/components/home_header.dart';
import 'package:shop_app/screens/products/components/item_card.dart';
import 'package:shop_app/services/product_service.dart';
import 'package:shop_app/size_config.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  late Future<List<Items>> futureData;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    futureData = HttpService.getProduct();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 5),
        HomeHeader(),
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Text(""),
        ),
        // Categories(),
        Expanded(
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: FutureBuilder<List<Items>>(
                  future: futureData,
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      List<Items>? products = snapshot.data;
                      return GridView.builder(
                          itemCount: products?.length,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 5,
                            crossAxisSpacing: 5,
                            childAspectRatio: 0.75,
                          ),
                          itemBuilder: (context, index) => ItemCard(
                                product: products![index],
                                press: () {},
                              ));
                    } else {
                      return Center(child: CircularProgressIndicator());
                    }
                  })),
        ),
      ],
    );
  }
}
