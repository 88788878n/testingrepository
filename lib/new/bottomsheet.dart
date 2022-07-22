import 'package:flutter/material.dart';

class BottomSheets extends StatefulWidget {
  const BottomSheets({Key? key}) : super(key: key);

  @override
  State<BottomSheets> createState() => _BottomSheetsState();
}

class _BottomSheetsState extends State<BottomSheets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("bottomsheet"),
      ),body: Center(
      child: ElevatedButton(onPressed: (){
        showModalBottomSheet(context: context, builder: (ctx)=>Container(
          height: 300,
          color: Colors.yellowAccent,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Model bottom sheet"),
              ElevatedButton(onPressed: (){

                Navigator.pop(context);
              }, child: Text("Close BottonSheet"))
            ],
          ),
        ),);
      }, child: Text("show model bottom sheet"))
    ),
    );
  }
}

