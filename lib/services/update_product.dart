import 'package:store_app/helper/api.dart';
import 'package:store_app/model/product_model.dart';

class UpdateProduct
{
   Future<ProductModel> updateProduct(
      {required String title,
      required String price,
      required String des,
      required String image,
      required String category,required int id}) async {
    Map<String, dynamic> data =
        await Api().put(url: 'https://fakestoreapi.com/products/$id', body: {
      'title': title,
      'price': price,
      'description': des,
      'image': image,
      'category': category
    });
    return ProductModel.fromJson(data);
  }
}