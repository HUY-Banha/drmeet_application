import 'dart:ui' as ui;

import 'package:flutter/material.dart';

//Add this CustomPaint widget to the Widget Tree

//Copy this CustomPainter code to the Bottom of the File
class BroadingBottomCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.9991333, size.height * 1.674877);
    path_0.lineTo(size.width * -0.0008676306, size.height * 1.674877);
    path_0.lineTo(size.width * -0.0008676306, 0);
    path_0.cubicTo(
        size.width * -0.0008676306,
        0,
        size.width * -0.1855897,
        size.height * 1.243842,
        size.width * 0.2310769,
        size.height * 0.8078818);
    path_0.cubicTo(size.width * 0.6477444, size.height * 0.3719212,
        size.width * 0.9991333, 0, size.width * 0.9991333, 0);
    path_0.lineTo(size.width * 0.9991333, size.height * 1.674877);
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

class BroadingTopCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(0, size.height);
    path_0.cubicTo(
        0,
        size.height,
        size.width * 0.07638889,
        size.height * 0.1960784,
        size.width * 0.3569444,
        size.height * 0.3848039);
    path_0.cubicTo(
        size.width * 0.6375000,
        size.height * 0.5735294,
        size.width * 0.9987750,
        size.height,
        size.width * 0.9987750,
        size.height);
    path_0.lineTo(size.width * 0.9987750, size.height * -0.2156863);
    path_0.lineTo(0, size.height * -0.2156863);
    path_0.lineTo(0, size.height);
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
