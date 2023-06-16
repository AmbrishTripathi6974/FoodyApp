import 'package:foody/controllers/popular_product_controller.dart';
import 'package:foody/controllers/recommended_product_controller.dart';
import 'package:foody/data/api/api_client.dart';
import 'package:foody/data/repository/popular_product_repo.dart';
import 'package:foody/utils/app_constants.dart';
import 'package:get/get.dart';
import '../data/repository/reommended_product_repo.dart';

Future<void> init() async {

  //api client
  Get.lazyPut(() => ApiClient(appBaseUrl: AppConstants.BASE_URL));

  //repos
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));
  Get.lazyPut(() => RecommendedProductRepo(apiClient: Get.find()));

  //controllers
  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
  Get.lazyPut(() => RecommendedProductController(recommendedProductRepo: Get.find()));
}