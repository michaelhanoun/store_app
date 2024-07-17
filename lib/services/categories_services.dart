import 'package:store_app/helper/api.dart';
import 'package:store_app/model/product_model.dart';

class CategoriesServices
{
  Future<List<dynamic>>getCategoriesProducts({required String categoryName})async
  {
      List<dynamic> data =
          await Api().get(url: 'https://fakestoreapi.com/products/category/$categoryName');
      List<ProductModel> productsList = [];
      for (dynamic d in data) {
        productsList.add(ProductModel.fromJson(d));
      }
      return productsList;
 
  }
}