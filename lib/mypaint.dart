import 'package:flutter/material.dart';
import 'package:newpaint/login.dart';

class Myspaint extends StatelessWidget {
  const Myspaint({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Color(0xff9f4dbf),
            child: CustomPaint(
              foregroundPainter: spaint(),
            ),
          ),
          Positioned(
              top: 300,
              left: 40,
              child: Login()
          ) ],
      ),
    );
  }
}

class spaint extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..strokeWidth = 15
      ..color = Color(0xff727370);

    var secondPaint = Paint()
      ..strokeWidth = 15
      ..color = Color(0xff879963);
    Offset second = Offset(size.width / 0.9, size.height / 1.6);
    canvas.drawCircle(second, 360, secondPaint);

    Offset frist = Offset(size.width / 30, size.height / 1.5);
    canvas.drawCircle(frist, 400, paint);

    // TODO: implement paint
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
  return true;
  }
}
