import 'package:flutter/material.dart';
class CurvedPaint extends StatelessWidget {
  const CurvedPaint({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("cured paint"),
      ),body: Container(
      child: Center(
        child: CustomPaint(
          size: Size(400,400),
          painter: MyPaint(),
        ),
      ),
    ),
    );
  }
}
class MyPaint extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    var paint=Paint()
    ..strokeWidth=15
        ..color=Colors.pink;
    var path = Path();

    path.moveTo(0, size.height * 0.1);
    path.quadraticBezierTo(size.width * 0.15, size.height * 0.7,
        size.width * 0.5, size.height * 0.8);
    path.quadraticBezierTo(size.width * 0.75, size.height * 0.9,
        size.width * 1.0, size.height * 0.8);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);

    canvas.drawPath(path, paint);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    throw UnimplementedError();
  }

}
