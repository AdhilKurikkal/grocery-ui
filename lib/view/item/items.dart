import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grocery_app/core/const/colorconst.dart';
import 'package:grocery_app/core/const/imageconst.dart';
import 'package:grocery_app/main.dart';
import 'package:grocery_app/view/details/details.dart';
import 'package:grocery_app/view/menu/menu.dart';
import 'package:grocery_app/widget/customshape.dart';

class itemsView extends StatefulWidget {
  const itemsView({super.key});

  @override
  State<itemsView> createState() => _itemsViewState();
}

class _itemsViewState extends State<itemsView> {
  TextEditingController textController = TextEditingController();
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
      'img': imageConst.rowMeat1,
      'item': 'Meat',
      'text': '(Fresh Market)',
      'qty': '1000 gm.',
      'price1': '70.',
      'price2': '89\$',
      'svg': svgConst.add,
    },
    {
      'img': imageConst.sweets,
      'item': 'Sweets',
      'text': '(Local shop)',
      'qty': '500 gm.',
      'price1': '15.',
      'price2': '20\$',
      'svg': svgConst.add,
    },
    {
      'img': imageConst.waterMelone,
      'item': 'Water Melone',
      'text': '(Fruit bae)',
      'qty': '450 gm.',
      'price1': '10.',
      'price2': '10\$',
      'svg': svgConst.add,
    },
    {
      'img': imageConst.Pizza,
      'item': 'Pizza',
      'text': '(Chickees)',
      'qty': '1000 gm.',
      'price1': '47.',
      'price2': '16\$',
      'svg': svgConst.add,
    },
    {
      'img': imageConst.RoastedChick,
      'item': 'Roasted Chik',
      'text': '(KFC)',
      'qty': '500 gm.',
      'price1': '50.',
      'price2': '55\$',
      'svg': svgConst.add,
    },
    {
      'img': imageConst.grapes,
      'item': 'Grapes',
      'text': '(LuLu)',
      'qty': '450 gm.',
      'price1': '30.',
      'price2': '19\$',
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
  List category = [
    'Frozen',
    'Fresh',
    'Drink & Water',
    'Meat',
    'Vegetable',
    'Fruits',
    'Bread',
  ];
  List<int> qty = List.filled(9, 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: h * 1,
              width: w * 1,
              decoration: BoxDecoration(color: colorConst.backgroundcolor),
              child: Column(
                children: [
                  Container(
                    height: h * 0.28,
                    child: ClipPath(
                      clipper: CustomShape(),
                      child: Container(
                        height: h * 0.2,
                        width: w * 1,
                        decoration: BoxDecoration(color: colorConst.appbarbg),
                        child: Padding(
                          padding: EdgeInsets.all(w * 0.03),
                          child: Column(
                            children: [
                              SizedBox(height: h * 0.025),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                    child: CircleAvatar(
                                      backgroundColor: colorConst.white,
                                      child: SvgPicture.asset(svgConst.back),
                                    ),
                                  ),
                                  Text(
                                    'Daily foods',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: colorConst.white,
                                      fontSize: w * 0.055,
                                    ),
                                  ),
                                  CircleAvatar(
                                    backgroundColor: colorConst.white,
                                    child: SvgPicture.asset(svgConst.cart),
                                  ),
                                ],
                              ),
                              SizedBox(height: h * 0.02),
                              Container(
                                height: h * 0.1,
                                child: ListView.builder(
                                  itemCount: category.length,
                                  itemBuilder: (context, index) {
                                    return Padding(
                                      padding: EdgeInsets.all(w * 0.05),
                                      child: InkWell(
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => MenuView(),
                                            ),
                                          );
                                        },
                                        child: Text(
                                          category[index],
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: w * 0.045,
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                  scrollDirection: Axis.horizontal,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: h * 0.05,
                        width: w * 0.75,
                        decoration: BoxDecoration(
                          color: colorConst.white2,
                          borderRadius: BorderRadius.circular(w * 0.05),
                          boxShadow: [
                            BoxShadow(
                              color: colorConst.boxshadowgrey,
                              blurRadius: 4,
                              spreadRadius: 1,
                              offset: Offset(0, 4),
                            ),
                          ],
                        ),
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
                      InkWell(
                        onTap: () {},
                        child: CircleAvatar(
                          backgroundColor: colorConst.white,
                          child: SvgPicture.asset(
                            svgConst.categoryicon,
                            width: w * 0.07,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: h * 0.015),
                  Expanded(
                    child: GridView.builder(
                      itemCount: 9,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        childAspectRatio: 1,
                        crossAxisSpacing: w * 0.015,
                        mainAxisExtent: w * 0.65,
                        mainAxisSpacing: w * 0.02,
                      ),
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DetailsView(),
                              ),
                            );
                          },
                          child: Container(
                            margin: EdgeInsets.all(w * 0.01),
                            height: h * 0.2,
                            width: w * 0.2,
                            decoration: BoxDecoration(
                              color: colorConst.white,
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
                                    SizedBox(height: h * 0.01),
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
                                                      color: colorConst.black,
                                                      width: w * 0.06,
                                                    ),
                                                  ),
                                                  Text(
                                                    '${qty[index]}',
                                                    style: TextStyle(
                                                      color: colorConst.black,
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
                                                      color: colorConst.black,
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
