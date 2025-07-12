import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';
import 'package:grocery_app/core/const/colorconst.dart';
import 'package:grocery_app/core/const/imageconst.dart';
import 'package:grocery_app/main.dart';
import 'package:grocery_app/view/item/items.dart';
import 'package:grocery_app/widget/customshape.dart';
import 'package:readmore/readmore.dart';

class DetailsView extends StatefulWidget {
  const DetailsView({super.key});

  @override
  State<DetailsView> createState() => _DetailsViewState();
}

class _DetailsViewState extends State<DetailsView> {
  List item = [
    {
      'img': imageConst.Beetroot,
      'item': 'Beetroot',
      'text': '(Local shop)',
      'qty': '500 gm.',
      'price1': '17.',
      'price2': '29\$',
    },
    {
      'img': imageConst.Avacado1,
      'item': 'Italian Avocado',
      'text': '(Local shop)',
      'qty': '450 gm.',
      'price1': '14.',
      'price2': '29\$',
    },
    {
      'img': imageConst.carrot3,
      'item': 'Deshi Gajor',
      'text': '(Local Carrot)',
      'qty': '1000 gm.',
      'price1': '27.',
      'price2': '29\$',
    },
  ];
  List bottmsht = [
    {
      'logo': svgConst.cola,
      'Brand': 'Coca Cola',
      'svg': svgConst.lightcharge,
      'text': 'Delivery in 10 minutes',
      'price': '20.42\$',
    },
    {
      'logo': svgConst.mcdonald,
      'Brand': 'McDonald',
      'svg': svgConst.lightcharge,
      'text': 'Delivery in 13 minutes',
      'price': '33.42\$',
    },
    {
      'logo': svgConst.kfc,
      'Brand': 'KFC',
      'svg': svgConst.lightcharge,
      'text': 'Delivery in 15 minutes',
      'price': '42.42\$',
    },
    {
      'logo': svgConst.pepsi,
      'Brand': 'Pepsi',
      'svg': svgConst.lightcharge,
      'text': 'Delivery in 10 minutes',
      'price': '15.42\$',
    },
    {
      'logo': svgConst.Pizza,
      'Brand': 'Pizza Hut',
      'svg': svgConst.lightcharge,
      'text': 'Delivery in 20 minutes',
      'price': '25.52\$',
    },
    {
      'logo': svgConst.zomato,
      'Brand': 'Zomato',
      'svg': svgConst.lightcharge,
      'text': 'Delivery in 15 minutes',
      'price': '30.82\$',
    },
    {
      'logo': svgConst.burgur,
      'Brand': 'Burger King',
      'svg': svgConst.lightcharge,
      'text': 'Delivery in 15 minutes',
      'price': '23.42\$',
    },
    {
      'logo': svgConst.chef,
      'Brand': 'Chef Pillai',
      'svg': svgConst.lightcharge,
      'text': 'Delivery in 10 minutes',
      'price': '20.42\$',
    },
  ];
  int qty = 0;
  String content =
      '100% satisfaction guarantee. If you exprience\n any of the following issues, missing, poor \nitem, late arrival, unprofessional\n service..We\'re committed to ensuring your\n compltesatisfaction with every purchase.\nIf you receive a damaged or incorrect item,\nplease contact us within 24hr for a \nreplacement or refund';
  TextEditingController textController = TextEditingController();
  bool favourate = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: EdgeInsets.symmetric(horizontal: w * 0.01),
        child: Container(
          height: h * 0.08,
          width: w * 1,
          decoration: BoxDecoration(
            color: colorConst.white,
            borderRadius: BorderRadius.circular(w * 0.05),
          ),
          padding: EdgeInsets.symmetric(horizontal: w * 0.02),
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: h * 0.06,
                width: w * 0.4,
                decoration: BoxDecoration(
                  color: colorConst.boxshadowgrey,
                  borderRadius: BorderRadius.circular(w * 0.06),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          if (qty > 0) qty--;
                        });
                      },
                      child: CircleAvatar(
                        child: SvgPicture.asset(svgConst.minus),
                        backgroundColor: colorConst.white,
                      ),
                    ),
                    Text('$qty', style: TextStyle(fontWeight: FontWeight.bold)),
                    InkWell(
                      onTap: () {
                        setState(() {
                          qty++;
                        });
                      },
                      child: CircleAvatar(
                        child: SvgPicture.asset(svgConst.add),
                        backgroundColor: colorConst.white,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: h * 0.06,
                width: w * 0.4,
                decoration: BoxDecoration(
                  color: colorConst.lightgreen,
                  borderRadius: BorderRadius.circular(w * 0.06),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SvgPicture.asset(svgConst.cart),
                    Text(
                      'Add to cart',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      appBar: AppBar(
        backgroundColor: colorConst.appbarbg,
        leading: Padding(
          padding: EdgeInsets.all(w * 0.02),
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: CircleAvatar(
              backgroundColor: colorConst.white,
              child: SvgPicture.asset(svgConst.back),
            ),
          ),
        ),
        title: Text(
          'Product Details',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: colorConst.white,
            fontSize: w * 0.055,
          ),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.all(w * 0.02),
            child: InkWell(
              child: CircleAvatar(
                backgroundColor: colorConst.white,
                child: SvgPicture.asset(svgConst.cart),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ClipPath(
              clipper: CustomShapeDetail(),
              child: Container(
                height: h * 0.07,
                decoration: BoxDecoration(color: colorConst.appbarbg),
              ),
            ),
            Container(
              height: h * 0.2,
              width: w * 0.5,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(imageConst.rowMeat),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SizedBox(height: h * 0.03),
            Padding(
              padding: EdgeInsets.all(w * 0.03),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Beef Mixed Cut Bone\nIn 50 gm',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          // color: colorConst.white,
                          fontSize: w * 0.055,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            favourate = !favourate;
                          });
                        },
                        child: SvgPicture.asset(
                          svgConst.favoratefilled,
                          color: favourate ? colorConst.red : colorConst.grey,
                          width: w * 0.07,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(width: w * 0.03),
                      Text(
                        '1000 gm',
                        style: TextStyle(
                          color: colorConst.grey,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: h * 0.03),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '23.46\$',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: w * 0.06,
                        ),
                      ),
                      Text('Available on fast delivery'),
                    ],
                  ),
                  Divider(endIndent: w * 0.01, indent: w * 0.01),
                  SizedBox(height: h * 0.02),
                  Row(
                    children: [
                      SvgPicture.asset(svgConst.best, width: w * 0.06),
                      SizedBox(width: w * 0.015),
                      SvgPicture.asset(svgConst.ecofriendly, width: w * 0.06),
                      SizedBox(width: w * 0.015),
                      SvgPicture.asset(svgConst.bestseller, width: w * 0.06),
                      SizedBox(width: w * 0.47),
                      SvgPicture.asset(svgConst.star, width: w * 0.06),
                      Text(
                        '4.5 Rating',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(height: h * 0.01),
                  Divider(endIndent: w * 0.01, indent: w * 0.01),
                  SizedBox(height: h * 0.01),
                  Row(
                    children: [
                      SizedBox(width: w * 0.06),
                      Expanded(
                        child: ReadMoreText(
                          content,
                          trimLines: 3,
                          textAlign: TextAlign.justify,
                          trimMode: TrimMode.Line,
                          trimCollapsedText: 'Read More',
                          trimExpandedText: 'Read Less',
                          lessStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: colorConst.darkgreen,
                          ),
                          moreStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: colorConst.darkgreen,
                          ),
                          style: TextStyle(fontSize: w * 0.04),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: h * 0.03),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Other store',
                        style: TextStyle(
                          fontSize: w * 0.055,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          showModalBottomSheet(
                            isScrollControlled: true,
                            context: context,
                            builder: (context) {
                              return Container(
                                height: h * 0.9,
                                width: w * 1,
                                decoration: BoxDecoration(
                                  color: colorConst.white,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(w * 0.1),
                                    topRight: Radius.circular(w * 0.1),
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    SizedBox(height: h * 0.01),
                                    Text(
                                      'Choose Store',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: w * 0.05,
                                      ),
                                    ),
                                    SizedBox(height: h * 0.02),
                                    Expanded(
                                      child: ListView.builder(
                                        itemCount: bottmsht.length,
                                        itemBuilder: (context, index) {
                                          return InkWell(
                                            onTap: () {},
                                            child: Container(
                                              margin: EdgeInsets.all(w * 0.02),
                                              height: h * 0.15,
                                              width: w * 0.9,
                                              decoration: BoxDecoration(
                                                color: colorConst.boxshadowgrey,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                      w * 0.04,
                                                    ),
                                              ),
                                              child: Column(
                                                children: [
                                                  SizedBox(height: h * 0.02),
                                                  Row(
                                                    children: [
                                                      SizedBox(width: w * 0.03),
                                                      CircleAvatar(
                                                        backgroundColor:
                                                            colorConst
                                                                .boxshadowgrey,
                                                        child: SvgPicture.asset(
                                                          bottmsht[index]['logo'],
                                                        ),
                                                      ),
                                                      Column(
                                                        children: [
                                                          Text(
                                                            bottmsht[index]['Brand'],
                                                            style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize:
                                                                  w * 0.05,
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            width: w * 0.01,
                                                          ),
                                                          Row(
                                                            children: [
                                                              SizedBox(
                                                                width: w * 0.03,
                                                              ),
                                                              SvgPicture.asset(
                                                                bottmsht[index]['svg'],
                                                                color:
                                                                    colorConst
                                                                        .gold,
                                                              ),
                                                              SizedBox(
                                                                width: w * 0.01,
                                                              ),
                                                              Text(
                                                                bottmsht[index]['text'],
                                                                style:
                                                                    TextStyle(
                                                                      fontSize:
                                                                          w *
                                                                          0.032,
                                                                    ),
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(height: h * 0.02),
                                                  Row(
                                                    children: [
                                                      SizedBox(width: w * 0.17),
                                                      Text(
                                                        bottmsht[index]['price'],
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: w * 0.05,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          );
                        },
                        child: Text(
                          'Visit stores',
                          style: TextStyle(
                            fontSize: w * 0.04,
                            fontWeight: FontWeight.bold,
                            color: colorConst.red,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: h * 0.015),
                  Column(
                    children: [
                      Container(
                        height: h * 0.15,
                        width: w * 0.9,
                        decoration: BoxDecoration(
                          color: colorConst.boxshadowgrey,
                          borderRadius: BorderRadius.circular(w * 0.04),
                        ),
                        child: Column(
                          children: [
                            SizedBox(height: h * 0.02),
                            Row(
                              children: [
                                SizedBox(width: w * 0.03),
                                CircleAvatar(
                                  backgroundColor: colorConst.boxshadowgrey,
                                  child: SvgPicture.asset(svgConst.cola),
                                ),
                                Column(
                                  children: [
                                    Text(
                                      'Coca Cola',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: w * 0.05,
                                      ),
                                    ),
                                    SizedBox(width: w * 0.01),
                                    Row(
                                      children: [
                                        SizedBox(width: w * 0.03),
                                        SvgPicture.asset(
                                          svgConst.lightcharge,
                                          color: colorConst.gold,
                                        ),
                                        SizedBox(width: w * 0.01),
                                        Text(
                                          'Delivery in 10 minutes',
                                          style: TextStyle(fontSize: w * 0.032),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: h * 0.02),
                            Row(
                              children: [
                                SizedBox(width: w * 0.17),
                                Text(
                                  '20.42\$',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: w * 0.05,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: h * 0.015),
                      Container(
                        height: h * 0.15,
                        width: w * 0.9,
                        decoration: BoxDecoration(
                          color: colorConst.boxshadowgrey,
                          borderRadius: BorderRadius.circular(w * 0.04),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              height: h * 0.03,
                              width: w * 0.25,
                              decoration: BoxDecoration(
                                color: colorConst.violet,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(w * 0.03),
                                  topRight: Radius.circular(w * 0.03),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  'Lower price',
                                  style: TextStyle(
                                    fontSize: w * 0.03,
                                    color: colorConst.white,
                                  ),
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                SizedBox(width: w * 0.03),
                                CircleAvatar(
                                  backgroundColor: colorConst.boxshadowgrey,
                                  child: SvgPicture.asset(svgConst.mcdonald),
                                ),
                                Column(
                                  children: [
                                    Text(
                                      'McDonald',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: w * 0.05,
                                      ),
                                    ),
                                    SizedBox(width: w * 0.01),
                                    Row(
                                      children: [
                                        SizedBox(width: w * 0.03),
                                        SvgPicture.asset(
                                          svgConst.lightcharge,
                                          color: colorConst.gold,
                                        ),
                                        SizedBox(width: w * 0.01),
                                        Text(
                                          'Delivery in 13 minutes',
                                          style: TextStyle(fontSize: w * 0.032),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: h * 0.02),
                            Row(
                              children: [
                                SizedBox(width: w * 0.17),
                                Text(
                                  '20.42\$',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: w * 0.05,
                                  ),
                                ),
                                SizedBox(width: w * 0.3),
                                Text(
                                  '+3.90 Delivery',
                                  style: TextStyle(fontSize: w * 0.03),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: h * 0.015),
                      Container(
                        height: h * 0.15,
                        width: w * 0.9,
                        decoration: BoxDecoration(
                          color: colorConst.boxshadowgrey,
                          borderRadius: BorderRadius.circular(w * 0.04),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              height: h * 0.03,
                              width: w * 0.25,
                              decoration: BoxDecoration(
                                color: colorConst.violet,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(w * 0.03),
                                  topRight: Radius.circular(w * 0.03),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  'In Store price',
                                  style: TextStyle(
                                    fontSize: w * 0.03,
                                    color: colorConst.white,
                                  ),
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                SizedBox(width: w * 0.03),
                                CircleAvatar(
                                  backgroundColor: colorConst.boxshadowgrey,
                                  child: SvgPicture.asset(svgConst.kfc),
                                ),
                                Column(
                                  children: [
                                    Text(
                                      'KFC',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: w * 0.05,
                                      ),
                                    ),
                                    SizedBox(width: w * 0.01),
                                    Row(
                                      children: [
                                        SizedBox(width: w * 0.03),
                                        SvgPicture.asset(
                                          svgConst.lightcharge,
                                          color: colorConst.gold,
                                        ),
                                        SizedBox(width: w * 0.01),
                                        Text(
                                          'Delivery in 15 minutes',
                                          style: TextStyle(fontSize: w * 0.032),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: h * 0.02),
                            Row(
                              children: [
                                SizedBox(width: w * 0.17),
                                Text(
                                  '25.50\$',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: w * 0.05,
                                  ),
                                ),
                                SizedBox(width: w * 0.3),
                                Text(
                                  '+5.99 Delivery',
                                  style: TextStyle(fontSize: w * 0.03),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: h * 0.02),
                  Divider(endIndent: w * 0.01, indent: w * 0.01),
                  SizedBox(height: h * 0.01),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Cooking idea',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: w * 0.055,
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: SvgPicture.asset(svgConst.downarrow),
                      ),
                    ],
                  ),
                  SizedBox(height: h * 0.02),
                  Divider(endIndent: w * 0.01, indent: w * 0.01),
                  SizedBox(height: h * 0.02),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Nutrition values',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: w * 0.055,
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: SvgPicture.asset(svgConst.downarrow),
                      ),
                    ],
                  ),
                  SizedBox(height: h * 0.02),
                  Divider(endIndent: w * 0.01, indent: w * 0.01),
                  SizedBox(height: h * 0.02),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Similar product',
                        style: TextStyle(
                          fontSize: w * 0.055,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => itemsView(),
                            ),
                          );
                        },
                        child: Text(
                          'See more',
                          style: TextStyle(
                            fontSize: w * 0.04,
                            fontWeight: FontWeight.bold,
                            color: colorConst.red,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: h * 0.3,
                    child: ListView.builder(
                      itemCount: item.length,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.all(w * 0.025),
                          height: h * 0.25,
                          width: w * 0.3,
                          decoration: BoxDecoration(
                            color: colorConst.white2,
                            borderRadius: BorderRadius.circular(w * 0.02),
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
                            children: [
                              Image.asset(item[index]['img'], width: w * 0.25),
                              Text(
                                item[index]['item'],
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                item[index]['text'],
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                item[index]['qty'],
                                style: TextStyle(
                                  color: colorConst.grey,
                                  fontSize: w * 0.03,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Column(
                                children: [
                                  SizedBox(height: h * 0.015),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        item[index]['price1'],
                                        style: TextStyle(
                                          fontSize: w * 0.06,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        item[index]['price2'],
                                        style: TextStyle(
                                          fontSize: w * 0.03,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(height: h * 0.15),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
