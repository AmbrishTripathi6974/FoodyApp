import 'package:get/get.dart';

class Dimensions{
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;

// this is for optimiziting the height of the text and container

  static double pageView = screenHeight/2.5;
  static double pageViewContainer = screenHeight/3.65;
  static double pageViewTextContainer = screenHeight/6.68;

// Dynamic Height padding and margin

  static double height5 = screenHeight/160.6;
  static double height10 = screenHeight/80.3;
  static double height15 = screenHeight/53.53;
  static double height20 = screenHeight/40.15;
  static double height30 = screenHeight/26.77;
  static double height45 = screenHeight/17.84;

// Dynamic Width padding and margin

  static double width10 = screenHeight/80.3;
  static double width15 = screenHeight/53.53;
  static double width20 = screenHeight/40.15;
  static double width30 = screenHeight/26.77;

//font size

  static double font20 = screenHeight/40.15;
  static double font26 = screenHeight/30.885;
  static double font16 = screenHeight/50.1875;

//radius

  static double radius20 = screenHeight/40.15;
  static double radius30 = screenHeight/26.77;
  static double radius15 = screenHeight/53.53;

  // icon size

  static double iconSize24 = screenHeight/33.4584;
  static double iconSize16 = screenHeight/50.1875;

  //list view size

  static double listViewImgSize = screenWidth/3.275;
  static double listViewTextSize = screenWidth/3.93;

  //popular food 

  static double popularFoodImgSize = screenHeight/2.29;

  //bottom height

  static double bottomHeightBar = screenHeight/6.68;
}