import 'package:flutter/material.dart';
class MyAlertDialog extends StatefulWidget {
   MyAlertDialog({Key? key}) : super(key: key);

  @override
  State<MyAlertDialog> createState() => _MyAlertDialogState();
}

class _MyAlertDialogState extends State<MyAlertDialog> {
  @override
  bool isChange=true;

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text('Alert dialog sample'),
      ),
      body: Center(
        child: ElevatedButton(onPressed: (){
          isChangeColor(context);
        },style:ElevatedButton.styleFrom(primary: isChange?Colors.blue:Colors.orange),child: Text('Press the Button')),
      )
    );
  }

  isChangeColor(var sim){
    showDialog(context: sim, builder: (BuildContext context){
      return AlertDialog(
        title: Text('Do you want change color?'),
        content: Text('Select blue or orange'),
        actions: [
          TextButton(onPressed: (){
            setState(() {
              isChange=false;
            });
            return Navigator.pop(context);
          }, child: Text('Orange')),
          TextButton(onPressed: (){
        setState(() {
          isChange=true;
        });
            return Navigator.pop(context);
          }, child: Text('Blue')),
        ],
      );
    });
  }
}
