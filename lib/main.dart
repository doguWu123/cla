import 'package:flutter/material.dart';
import 'package:jiggle/jiggle.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final JiggleController controller = JiggleController();

  void _jiggleStuff() {
    controller.toggle();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("cla -> Content Loading animation"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Jiggle(
              jiggleController: controller,
              // extent: 9,
              child: Container(
                height: 35.0,
                width: 550.0,
                color: Colors.transparent,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.teal,
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                ),
              ),
            ),
            Jiggle(
              jiggleController: controller,
              extent: 8,
              duration: Duration(milliseconds: 500),
              child: Container(
                height: 35.0,
                width: 550.0,
                color: Colors.transparent,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.teal,
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                ),
              ),
            ),
            Jiggle(
              jiggleController: controller,
              useGestures: true,
              extent: 3,
              child: Container(
                height: 300.0,
                width: 300.0,
                color: Colors.transparent,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.teal,
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                ),
              ),
            ),
            JiggleBuilder(
              controller: controller,
              builder: (context, state) {
                return Text(state.toString());
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _jiggleStuff,
        icon: Icon(Icons.vibration),
        label: Text("Jiggle"),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
