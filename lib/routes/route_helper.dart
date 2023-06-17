import 'package:foody/Pages/Food/popular_food_detail.dart';
import 'package:foody/main.dart';
import 'package:get/get.dart';

class RouteHelper{
    static const String initial = "/";
    static const String popularFood = "/popular-food";

    static String getPopularFood() => '$popularFood';


    static List<GetPage> routes = [
      GetPage(name: "/", page: () => MyHomePage()),  
      GetPage(name: popularFood, page: () => PopularFoodDetail()),  
    ];
}