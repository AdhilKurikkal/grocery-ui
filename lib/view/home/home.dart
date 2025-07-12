import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocery_app/core/const/colorconst.dart';
import 'package:grocery_app/core/const/imageconst.dart';
import 'package:grocery_app/main.dart';
import 'package:grocery_app/view/item/items.dart';
import 'package:grocery_app/widget/customshape.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  TextEditingController textController = TextEditingController();
  //
  List item = [
    {
      'img': imageConst.Beetroot,
      'item': 'Beetroot',
      'text': '(Local shop)',
      'qty': '500 gm.',
      'price1': '17.',
      'price2': '29\$',
      'svg': svgConst.add,
    },
    {
      'img': imageConst.Avacado1,
      'item': 'Italian Avocado',
      'text': '(Local shop)',
      'qty': '450 gm.',
      'price1': '14.',
      'price2': '29\$',
      'svg': svgConst.add,
    },
    {
      'img': imageConst.carrot3,
      'item': 'Deshi Gajor',
      'text': '(Local Carrot)',
      'qty': '1000 gm.',
      'price1': '27.',
      'price2': '29\$',
      'svg': svgConst.add,
    },
  ];
  //\

  List<int> qty = List.filled(9, 0);

  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorConst.appbarbg,
        title: Container(
          height: h * 0.05,
          width: w * 0.75,
          child: TextFormField(
            controller: textController,
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              counterText: '',
              label: Text('Search for "Grocery"'),
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
              backgroundColor: colorConst.white,
              child: SvgPicture.asset(svgConst.cart),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: h * 1,
              width: w * 1,
              decoration: BoxDecoration(color: colorConst.white),
              child: Column(
                children: [
                  Container(
                    height: h * 0.23,
                    child: Stack(
                      children: [
                        ClipPath(
                          clipper: CustomShape(),
                          child: Container(
                            height: h * 0.2,
                            width: w * 1,
                            decoration: BoxDecoration(
                              color: colorConst.appbarbg,
                            ),
                            child: Column(
                              children: [
                                SizedBox(height: h * 0.015),
                                Text(
                                  'Current Location',
                                  style: TextStyle(color: colorConst.text),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'California,  USA',
                                      style: TextStyle(
                                        fontSize: w * 0.05,
                                        fontWeight: FontWeight.bold,
                                        color: colorConst.lightgreen,
                                      ),
                                    ),
                                    SizedBox(width: w * .02),
                                    SvgPicture.asset(
                                      svgConst.telegram,
                                      color: colorConst.lightgreen,
                                      width: w * 0.065,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          top: w * 0.23,
                          left: w * 0.1,
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: w * 0.07,
                                backgroundColor: colorConst.circleColor,
                                backgroundImage: AssetImage(imageConst.meat),
                              ),
                              Text(
                                'Meats',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          top: w * 0.27,
                          left: w * 0.32,
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: w * 0.07,
                                backgroundColor: colorConst.circleColor,
                                backgroundImage: AssetImage(imageConst.veggi),
                              ),
                              Text(
                                'Vege',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          top: w * 0.27,
                          left: w * 0.52,
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: w * 0.07,
                                backgroundColor: colorConst.circleColor,
                                backgroundImage: AssetImage(imageConst.fruit),
                              ),
                              Text(
                                'Fruits',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          top: w * 0.22,
                          left: w * 0.75,
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: w * 0.07,
                                backgroundColor: colorConst.circleColor,
                                backgroundImage: AssetImage(imageConst.bread),
                              ),
                              Text(
                                'Bread',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: h * 0.03),
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(w * 0.025),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'You might need',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: w * 0.06,
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
                                  fontWeight: FontWeight.bold,
                                  color: colorConst.red,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: h * 0.33,
                        child: ListView.builder(
                          itemCount: item.length,
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return ClipPath(
                              clipBehavior: Clip.none,
                              clipper: CustomShapeClipper(),
                              child: Container(
                                margin: EdgeInsets.all(w * 0.025),
                                height: h * 0.3,
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
                                    Image.asset(
                                      item[index]['img'],
                                      width: w * 0.25,
                                    ),
                                    Text(
                                      item[index]['item'],
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      item[index]['text'],
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
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
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
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
                                        Container(
                                          margin: EdgeInsets.all(w * 0.015),
                                          height: h * 0.04,
                                          width: w * 0.3,
                                          decoration: BoxDecoration(
                                            color:
                                                qty[index] == 0
                                                    ? colorConst.boxshadowgrey
                                                    : colorConst.addContainer,
                                            borderRadius: BorderRadius.circular(
                                              w * 0.03,
                                            ),
                                          ),
                                          child:
                                              qty[index] == 0
                                                  ? InkWell(
                                                    onTap: () {
                                                      setState(() {
                                                        qty[index]++;
                                                      });
                                                    },
                                                    child: SvgPicture.asset(
                                                      item[index]['svg'],
                                                      color: colorConst.black,
                                                    ),
                                                  )
                                                  : Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceEvenly,
                                                    children: [
                                                      InkWell(
                                                        onTap: () {
                                                          setState(() {
                                                            if (qty[index] > 0)
                                                              qty[index]--;
                                                          });
                                                        },
                                                        child: SvgPicture.asset(
                                                          svgConst.minus,
                                                          color:
                                                              colorConst.black,
                                                          width: w * 0.06,
                                                        ),
                                                      ),
                                                      Text(
                                                        '${qty[index]}',
                                                        style: TextStyle(
                                                          color:
                                                              colorConst.black,
                                                          fontSize: w * 0.04,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                      ),
                                                      InkWell(
                                                        onTap: () {
                                                          setState(() {
                                                            qty[index]++;
                                                          });
                                                        },
                                                        child: SvgPicture.asset(
                                                          svgConst.add,
                                                          color:
                                                              colorConst.black,
                                                          width: w * 0.06,
                                                        ),
                                                      ),
                                                    ],
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
                      Container(
                        height: h * 0.16,
                        child: ListView.builder(
                          itemCount: 3,
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Container(
                              margin: EdgeInsets.all(w * 0.025),
                              height: h * 0.09,
                              width: w * 0.53,
                              decoration: BoxDecoration(
                                color: colorConst.advrtsmntContainer1,
                                borderRadius: BorderRadius.circular(w * 0.03),
                                image: DecorationImage(
                                  image: AssetImage(imageConst.avocard),
                                  fit: BoxFit.fill,
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(w * 0.03),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Grocery',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: w * 0.05,
                                      ),
                                    ),
                                    Text(
                                      'By 12:15pm',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: colorConst.red,
                                      ),
                                    ),
                                    SizedBox(height: h * 0.02),
                                    Text('Free delivery'),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      // Text('data')
                    ],
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
