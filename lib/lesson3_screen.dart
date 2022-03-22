import 'package:flutter/material.dart';

void main() {
  runApp(MyAppForLesson3());
}

class MyAppForLesson3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    var counter = 1;

    return MaterialApp(home: Lesson3HomePage());
  }
}

class Lesson3HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text('Title AppBar'),
      ),
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Lesson 3 - HomePage'),
          Text('Lesson 3 - HomePage'),
          Text('Lesson 3 - HomePage'),
          Text('Lesson 3 - HomePage'),
          Text('Lesson 3 - HomePage'),
        ],
      )),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.plus_one),
        onPressed: () {},
      ),
    );
  }
}
