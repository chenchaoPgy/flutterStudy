import 'package:flutter/material.dart';
import 'package:my_flutter_app/main.dart';

class SwtichDemo extends StatefulWidget {
  @override
  _SwtichDemoState createState() => _SwtichDemoState();
}

class _SwtichDemoState extends State<SwtichDemo> {
  bool _switchItemA = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SwitchDemo"),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SwitchListTile(
              value: _switchItemA,
              onChanged: (value) {
                setState(() {
                  _switchItemA = value;
                });
              },
              title: Text('Switch list'),
              subtitle: Text('Describe'),
              secondary: Icon(_switchItemA ? Icons.print : Icons.description),
              selected: _switchItemA,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  _switchItemA ? '笑脸' : '哭',
                  style: TextStyle(fontSize: 32.0),
                ),
                Switch(
                    value: _switchItemA,
                    onChanged: (value) {
                      setState(() {
                        _switchItemA = value;
                      });
                    })
              ],
            ),
          ],
        ),
      ),
    );
  }
}
