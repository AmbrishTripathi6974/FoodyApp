import 'package:flutter/material.dart';
import 'package:foody/controllers/cart_controller.dart';
import 'package:foody/data/repository/popular_product_repo.dart';
import 'package:foody/models/products_model.dart';
import 'package:foody/data/api/api_client.dart';
import 'package:foody/utils/colors.dart';
import 'package:get/get.dart';

class PopularProductController extends GetxController {
  final PopularProductRepo popularProductRepo;
  PopularProductController({required this.popularProductRepo});
  List<dynamic> _popularProductList = [];
  List<dynamic> get popularProductList => _popularProductList;
  late CartController _cart;

  bool _isLoaded = false;
  bool get isLoaded => _isLoaded;

  int _quantity = 0;
  int get quantity => _quantity;
  int _inCartItems = 0;
  int get inCartItems => _inCartItems + _quantity;

  Future<void> getPopularProductList() async {
    Response response = await popularProductRepo.getPopularProductList();
    if (response.statusCode == 200) {
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
      _quantity = checkQuatity(_quantity + 1);
    } else {
      _quantity = checkQuatity(_quantity - 1);
      print("decrement" + _quantity.toString());
    }
    update();
  }

  int checkQuatity(int quantity) {
    if (quantity < 0) {
      Get.snackbar("Item count", "You can't reduce more !",
          backgroundColor: AppColors.mainColor, colorText: Colors.white);
      return 0;
    } else if (quantity > 20) {
      Get.snackbar("Item count", "You can't add more !",
          backgroundColor: AppColors.mainColor, colorText: Colors.white);
      return 20;
    } else {
      return quantity;
    }
  }

  void initProduct(CartController cart) {
    _quantity = 0;
    _inCartItems = 0;
    _cart = cart;
    // if exist
    // get from storage _inCartItems
  }

  void addItems(ProductModel product) {
    if (quantity > 0) {
      _cart.addItems(product, quantity);
      _quantity = 0;
      _cart.items.forEach((key, value) {
        print("The id is " + value.id.toString() + " The quantity is " + value.quantity.toString());
      });
    } else {
      Get.snackbar("Item count", "You should at least add an item in the cart!",
          backgroundColor: AppColors.mainColor, colorText: Colors.white);
    }
  }
}
