import 'package:flutter/material.dart';

class Demo extends StatelessWidget {
  const Demo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text("demo"),
      ),body: CustomPaint(
      child: Container(
        color: Colors.blue,
        height: 400,
        width: 400,

      ),foregroundPainter:MyNwePaint() ,
    ),
    );
  }
}

class MyNwePaint extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    var paint=Paint()
    ..color=Colors.yellow
        ..strokeWidth=15;
    Offset start=Offset(size.width/2, size.height/10);
    Offset end=Offset(size.width/2, size.height/1);
    canvas.drawLine(start, end, paint);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    throw UnimplementedError();
  }

}
