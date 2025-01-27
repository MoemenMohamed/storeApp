import 'package:flutter/material.dart';

import '../models/product_model.dart';

class CustomProductCard extends StatelessWidget {
  final ProductModel product;
  const CustomProductCard({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(clipBehavior: Clip.none, children: [
      SizedBox(
        child: Card(
          color: Colors.white,
          elevation: 5,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(product.title,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 16, color: Colors.grey)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("\$ ${product.price}"),
                    IconButton(onPressed: () {}, icon: Icon(Icons.favorite))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
      Positioned(
        bottom: 85,
        left: 75,
        child:
            Image(height: 100, width: 100, image: NetworkImage(product.image)),
      )
    ]);
  }
}
