import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:foody/utils/colors.dart';
import 'package:foody/utils/dimension.dart';
import 'package:foody/widgets/app_icon.dart';
import 'package:foody/widgets/big_text.dart';
import 'package:foody/widgets/expandable_text_widget.dart';

class RecommendedFoodDetail extends StatelessWidget {
  const RecommendedFoodDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 75,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: EvaIcons.close),
                AppIcon(icon: EvaIcons.shoppingCartOutline),
              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(20),
              child: Container(
                child: Center(
                    child:
                        BigText(size: Dimensions.font26, text: "Chinese Side")),
                width: double.maxFinite,
                padding: EdgeInsets.only(top: 5, bottom: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(Dimensions.radius20),
                      topRight: Radius.circular(Dimensions.radius20)),
                ),
              ),
            ),
            pinned: true,
            backgroundColor: AppColors.yellowColor,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "images/food3.jpg",
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  child: ExpandableTextWidget(
                      text:
                          " Biryani is a popular and flavorful rice dish that originated in the Indian subcontinent. It is a harmonious blend of aromatic spices, fragrant rice, and succulent meat or vegetables. Biryani is known for its exquisite taste, vibrant colors, and distinct layers of flavors.Biryani is a popular and flavorful rice dish that originated in the Indian subcontinent. It is a harmonious blend of aromatic spices, fragrant rice, and succulent meat or vegetables. Biryani is known for its exquisite taste, vibrant colors, and distinct layers of flavors.Biryani is a popular and flavorful rice dish that originated in the Indian subcontinent. It is a harmonious blend of aromatic spices, fragrant rice, and succulent meat or vegetables. Biryani is known for its exquisite taste, vibrant colors, and distinct layers of flavors.Biryani is a popular and flavorful rice dish that originated in the Indian subcontinent. It is a harmonious blend of aromatic spices, fragrant rice, and succulent meat or vegetables. Biryani is known for its exquisite taste, vibrant colors, and distinct layers of flavors.Biryani is a popular and flavorful rice dish that originated in the Indian subcontinent. It is a harmonious blend of aromatic spices, fragrant rice, and succulent meat or vegetables. Biryani is known for its exquisite taste, vibrant colors, and distinct layers of flavors.Biryani is a popular and flavorful rice dish that originated in the Indian subcontinent. It is a harmonious blend of aromatic spices, fragrant rice, and succulent meat or vegetables. Biryani is known for its exquisite taste, vibrant colors, and distinct layers of flavors.Biryani is a popular and flavorful rice dish that originated in the Indian subcontinent. It is a harmonious blend of aromatic spices, fragrant rice, and succulent meat or vegetables. Biryani is known for its exquisite taste, vibrant colors, and distinct layers of flavors.Biryani is a popular and flavorful rice dish that originated in the Indian subcontinent. It is a harmonious blend of aromatic spices, fragrant rice, and succulent meat or vegetables. Biryani is known for its exquisite taste, vibrant colors, and distinct layers of flavors.Biryani is a popular and flavorful rice dish that originated in the Indian subcontinent. It is a harmonious blend of aromatic spices, fragrant rice, and succulent meat or vegetables. Biryani is known for its exquisite taste, vibrant colors, and distinct layers of flavors.Biryani is a popular and flavorful rice dish that originated in the Indian subcontinent. It is a harmonious blend of aromatic spices, fragrant rice, and succulent meat or vegetables. Biryani is known for its exquisite taste, vibrant colors, and distinct layers of flavors.Biryani is a popular and flavorful rice dish that originated in the Indian subcontinent. It is a harmonious blend of aromatic spices, fragrant rice, and succulent meat or vegetables. Biryani is known for its exquisite taste, vibrant colors, and distinct layers of flavors.Biryani is a popular and flavorful rice dish that originated in the Indian subcontinent. It is a harmonious blend of aromatic spices, fragrant rice, and succulent meat or vegetables. Biryani is known for its exquisite taste, vibrant colors, and distinct layers of flavors.Biryani is a popular and flavorful rice dish that originated in the Indian subcontinent. It is a harmonious blend of aromatic spices, fragrant rice, and succulent meat or vegetables. Biryani is known for its exquisite taste, vibrant colors, and distinct layers of flavors."),
                  margin: EdgeInsets.only(
                    left: Dimensions.width20,
                    right: Dimensions.width20,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
              left: Dimensions.width20 * 2.5,
              right: Dimensions.width20 * 2.5,
              top: Dimensions.height10,
              bottom: Dimensions.height10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                    iconSize: Dimensions.iconSize24,
                    backgroundColor: AppColors.mainColor,
                    iconColor: Colors.white,
                    icon: EvaIcons.minus),
                BigText(
                  text: "\$12.88 " + " X " + " 0 ",
                  color: AppColors.mainBlackColor,
                  size: Dimensions.font26,
                ),
                AppIcon(
                    iconSize: Dimensions.iconSize24,
                    backgroundColor: AppColors.mainColor,
                    iconColor: Colors.white,
                    icon: EvaIcons.plus),
              ],
            ),
          ),
          Container(
            height: Dimensions.bottomHeightBar,
            padding: EdgeInsets.only(
              top: Dimensions.height30,
              bottom: Dimensions.height30,
              left: Dimensions.width20,
              right: Dimensions.width20,
            ),
            decoration: BoxDecoration(
              color: AppColors.buttonBackgroundColor,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(Dimensions.radius20 * 2),
                topLeft: Radius.circular(Dimensions.radius20 * 2),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.only(
                      top: Dimensions.height20,
                      bottom: Dimensions.height20,
                      left: Dimensions.width20,
                      right: Dimensions.width20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.radius20),
                    color: Colors.white,
                  ),
                  child: Icon(EvaIcons.heart, color: AppColors.mainColor,),
                ),
                Container(
                  padding: EdgeInsets.only(
                      top: Dimensions.height20,
                      bottom: Dimensions.height20,
                      left: Dimensions.width20,
                      right: Dimensions.width20),
                  child: BigText(
                    text: "\$10 " + " | " + " Add to cart ",
                    color: Colors.white,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.radius20),
                    color: AppColors.mainColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
