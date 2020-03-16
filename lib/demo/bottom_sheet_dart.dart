import 'package:flutter/material.dart';
import 'dart:async';

class BottomSheetDemo extends StatefulWidget {
  @override
  _BottomSheetDemoState createState() => _BottomSheetDemoState();
}

class _BottomSheetDemoState extends State<BottomSheetDemo> {
  final _BottomSheetScaffoldKey = GlobalKey<ScaffoldState>();

  _openBottomSheet() {
    _BottomSheetScaffoldKey.currentState
        .showBottomSheet((BuildContext context) {
      return BottomAppBar(
        child: Container(
          height: 90.0,
          width: double.infinity,
          padding: EdgeInsets.all(16.0),
          child: Row(
            children: <Widget>[
              Icon(Icons.ac_unit),
              SizedBox(
                width: 16.0,
              ),
              Text("sdsdsd"),
              Expanded(
                child: Text(
                  "Fix you - Coldplay",
                  textAlign: TextAlign.right,
                ),
              ),
            ],
          ),
        ),
      );
    });
  }

  Future _openModleSheet() async {
    final option = await showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            height: 200.0,
            child: Column(
              children: <Widget>[
                ListTile(
                  title: Text("a"),
                  onTap: () {
                    Navigator.pop(context, "a");
                  },
                ),
                ListTile(
                  title: Text("b"),
                  onTap: () {
                    Navigator.pop(context, "b");
                  },
                ),
                ListTile(
                  title: Text("c"),
                  onTap: () {
                    Navigator.pop(context, "c");
                  },
                ),
              ],
            ),
          );
        });
    print(option);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _BottomSheetScaffoldKey,
      appBar: AppBar(
        title: Text('BottonSheetDart'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                onPressed: _openBottomSheet,
                child: Text("打开底部弹窗"),
              ),
              RaisedButton(
                onPressed: _openModleSheet,
                child: Text("打开底部常规对话框"),
              )
            ],
          )
        ],
      ),
    );
  }
}
