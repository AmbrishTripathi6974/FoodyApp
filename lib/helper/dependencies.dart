import 'package:foody/controllers/popular_product_controller.dart';
import 'package:foody/data/api/api_client.dart';
import 'package:foody/data/repository/popular_product_repo.dart';
import 'package:foody/utils/app_constants.dart';
import 'package:get/get.dart';

Future<void> init() async {

  //api client
  Get.lazyPut(() => ApiClient(appBaseUrl: AppConstants.BASE_URL));
  print("Get AppiClient");

  //repos
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));
  print("Get Repo");

  //controllers
  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
  print("Get Controller");
}