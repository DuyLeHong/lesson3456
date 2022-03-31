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
            child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                ),
                itemCount: 300,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    color: Colors.amber,
                    child: Center(child: Text('$index')),
                  );
                }
            ),
          ),
        ));
  }
}
