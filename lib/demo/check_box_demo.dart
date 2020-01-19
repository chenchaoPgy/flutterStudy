import 'package:flutter/material.dart';

class CheckBoxDemo extends StatefulWidget {
  @override
  _CheckBoxDemoState createState() => _CheckBoxDemoState();
}

class _CheckBoxDemoState extends State<CheckBoxDemo> {
  bool _isSelectedA = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CheckBoxDemo'),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Checkbox(
                  value: _isSelectedA,
                  onChanged: (value) {
                    setState(() {
                      _isSelectedA = value;
                    });
                  },
                  checkColor: Colors.lightBlue,
                  activeColor: Colors.black54,
                  focusColor: Colors.red,
                  hoverColor: Colors.orange,
                ),
              ],
            ),
            CheckboxListTile(
              value: _isSelectedA,
              onChanged: (value) {
                setState(() {
                  _isSelectedA = value;
                });
              },
              title: Text('title'),
              subtitle: Text('subTitle'),
              secondary: Icon(Icons.print),
              selected: _isSelectedA,
              isThreeLine: true,
              dense: true,//isThreeLine   dense  两个属性同时加上图片才居中
            ),
          ],
        ),
      ),
    );
  }
}
