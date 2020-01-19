import 'package:flutter/material.dart';

class ButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Widget FlatButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FlatButton(
          onPressed: () {},
          child: Text('button'),
          splashColor: Colors.grey,
          textColor: Colors.red,
        ),
        FlatButton.icon(
            onPressed: () {}, icon: Icon(Icons.add), label: Text('Button')),
      ],
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('ButtonDemo'),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlatButton(
                  onPressed: () {},
                  child: Text('button'),
                  splashColor: Colors.grey,
                  textColor: Colors.red,
                ),
                FlatButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.add),
                    label: Text('Button')),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  onPressed: () {},
                  child: Text('RaisedButton'),
                  textColor: Colors.black54,
                  splashColor: Colors.grey,
                  shape: StadiumBorder(),
                  color: Colors.blue,
                ),
                SizedBox(
                  width: 15.0,
                ),
                RaisedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.save),
                    label: Text('RairsedButton'))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 40.0,
                  child: OutlineButton(
                    onPressed: null,
                    child: Text('test'),
                    splashColor: Colors.grey[100],
                    highlightedBorderColor: Colors.grey,
                    shape: StadiumBorder(),
                    disabledBorderColor: Colors.red,
                  ),
                ),
                OutlineButton(
                  onPressed: () {},
                  child: Text('OutlineButton'),
                  splashColor: Colors.grey[100],
                  highlightedBorderColor: Colors.grey,
                  shape: StadiumBorder(),
                  disabledBorderColor: Colors.red,
                ),
                SizedBox(
                  width: 15.0,
                ),
                OutlineButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.label),
                  label: Text('OutlineButton'),
                  splashColor: Colors.grey[100],
                  highlightedBorderColor: Colors.grey,
                  shape: StadiumBorder(),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    flex: 2,
                    child: OutlineButton(
                      onPressed: () {},
                      child: Text('Expand'),
                    ),
                  ),
                  Expanded(
                    child: Container(),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      height: 55.0,
                      child: RaisedButton(
                        onPressed: () {},
                        child: Text('Expand'),
                        color: Colors.yellow,
                        textColor: Colors.lightBlue,
                        splashColor: Colors.grey,
                        shape: StadiumBorder(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Theme(
                  data: Theme.of(context).copyWith(
                    buttonTheme: ButtonThemeData(
                      padding: EdgeInsets.symmetric(horizontal: 50.0),
                    ),
                  ),
                  child: ButtonBar(
                    children: <Widget>[
                      OutlineButton.icon(
                          onPressed: () {},
                          icon: Icon(Icons.description),
                          label: Text('ButtonBar')),
                      OutlineButton.icon(
                          onPressed: () {},
                          icon: Icon(Icons.description),
                          label: Text('ButtonBar')),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
