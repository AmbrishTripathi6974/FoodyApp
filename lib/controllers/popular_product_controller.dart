import 'package:foody/data/repository/popular_product_repo.dart';
import 'package:foody/models/products_model.dart';
import 'package:foody/data/api/api_client.dart';
import 'package:get/get.dart';

class PopularProductController extends GetxController {
  final PopularProductRepo popularProductRepo;
  PopularProductController({required this.popularProductRepo});
  List<dynamic> _popularProductList = [];
  List<dynamic> get popularProductList => _popularProductList;

  bool _isLoaded = false;
  bool get isLoaded => _isLoaded;

  int _quantity = 0;
  int get quantity => _quantity;

  Future<void> getPopularProductList() async {
    Response response = await popularProductRepo.getPopularProductList();
    print("got response");
    if (response.statusCode == 200) {
      print("got products");
      _popularProductList = [];
      _popularProductList
          .addAll(Product.fromJson(response.body).products as Iterable);
      print(_popularProductList);
      _isLoaded = true;
      update();
    } else {
      print("Failed to get products. Status code: ${response.statusCode}");
    }
  }

  void setQuantity(bool isIncrement) {
    if (isIncrement) {
      print("increment" + _quantity.toString());
      _quantity = _quantity + 1;
    } else {
      _quantity = _quantity - 1;
      print("decrement" + _quantity.toString());
    }
    update();
  }
}
