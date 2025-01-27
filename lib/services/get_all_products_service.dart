import '../helper/api.dart';
import '../models/product_model.dart';

class GetAllProducts {
  Future<List<ProductModel>> getAllProducts() async {
    List<dynamic> data =
        await Api().get(url: "https://fakestoreapi.com/products");
    List<ProductModel> productsList = [];
    for (var product in data) {
      productsList.add(ProductModel.fromJson(product));
    }
    return productsList;
  }
}
