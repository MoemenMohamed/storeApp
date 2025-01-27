import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'providers/product_details_provider.dart';
import 'screens/home_page.dart';
import 'screens/product_details_page.dart';
import 'screens/update_product_page.dart';
import 'services/get_all_products_service.dart';

void main() async {
  await GetAllProducts().getAllProducts();
  runApp(const StoreApp());
}

class StoreApp extends StatelessWidget {
  const StoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=>ProductProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          HomePage.id: (context) => HomePage(),
          UpdateProductPage.id: (context) => UpdateProductPage(),
          ProductDetails.id:(context)=>ProductDetails()
        },
        initialRoute: HomePage.id,
      ),
    );
  }
}
