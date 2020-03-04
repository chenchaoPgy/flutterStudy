import 'package:flutter/material.dart';
import 'dart:async';

class SimpleDialogDemo extends StatefulWidget {
  @override
  _SimpleDialogDemoState createState() => _SimpleDialogDemoState();
}

enum Option { A, B, C }

class _SimpleDialogDemoState extends State<SimpleDialogDemo> {
  String _choice = 'Nothing';

  Future _showSimpleDialog() async {
    final option = await showDialog(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          title: Text('SimpleDialogDemo'),
          children: <Widget>[
            SimpleDialogOption(
              child: Text('Option A'),
              onPressed: () {
                Navigator.pop(context, Option.A);
              },
            ),
            SimpleDialogOption(
              child: Text('Option B'),
              onPressed: () {
                Navigator.pop(context, Option.B);
              },
            ),
            SimpleDialogOption(
              child: Text('Option C'),
              onPressed: () {
                Navigator.pop(context, Option.C);
              },
            )
          ],
        );
      },
    );
    switch (option) {
      case Option.A:
        setState(() {
          _choice = "A";
        });
        break;
      case Option.B:
        setState(() {
          _choice = "B";
        });
        break;
      case Option.C:
        setState(() {
          _choice = "C";
        });
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SimpleDialogDemo"),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text('Your Choice is $_choice'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _showSimpleDialog,
        child: Icon(Icons.label),
      ),
    );
  }
}
