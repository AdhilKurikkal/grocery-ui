import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocery_app/core/const/colorconst.dart';
import 'package:grocery_app/core/const/imageconst.dart';
import 'package:grocery_app/main.dart';
import 'package:grocery_app/widget/customshape.dart';

class MenuView extends StatefulWidget {
  const MenuView({super.key});

  @override
  State<MenuView> createState() => _MenuViewState();
}

class _MenuViewState extends State<MenuView> {
  List category = [
    {'item': 'Meats', 'text': 'Frozen Meal', 'img': imageConst.meat},
    {'item': 'Vegetable', 'text': 'Markets', 'img': imageConst.veggi},
    {'item': 'Fruits', 'text': 'comical free', 'img': imageConst.fruit},
    {'item': 'Breads', 'text': 'Burnt', 'img': imageConst.bread},
    {'item': 'Snacks', 'text': 'Evening', 'img': imageConst.corn},
    {'item': 'Bakery', 'text': 'Meal and Flour', 'img': imageConst.Flour},
    {'item': 'Dairy&Sweet', 'text': 'in store', 'img': imageConst.sweets},
    {'item': 'Chicken', 'text': 'Frozen Meal', 'img': imageConst.chicken},
  ];
  TextEditingController textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorConst.appbarbg,
        title: Container(
          height: h * 0.05,
          width: w * 0.7,
          child: TextFormField(
            controller: textController,
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              counterText: '',
              label: Text(
                'Search for "Grocery"',
                style: TextStyle(fontSize: w * 0.035),
              ),
              filled: true,
              prefixIcon: Icon(Icons.search),
              fillColor: colorConst.white,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(w * 0.05),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.all(w * 0.02),
            child: CircleAvatar(
              radius: w * 0.09,
              backgroundColor: colorConst.white,
              child: SvgPicture.asset(svgConst.cart),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                Container(
                  height: h * 0.15,
                  child: ClipPath(
                    clipper: CustomShape(),
                    child: Container(
                      height: h * 0.13,
                      width: w * 1,
                      decoration: BoxDecoration(color: colorConst.appbarbg),
                    ),
                  ),
                ),
                Container(
                  height: h * 0.1,
                  width: w * 0.9,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(imageConst.categoryadd),
                      fit: BoxFit.fill,
                    ),
                    color: colorConst.appbarbg,
                    borderRadius: BorderRadius.circular(w * 0.04),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Get 10% off groceries with plus+ T&C Apply',
                        style: TextStyle(
                          color: colorConst.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          SizedBox(width: w * 0.06),
                          SvgPicture.asset(
                            svgConst.about,
                            width: w * 0.04,
                            color: colorConst.gold,
                          ),
                          SizedBox(width: w * 0.03),
                          Text(
                            'Spend \$30.00 to get 5%',
                            style: TextStyle(color: colorConst.primaryColor),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: h * 0.03),
                Row(
                  children: [
                    SizedBox(width: w * 0.02),
                    Text(
                      'All Categories',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: w * 0.06,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: h * 0.015),
                GridView.builder(
                  shrinkWrap: true,
                  itemCount: category.length,
                  scrollDirection: Axis.vertical,
                  physics: BouncingScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: w * 0.02,
                    mainAxisExtent: w * 0.35,
                    mainAxisSpacing: w * 0.02,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      margin: EdgeInsets.all(w * 0.02),
                      height: h * 0.2,
                      width: w * 0.3,
                      decoration: BoxDecoration(
                        color: colorConst.white,
                        borderRadius: BorderRadius.circular(w * 0.03),
                        boxShadow: [
                          BoxShadow(
                            color: colorConst.boxshadowgrey,
                            blurRadius: 4,
                            spreadRadius: 2,
                            offset: Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(height: h * 0.015),
                          Row(
                            children: [
                              SizedBox(width: w * 0.05),
                              Text(
                                category[index]['item'],
                                style: TextStyle(
                                  color: colorConst.appbarbg,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  SizedBox(width: w * 0.05),
                                  Text(
                                    category[index]['text'],
                                    style: TextStyle(color: colorConst.grey),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                margin: EdgeInsets.all(w * 0.02),
                                height: h * 0.05,
                                width: w * 0.1,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(category[index]['img']),
                                  ),
                                  // color: colorConst.backgroundcolor,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
