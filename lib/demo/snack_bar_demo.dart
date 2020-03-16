import 'package:flutter/material.dart';

class SnackBarDemo extends StatefulWidget {
  @override
  _SnackBarDemoState createState() => _SnackBarDemoState();
}

class _SnackBarDemoState extends State<SnackBarDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SanckBarDemo"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlutterButton(),
            ],
          )
        ],
      ),
    );
  }
}

class FlutterButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Text("Show SnackBar"),
      onPressed: () {
        Scaffold.of(context).showSnackBar(new SnackBar(
          content: Text("Processing..."),
          action: SnackBarAction(label: "OK", onPressed: () {}),
        ));
      },
    );
  }
}
