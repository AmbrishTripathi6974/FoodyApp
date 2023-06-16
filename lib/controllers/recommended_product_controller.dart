import 'package:foody/data/repository/popular_product_repo.dart';
import 'package:foody/models/products_model.dart';
import 'package:foody/data/api/api_client.dart';
import 'package:get/get.dart';

import '../data/repository/reommended_product_repo.dart';

class RecommendedProductController extends GetxController{
  final RecommendedProductRepo recommendedProductRepo;
  RecommendedProductController({required this.recommendedProductRepo});
  List<dynamic> _recommendedProductList = [];
  List<dynamic> get recommendedProductList => _recommendedProductList;

  bool _isLoaded = false;
  bool get isLoaded => _isLoaded;

  Future<void> getRecommendedProductList() async {
   Response response = await recommendedProductRepo.getRecommendedProductList();
   if(response.statusCode == 200){
    print("got products recommended");
    _recommendedProductList = [];
    _recommendedProductList.addAll(Product.fromJson(response.body).products as Iterable);
    print(_recommendedProductList);
    _isLoaded = true;
    update();
   }else{
    print("Failed to get recommended products. Status code: ${response.statusCode}");
   }
  }
}