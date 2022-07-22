import 'package:flutter/material.dart';
import 'package:newpaint/circilpaitre.dart';
import 'package:newpaint/line.dart';
import 'package:newpaint/login.dart';
import 'package:newpaint/myhomepage.dart';
import 'package:newpaint/mypaint.dart';
import 'package:newpaint/new/allertdailog.dart';
import 'package:newpaint/new/bottomsheet.dart';
import 'package:newpaint/new/salertdailog.dart';
import 'package:newpaint/new/snackbar.dart';
import 'package:newpaint/newpainting.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home:  Salertdailog()
    );
  }
}



