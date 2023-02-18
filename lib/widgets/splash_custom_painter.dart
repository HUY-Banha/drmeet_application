import 'dart:ui' as ui;

import 'package:flutter/material.dart';

//Add this CustomPaint widget to the Widget Tree

//Copy this CustomPainter code to the Bottom of the File
class SplashTopCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(0, size.height * -0.3654618);
    path_0.lineTo(size.width, size.height * -0.3654618);
    path_0.lineTo(size.width, size.height);
    path_0.cubicTo(
        size.width,
        size.height,
        size.width * 1.184722,
        size.height * -0.01405622,
        size.width * 0.7680556,
        size.height * 0.3413655);
    path_0.cubicTo(size.width * 0.3513889, size.height * 0.6967871, 0,
        size.height, 0, size.height);
    path_0.lineTo(0, size.height * -0.3654618);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Color(0xffA40202).withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class SplashBottomCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.001225075, 0);
    path_0.cubicTo(
        size.width * 0.001225075,
        0,
        size.width * -0.09178444,
        size.height * 0.9012097,
        size.width * 0.2804972,
        size.height * 0.8467742);
    path_0.cubicTo(size.width * 0.6527778, size.height * 0.7923387, size.width,
        0, size.width, 0);
    path_0.lineTo(size.width, size.height);
    path_0.lineTo(size.width * 0.001225075, size.height);
    path_0.lineTo(size.width * 0.001225075, 0);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Color(0xffA40202).withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
