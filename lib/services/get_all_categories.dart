import '../helper/api.dart';


class GetAllCategories {
  Future<List<dynamic>> getAllCategories() async {
    List<dynamic> categories =
        await Api().get(url: "https://fakestoreapi.com/products/categories");
    return categories;
  }
}
