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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
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
                    Positioned(
                      child: Container(
                        width: 80,
                        height: 80,
                        color: Colors.blue,
                      ),
                      bottom: 0,
                      left: 0,
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Container(
                  width: 250,
                  height: 250,
                  child: Stack(
                    children: <Widget>[
                      Container(
                        color: Colors.amber,
                      ),
                      Container(
                        padding: const EdgeInsets.all(5.0),
                        alignment: Alignment.bottomCenter,
                        // decoration: BoxDecoration(
                        //   gradient: LinearGradient(
                        //     begin: Alignment.topCenter,
                        //     end: Alignment.bottomCenter,
                        //     colors: <Color>[
                        //       Colors.black.withAlpha(0),
                        //       Colors.black12,
                        //       Colors.black45
                        //     ],
                        //   ),
                        // ),
                        child: const Text(
                          'Foreground Text',
                          style: TextStyle(color: Colors.black, fontSize: 20.0),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
