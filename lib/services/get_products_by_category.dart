import '../helper/api.dart';
import '../models/product_model.dart';

class GetProductsByCategory {
  Future<List<ProductModel>> getProductsByCategory(
      {required String categoryName}) async {
    List<dynamic> data = await Api()
        .get(url: "https://fakestoreapi.com/products/category/$categoryName");
    List<ProductModel> productsList = [];
    for (var product in data) {
      productsList.add(ProductModel.fromJson(product));
    }
    return productsList;
  }
}
