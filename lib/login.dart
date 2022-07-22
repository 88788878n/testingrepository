import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Column(
        children: [
          Container(
            height: 70,
            width: 300,
            child: TextField(
                cursorColor: Colors.white,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30))
                  ),
                  labelText: "Moble number/customer id",
                ),
    ),
          ), Container(
            height: 70,
            width: 300,
            child: TextField(
              cursorColor: Colors.white,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30),)
                ),
                labelText: "Password",
              ),
            ),
          ),TextButton(onPressed: (){
            print("clicked");
          }, child: Text("Login"),style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.green),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.red)
                  )
              )
          ),)
        ],
      );
  }
}
