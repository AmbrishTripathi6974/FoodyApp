import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import '../utils/colors.dart';
import '../utils/dimension.dart';
import 'big_text.dart';
import 'icon_and_text_widget.dart';
import 'small_text.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';

class AppColumn extends StatelessWidget {
  final String text;
  const AppColumn({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(text: text, size: Dimensions.font26,),
        SizedBox(
          height: Dimensions.height10,
        ),
        Row(
          children: [
            Wrap(
              children: List.generate(
                5,
                (index) => Icon(
                  EvaIcons.star,
                  color: AppColors.mainColor,
                  size: 15,
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            SmallText(text: "4.5"),
            SizedBox(
              width: 10,
            ),
            SmallText(text: "1287"),
            SizedBox(
              width: 10,
            ),
            SmallText(text: "comments"),
          ],
        ),
        SizedBox(
          height: Dimensions.height20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconAndTextWidget(
                icon: Icons.circle,
                text: "Normal",
                iconColor: AppColors.iconColor1),
            SizedBox(
              width: 5,
            ),
            IconAndTextWidget(
                icon: EvaIcons.pinOutline,
                text: "1.7km",
                iconColor: AppColors.mainColor),
            SizedBox(
              width: 5,
            ),
            IconAndTextWidget(
                icon: EvaIcons.clockOutline,
                text: "32min",
                iconColor: AppColors.iconColor2),
          ],
        ),
      ],
    );
  }
}
