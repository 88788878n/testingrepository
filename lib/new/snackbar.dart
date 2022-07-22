import 'package:flutter/material.dart';

class Mysnackbar extends StatefulWidget {
  const Mysnackbar({Key? key}) : super(key: key);

  @override
  State<Mysnackbar> createState() => _MysnackbarState();
}

class _MysnackbarState extends State<Mysnackbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SnackBar"),
      ),
      body: Center(
        child: ElevatedButton(onPressed: (){
          final snakbar=SnackBar(content: Text("Yay!A Snackbar!"),
              action: SnackBarAction(
                label: "Check", onPressed: () {
                Navigator.pop(context);
                 },
              ),
          );
          ScaffoldMessenger.of(context).showSnackBar(snakbar);
        }, child: Text("Show snackbar"),)
      ),
    );
  }
}
