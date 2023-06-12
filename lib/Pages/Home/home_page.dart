import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:foody/Pages/Home/food_page_body.dart';
import 'package:foody/utils/dimension.dart';
import 'package:foody/widgets/big_text.dart';
import 'package:foody/widgets/small_text.dart';
import 'package:kf_drawer/kf_drawer.dart';
import 'package:lottie/lottie.dart';
import 'package:foody/utils/colors.dart';

class HomePage extends KFDrawerContent {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    print("current height is " + MediaQuery.of(context).size.height.toString());
    
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(Dimensions.iconSize16),
              child: Row(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(32.0)),
                    child: Material(
                      shadowColor: Colors.transparent,
                      color: Colors.transparent,
                      child: IconButton(
                        icon: Lottie.asset('assets/lottie/menu.json'),
                        onPressed: widget.onMenuPressed,
                      ),
                    ),
                  ),
                  Text(
                    "Foody",
                    style: TextStyle(
                      fontFamily: "Circular",
                      fontWeight: FontWeight.bold,
                      fontSize: Dimensions.font20,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: Dimensions.height10,
            ),
            Expanded(
              child: Column(
                children: [
                  // Showing the header
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: Dimensions.width15,
                      vertical: Dimensions.height10,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            BigText(
                              text: "India",
                              color: AppColors.mainColor,
                              size: 30,
                            ),
                            Row(
                              children: [
                                SmallText(text: "Ayodhya"),
                                Icon(
                                  EvaIcons.chevronDownOutline,
                                  size: Dimensions.iconSize16,
                                ),
                              ],
                            ),
                          ],
                        ),
                        Container(
                          width: 45,
                          height: 45,
                          child: IconButton(
                            icon: Icon(
                              EvaIcons.search,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              // Handle search button press
                            },
                          ),
                          decoration: BoxDecoration(
                            color: AppColors.mainColor,
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Showing the body
                  Expanded(
                    child: SingleChildScrollView(
                      child: FoodPageBody(),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
