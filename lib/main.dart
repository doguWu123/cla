import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.black,
            body: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  height: 150.0,
                  width: 300.0,
                  color: Colors.transparent,
                  child: Container(
                      child: new Center(
                        child: new Text(
                          "Salut c'est français",
                          style: TextStyle(color: Colors.teal, fontSize: 22),
                          textAlign: TextAlign.right,
                        ),
                      )),
                ),
              ],
            ))));
  }
}
