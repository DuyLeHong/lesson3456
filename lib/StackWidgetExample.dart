import 'package:flutter/material.dart';

void main() {
  runApp(MyAppForLesson4());
}

class MyAppForLesson4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: Lesson4HomePage());
  }
}

class Lesson4HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: const Text('Stack Widget Example 1'),
        ),
        body: SafeArea(
          child: Center(
            child: Stack(
              alignment: Alignment.topRight,
              children: <Widget>[
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.red,
                ),
                Container(
                  width: 90,
                  height: 90,
                  color: Colors.green,
                ),
                Positioned(child: Container(
                  width: 80,
                  height: 80,
                  color: Colors.blue,
                ), bottom: 0, left: 0,),
              ],
            ),
          ),
        ));
  }
}
