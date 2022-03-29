import 'package:flutter/material.dart';

void main() {
  runApp(MyAppForLesson5());
}

class MyAppForLesson5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: Lesson5HomePage());
  }
}

class Lesson5HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<String> entries = <String>[
      'A',
      'B',
      'C',
      'D',
      'E',
      'F',
      'G',
      'H',
      'I',
      'K',
      'L'
    ];
    final List<int> colorCodes = <int>[
      600,
      500,
      400,
      300,
      200,
      100,
      200,
      300,
      400,
      500,
      600
    ];

    //custom sliver appbar for scrollview
    bool _pinned = true;
    bool _snap = false;
    bool _floating = false;

    // TODO: implement build
    return Scaffold(
        // appBar: AppBar(
        //   title: const Text('Lesson 5 - Example'),
        // ),
        body: SafeArea(
      child: Center(
        child: Column(
          children: [
            Flexible(
              child: CustomScrollView(
                shrinkWrap: true,
                slivers: <Widget>[
                  SliverAppBar(
                    pinned: _pinned,
                    snap: _snap,
                    floating: _floating,
                    expandedHeight: 150.0,
                    flexibleSpace: const FlexibleSpaceBar(
                      centerTitle: true,
                      title: Text('SliverAppBar'),
                      background: FlutterLogo(),
                    ),
                  ),
                  const SliverToBoxAdapter(
                    child: SizedBox(
                      height: 20,
                      child: Center(
                        child:
                            Text('Scroll to see the SliverAppBar in effect.'),
                      ),
                    ),
                  ),
                  SliverPadding(
                    padding: const EdgeInsets.all(20.0),
                    sliver: SliverList(
                      delegate: SliverChildBuilderDelegate(
                        (BuildContext context, int index) {
                          return Container(
                            color: index.isOdd ? Colors.white : Colors.black12,
                            height: 100.0,
                            child: Center(
                              child: Text('$index', textScaleFactor: 5),
                            ),
                          );
                        },
                        childCount: 25,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              child: ListView.separated(
                shrinkWrap: true,
                padding: const EdgeInsets.all(8),
                itemCount: entries.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 50,
                    color: Colors.amber[colorCodes[index]],
                    child: Center(child: Text('Entry ${entries[index]}')),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return Divider();
                },
              ),
            )
          ],
        ),
      ),
    ));
  }
}
