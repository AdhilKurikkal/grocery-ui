import 'package:flutter/material.dart';

//appbar
class CustomShape extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    // // TODO: implement getClip
    // throw UnimplementedError();
    double h = size.height;
    double w = size.width;
    var path = Path();
    path.lineTo(0, h - 70);
    path.quadraticBezierTo(w / 2, h, w, h - 70);
    path.lineTo(w, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<dynamic> oldClipper) {
    // TODO: implement shouldReclip
    // throw UnimplementedError();
    return true;
  }
}

//listview
class CustomShapeClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();

    // Define the path for the desired shape
    path.moveTo(0, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height * 0.9);
    path.quadraticBezierTo(size.width / 2, size.height, 0, size.height * 0.9);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

//DetailPage
class CustomShapeDetail extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    // // TODO: implement getClip
    // throw UnimplementedError();
    double h = size.height;
    double w = size.width;
    var path = Path();
    path.lineTo(0, h - 1);
    path.quadraticBezierTo(w / 2, h - 50, w, h - 1);
    path.lineTo(w, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<dynamic> oldClipper) {
    // TODO: implement shouldReclip
    // throw UnimplementedError();
    return true;
  }
}
