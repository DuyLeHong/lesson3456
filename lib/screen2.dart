import 'package:flutter/material.dart';
import 'package:lesson3456/screen3.dart';

import 'Lesson5.dart';

class Screen2 extends StatelessWidget {

  var _initialData;

  Screen2(this._initialData);


  @override
  Widget build(BuildContext context) {

    var data;
    if (_initialData != '') {
      data = _initialData;
    } else {
      data = ModalRoute.of(context)?.settings.arguments;
    }

    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen 2'),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(data),
              ElevatedButton(onPressed: () async {
                var data = 'data from screen 2';

                var resultData = await Navigator.pushNamed(context, Routes.screen3, arguments: data);

                Navigator.pop(context, resultData);

                //Navigator.pop(context);

              }, child: Text('Go to Screen 3'))
            ],
          ),
        ),
      ),
    );
  }
}
