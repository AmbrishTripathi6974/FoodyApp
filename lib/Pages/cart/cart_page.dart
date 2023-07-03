import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:foody/controllers/cart_controller.dart';
import 'package:foody/main.dart';
import 'package:foody/routes/route_helper.dart';
import 'package:foody/utils/app_constants.dart';
import 'package:foody/utils/colors.dart';
import 'package:foody/utils/dimension.dart';
import 'package:foody/widgets/big_text.dart';
import 'package:foody/widgets/small_text.dart';
import 'package:get/get.dart';
import '../../widgets/app_icon.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: Dimensions.height20 * 3,
            left: Dimensions.width20,
            right: Dimensions.width20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                  icon: EvaIcons.arrowBackOutline,
                  iconColor: Colors.white,
                  backgroundColor: AppColors.mainColor,
                  iconSize: Dimensions.iconSize24,
                ),
                SizedBox(
                  width: Dimensions.width20 * 5,
                ),
                GestureDetector(
                  onTap: (){
                    Get.toNamed(RouteHelper.getinitial());
                  },
                  child: AppIcon(
                    icon: EvaIcons.homeOutline,
                    iconColor: Colors.white,
                    backgroundColor: AppColors.mainColor,
                    iconSize: Dimensions.iconSize24,
                  ),
                ),
                AppIcon(
                  icon: EvaIcons.shoppingCartOutline,
                  iconColor: Colors.white,
                  backgroundColor: AppColors.mainColor,
                  iconSize: Dimensions.iconSize24,
                ),
              ],
            ),
          ),
          Positioned(
              top: Dimensions.height20 * 5,
              left: Dimensions.width20,
              right: Dimensions.width20,
              bottom: 0,
              child: Container(
                margin: EdgeInsets.only(top: Dimensions.height15),
                child: MediaQuery.removePadding(
                  context: context,
                  removeTop: true,
                  child: GetBuilder<CartController>(
                    builder: (cartController) {
                      return ListView.builder(
                          itemCount: cartController.getItems.length,
                          itemBuilder: (_, index) {
                            return Container(
                              width: double.maxFinite,
                              height: 100,
                              child: Row(
                                children: [
                                  Container(
                                    width: Dimensions.height20 * 5,
                                    height: Dimensions.height20 * 5,
                                    margin: EdgeInsets.only(
                                        bottom: Dimensions.height10),
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: NetworkImage(
                                          AppConstants.BASE_URL + AppConstants.UPLOAD_URL + CartController.getItems[index].img!,
                                        ),
                                      ),
                                      borderRadius: BorderRadius.circular(
                                          Dimensions.radius20),
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    width: Dimensions.width10,
                                  ),
                                  Expanded(
                                      child: Container(
                                    height: Dimensions.height20 * 5,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        BigText(
                                          text: cartController.getItems[index].name!,
                                          color: Colors.black54,
                                        ),
                                        SmallText(text: "Spicy"),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            BigText(
                                              text: cartController.getItems[index].price.toString(),
                                              color: Colors.redAccent,
                                            ),
                                            Container(
                                              padding: EdgeInsets.only(
                                                  top: Dimensions.height10,
                                                  bottom: Dimensions.height10,
                                                  left: Dimensions.width10,
                                                  right: Dimensions.width10),
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(
                                                    Dimensions.radius20),
                                                color: Colors.white,
                                              ),
                                              child: Row(
                                                children: [
                                                  GestureDetector(
                                                    onTap: () {
                                                      popularProduct
                                                          .setQuantity(false);
                                                    },
                                                    child: Icon(
                                                      EvaIcons.minusCircleOutline,
                                                      color: AppColors.signColor,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: Dimensions.width10 / 2,
                                                  ),
                                                  BigText(
                                                      text: popularProduct
                                                          .inCartItems
                                                          .toString()),
                                                  SizedBox(
                                                    width: Dimensions.width10 / 2,
                                                  ),
                                                  GestureDetector(
                                                    onTap: () {
                                                      popularProduct
                                                          .setQuantity(true);
                                                    },
                                                    child: Icon(
                                                      EvaIcons.plusCircleOutline,
                                                      color: AppColors.signColor,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  )),
                                ],
                              ),
                            );
                          });
                    }
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
