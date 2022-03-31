import 'package:flutter/material.dart';

void main() {
  runApp(MyAppForLesson6());
}

class MyAppForLesson6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: Lesson6HomePage());
  }
}

class Lesson6HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: const Text('Lesson 6 - Example'),
        ),
        body: SafeArea(
          child: Center(
            child: GridView.count(
              primary: false,
              padding: const EdgeInsets.all(20),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 2,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(8),
                  child: const Text("He'd have you all unravel at the"),
                  color: Colors.teal[100],
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  child: const Text('Heed not the rabble'),
                  color: Colors.teal[200],
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  child: const Text('Sound of screams but the'),
                  color: Colors.teal[300],
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  child: const Text('Who scream'),
                  color: Colors.teal[400],
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  child: const Text('Revolution is coming...'),
                  color: Colors.teal[500],
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  child: const Text('Revolution, they...'),
                  color: Colors.teal[600],
                ),
              ],
            ),
          ),
        ));
  }
}
