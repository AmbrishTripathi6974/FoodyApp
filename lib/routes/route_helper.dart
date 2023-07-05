import 'package:flutter/material.dart';
import 'package:foody/Pages/Food/popular_food_detail.dart';
import 'package:foody/Pages/Food/recommended_food_detail.dart';
import 'package:foody/Pages/cart/cart_page.dart';
import 'package:foody/main.dart';
import 'package:get/get.dart';

import '../Pages/Home/main_food_page.dart';

class RouteHelper {
  static const String initial = "/";
  static const String popularFood = "/popular-food";
  static const String recommendedFood = "/recommended-food";
  static const String cartPage = "/cart-page";

  static String getinitial() => '$initial';
  static String getPopularFood(int pageId, String page) => '$popularFood?pageId=$pageId & page = $page';
  static String getRecommendedFood(int pageId, String page) => '$recommendedFood? pageId = $pageId & page = $page';
  static String getCartPage() => '$cartPage';

  static List<GetPage> routes = [
    GetPage(name: initial, page: () => MainFoodPage()),
    GetPage(
      name: popularFood,
      page: () {
        var pageId = Get.parameters['pageId'];
        var page = Get.parameters['page'];
        if (pageId != null) {
          return PopularFoodDetail(pageId: int.parse(pageId), page: page!);
        } else {
          return Container();
        }
      },
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: recommendedFood,
      page: () {
        var pageId = Get.parameters['pageId'];
        var page = Get.parameters['page'];
        if (pageId != null) {
          return RecommendedFoodDetail(pageId: int.parse(pageId), page: page!);
        } else {
          return Container();
        }
      },
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: cartPage,
      page: () {
        return CartPage();
      },
      transition: Transition.fadeIn,
    ),
  ];
}
