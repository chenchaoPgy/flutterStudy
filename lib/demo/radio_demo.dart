import 'package:flutter/material.dart';

class RadioDemo extends StatefulWidget {
  @override
  _RadioDemoState createState() => _RadioDemoState();
}

class _RadioDemoState extends State<RadioDemo> {
  int _groupValue = 0;

  void _radioChangeState(value) {
    setState(() {
      _groupValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RatioDemo'),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('RatioGroupValue: $_groupValue' ),
            SizedBox(height: 20.0,),
            RadioListTile(
              value: 0,
              groupValue: _groupValue,
              onChanged: _radioChangeState,
              title: Text('title'),
              subtitle: Text('subtitle'),
              secondary: Icon(Icons.filter_1),
              selected: _groupValue == 0,
            ),
            RadioListTile(
              value: 1,
              groupValue: _groupValue,
              onChanged: _radioChangeState,
              title: Text('title'),
              subtitle: Text('subtitle'),
              secondary: Icon(Icons.filter_2),
              selected: _groupValue == 1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Radio(
                  value: 0,
                  groupValue: _groupValue,
                  onChanged: _radioChangeState,
                ),
                Radio(
                  value: 1,
                  groupValue: _groupValue,
                  onChanged: _radioChangeState,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
