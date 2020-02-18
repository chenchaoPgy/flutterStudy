import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class SliderDemo extends StatefulWidget {
  @override
  _SliderDemoState createState() => _SliderDemoState();
}

class _SliderDemoState extends State<SliderDemo> {
  double _sliderValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SliderDemo'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Slider(
            value: _sliderValue,
            onChanged: (value) {
              setState(() {
                _sliderValue = value;
              });
            },
            inactiveColor: Colors.lightBlue,
            activeColor: Colors.red,
            min: 0.0,
            max: 100.0,
            divisions: 10,
            label: '${_sliderValue.toInt()}',
          ),
          SizedBox(
            height: 30.0,
          ),
          Text('SliderValue$_sliderValue'),
        ],
      ),
    );
  }
}
