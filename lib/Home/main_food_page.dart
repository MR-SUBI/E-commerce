import 'package:e_commerce/Home/food_page_body.dart';
import 'package:e_commerce/util/color.dart';
import 'package:e_commerce/util/dimensions.dart';
import 'package:e_commerce/widgets/big_text.dart';
import 'package:e_commerce/widgets/small_text.dart';
import 'package:flutter/material.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({super.key});

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        //app Bar
        Container(
          child: Container(
            margin: EdgeInsets.only(
                top: Dimensions.radius45, bottom: Dimensions.radius15),
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //Top Text
                Column(
                  children: [
                    BigText(
                      text: 'Nepal',
                      color: FoodColor.mainColor,
                      size: 25,
                    ),
                    Row(
                      children: [
                        SmallText(
                          text: 'Dharan',
                          size: 14,
                        ),
                        Icon(Icons.arrow_drop_down_rounded)
                      ],
                    )
                  ],
                ),
                Center(
                  child: Container(
                    width: Dimensions.radius45,
                    height: Dimensions.radius45,
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(Dimensions.radius15),
                        color: FoodColor.mainColor),
                    child: Icon(
                      Icons.search,
                      color: Colors.white,
                      size: Dimensions.size24,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        Expanded(
            child: SingleChildScrollView(
          child: FoodPageBody(),
        ))
      ],
    ));
  }
}
