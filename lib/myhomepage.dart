import 'dart:math';

import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("custom paint"),
      ),
      body: Center(
        child: CustomPaint(
          child: Container(
            height: 300,
            width: 300,
            color: Colors.grey,
          ),foregroundPainter:CirclePainter() ,
        ),
      ),
    );
  }
}
// class LinePainter extends CustomPainter{
//   @override
//   void paint(Canvas canvas, Size size) {
//     var paint=Paint()
//         ..strokeWidth=15
//         ..color=Colors.orange;
//
//     Offset strt=Offset(size.width,size.height/ 2);
//     Offset end=Offset(0,size.height/ 2);
//     canvas.drawLine(strt, end, paint);
//
//     // TODO: implement paint
//   }
//
//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) {
//     // TODO: implement shouldRepaint
//     throw UnimplementedError();
//   }
//
// }

class CirclePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = Colors.blue
      ..strokeWidth = 15;

    Offset center=Offset(size.width/2,size.height/2);
    canvas.drawCircle(center, 50, paint);

  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}