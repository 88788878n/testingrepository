import 'package:flutter/material.dart';

class Salertdailog extends StatefulWidget {
  const Salertdailog({Key? key}) : super(key: key);

  @override
  State<Salertdailog> createState() => _SalertdailogState();
}

class _SalertdailogState extends State<Salertdailog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("alert dialog"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (ctx) => AlertDialog(
                title: Text("Alert dialog box"),
                content: Text("You have raised a Alert Dialog Box"),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                      showModalBottomSheet(
                        context: context,
                        builder: (ctx) => Container(
                          height: 300,
                          color: Colors.yellowAccent,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Model bottom sheet"),
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                  final snakbar = SnackBar(
                                    content: Text("Yay!A Snackbar!"),
                                    action: SnackBarAction(
                                      label: "Check",
                                      onPressed: () {
                                        Navigator.push(context, MaterialPageRoute(builder: (ctx)=>Salertdailog()));
                                      },
                                    ),
                                  );
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(snakbar);
                                },
                                child: Text("Close BottonSheet"),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                    child: Container(
                      child: Text(
                        "ok",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
          child: Text("go"),
        ),
      ),
    );
  }
}
