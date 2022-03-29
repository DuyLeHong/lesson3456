import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {

  var _dataFromScreen1;

  Screen2(this._dataFromScreen1);


  @override
  Widget build(BuildContext context) {
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
              Text(_dataFromScreen1),
              ElevatedButton(onPressed: () {
                var resultData = 'data from screen 2';
                Navigator.pop(context, resultData);
              }, child: Text('Back to Screen 1'))
            ],
          ),
        ),
      ),
    );
  }
}
