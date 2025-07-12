// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

import 'package:grocery_ui/widget/bttmnav.dart';

void main() {
  runApp(const MyApp());
}

var h;
var w;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return MaterialApp(debugShowCheckedModeBanner: false, home: BttmNvView());
  }
}
