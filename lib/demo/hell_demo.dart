import 'package:flutter/material.dart';

class Hello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Center(
      child: Text(
        "hello",
        style: TextStyle(
            color: Colors.lightGreen,
            fontSize: 30.0,
            backgroundColor: Colors.pink,
            letterSpacing: 5.0),
        textDirection: TextDirection.rtl,
      ),
    );
  }
}
