import 'package:flutter/material.dart';
import 'package:shop_app/models/ModelHandler.dart';

class ItemCard extends StatelessWidget {
  final Items product;
  final Function press;
  const ItemCard({
    required this.product,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(5),
              // For  demo we use fixed height  and width
              // Now we dont need them
              // height: 180,
              // width: 160,
              decoration: BoxDecoration(
                color: Color(0xFFFFECDF),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Hero(
                tag: "${product.id}",
                child: Image.network(
                    "http://192.168.1.139/magento/pub/media/catalog/product/cache/e02742e34cc36054f763ac099a8c788f//" +
                        product.mediaGalleryEntries[0].file),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 4),
            child: Text(
              // products is out demo list
              product.name.toUpperCase(),
              style: TextStyle(color: Colors.amber),
            ),
          ),
          Text(
            "\$${product.price}",
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
