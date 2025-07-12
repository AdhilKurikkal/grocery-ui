// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocery_ui/core/const/colorconst.dart';
import 'package:grocery_ui/core/const/imageconst.dart';
import 'package:grocery_ui/main.dart';
import 'package:grocery_ui/view/delivery/delivery.dart';
import 'package:grocery_ui/view/fav/favorite.dart';
import 'package:grocery_ui/view/home/home.dart';
import 'package:grocery_ui/view/menu/menu.dart';

class BttmNvView extends StatefulWidget {
  const BttmNvView({super.key});

  @override
  State<BttmNvView> createState() => _BttmNvViewState();
}

class _BttmNvViewState extends State<BttmNvView> {
  int currentIndex = 0;
  List pages = [HomeView(), MenuView(), FavoritePage(), DeliveryPage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      floatingActionButton: Padding(
        padding: EdgeInsets.symmetric(horizontal: w * 0.01),
        child: Container(
          height: h * 0.08,
          width: w * 0.7,
          decoration: BoxDecoration(
            color: colorConst.white,
            borderRadius: BorderRadius.circular(w * 0.06),
          ),
          padding: EdgeInsets.symmetric(horizontal: w * 0.02),
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    currentIndex = 0;
                  });
                },
                child: CircleAvatar(
                  backgroundColor:
                      currentIndex == 0
                          ? colorConst.lightgreen
                          : colorConst.white,
                  child: SvgPicture.asset(svgConst.home, width: w * 0.07),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    currentIndex = 1;
                  });
                },
                child: CircleAvatar(
                  backgroundColor:
                      currentIndex == 1
                          ? colorConst.lightgreen
                          : colorConst.white,
                  child: SvgPicture.asset(
                    svgConst.menu,
                    width: w * 0.07,
                    color: colorConst.black,
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    currentIndex = 2;
                  });
                },
                child: CircleAvatar(
                  backgroundColor:
                      currentIndex == 2
                          ? colorConst.lightgreen
                          : colorConst.white,
                  child: SvgPicture.asset(
                    svgConst.favorate,
                    color: colorConst.black,
                    width: w * 0.07,
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    currentIndex = 3;
                  });
                },
                child: CircleAvatar(
                  backgroundColor:
                      currentIndex == 3
                          ? colorConst.lightgreen
                          : colorConst.white,
                  child: SvgPicture.asset(
                    svgConst.truck,
                    color: colorConst.black,
                    width: w * 0.07,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
