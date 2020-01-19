import 'package:flutter/material.dart';

class PopupMenuButtonDemo extends StatefulWidget {
  @override
  _PopupMenuButtonDemoState createState() => _PopupMenuButtonDemoState();
}

class _PopupMenuButtonDemoState extends State<PopupMenuButtonDemo> {
  String _currentMenu = 'Home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PopupMenuButtonDemo'),
      ),
      body: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(_currentMenu),
            PopupMenuButton(
              onSelected: (value) {
                print(value);
                setState(() {
                  _currentMenu = value;
                });
              },
              itemBuilder: (BuildContext context) => [
                PopupMenuItem(
                  child: Text('Home'),
                  value: 'Home',
                ),
                PopupMenuItem(
                  child: Text('Descripe'),
                  value: 'Descripe',
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
