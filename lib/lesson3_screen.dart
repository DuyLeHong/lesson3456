import 'package:flutter/material.dart';

void main() {
  runApp(MyAppForLesson3());
}

class MyAppForLesson3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    var counter = 1;

    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: Lesson3HomePage());
  }
}

class Lesson3HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomePageState();
  }
}

class HomePageState extends State<Lesson3HomePage> {
  int counter = 1;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text('Title AppBar'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Lesson 3 - HomePage'),
          Text('Số lần click vào nút:'),
          Text(
            '$counter',
            style: Theme.of(context).textTheme.headline3,
          ),
        ],
      )),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.plus_one),
        onPressed: () {
          setState(() {
            counter++;
          });
        },
      ),
    );
  }
}
