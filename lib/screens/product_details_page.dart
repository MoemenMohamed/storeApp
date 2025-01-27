import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/product_model.dart';
import '../providers/product_details_provider.dart';
import 'update_product_page.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  static String id = "ProductDetails";
  @override
  Widget build(BuildContext context) {
    ProductModel? product = Provider.of<ProductProvider>(context).data;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Product"),
        centerTitle: true,
      ),
      body: SizedBox(
        width: double.infinity,
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Image(
                  width: 300, height: 300, image: NetworkImage(product!.image)),
            ),
            Text(
              product.title,
              maxLines: 2,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("\$ ${product.price}"),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                product.description,
                style: TextStyle(fontSize: 14),
                textAlign: TextAlign.justify,
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, UpdateProductPage.id);
                },
                child: Text("Edit Product"))
          ],
        ),
      ),
    );
  }
}
