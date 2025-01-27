import 'package:flutter/material.dart';

import '../models/product_model.dart';

class ProductProvider extends ChangeNotifier {
  ProductModel? _product;
  ProductModel? get data => _product;
  void updateProduct(ProductModel newData) {
    _product = newData;
    notifyListeners();
  }
}
