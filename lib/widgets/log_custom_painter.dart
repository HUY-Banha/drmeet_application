import 'dart:ui' as ui;

import 'package:flutter/material.dart';

//Add this CustomPaint widget to the Widget Tree


//Copy this CustomPainter code to the Bottom of the File
class LogCustomPainter extends CustomPainter {
    @override
    void paint(Canvas canvas, Size size) {
            
Path path_0 = Path();
    path_0.moveTo(size.width*0.9991333,size.height*1.287879);
    path_0.lineTo(size.width*-0.0008677167,size.height*1.287879);
    path_0.lineTo(size.width*-0.0008677167,0);
    path_0.cubicTo(size.width*-0.0008677167,0,size.width*-0.1855900,size.height*0.9564394,size.width*0.2310767,size.height*0.6212121);
    path_0.cubicTo(size.width*0.6477444,size.height*0.2859848,size.width*0.9991333,0,size.width*0.9991333,0);
    path_0.lineTo(size.width*0.9991333,size.height*1.287879);
    path_0.close();

Paint paint_0_fill = Paint()..style=PaintingStyle.fill;
paint_0_fill.color = Color(0xffA40202).withOpacity(1.0);
canvas.drawPath(path_0,paint_0_fill);

}

@override
bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
}
}