import 'package:flutter/material.dart';

void main() => runApp(MyApps());
class MyApps extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("测试11fdfdf"),
      ),
      body: ListView(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                color: Colors.blue,
                height: 130.0,
                width: 130.0,
                padding: EdgeInsets.all(5.0),
                child: new FractionallySizedBox(
                  alignment: Alignment.bottomLeft,
                  widthFactor: 1.5,
                  heightFactor: 0.5,
                  child: new Container(
                    color: Colors.yellow,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 80.0),
                child: Text(
                  "widthFactor: 1.5\nheightFactor: 0.5",
                  style: new TextStyle(fontSize: 20.0),
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 5.0),
          ),
          Row(
            children: <Widget>[
              Container(
                color: Colors.blue,
                height: 130.0,
                width: 130.0,
                padding: EdgeInsets.all(5.0),
                child: Text("ssssss",
                  style: new TextStyle(inherit: true,color: Colors.black,fontSize: 35.0
                      ,letterSpacing: 5),),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                color: Colors.blue,
                height: 130.0,
                width: 130.0,
                padding: EdgeInsets.all(5.0),
                child: Text("ssssss",
                  style: new TextStyle(inherit: true,color: Colors.black,fontSize: 35.0
                      ,letterSpacing: 5),),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                color: Colors.blue,
                height: 130.0,
                width: 130.0,
                padding: EdgeInsets.all(5.0),
                child: Text("ssssss",
                  style: new TextStyle(inherit: true,color: Colors.black,fontSize: 35.0
                      ,letterSpacing: 5),),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                color: Colors.blue,
                height: 130.0,
                width: 130.0,
                padding: EdgeInsets.all(5.0),
                child: Text("ssssss",
                  style: new TextStyle(inherit: true,color: Colors.black,fontSize: 35.0
                      ,letterSpacing: 5),),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                color: Colors.blue,
                height: 130.0,
                width: 130.0,
                padding: EdgeInsets.all(5.0),
                child: Text("ssssss",
                  style: new TextStyle(inherit: true,color: Colors.black,fontSize: 35.0
                      ,letterSpacing: 5),),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                color: Colors.blue,
                height: 130.0,
                width: 130.0,
                padding: EdgeInsets.all(5.0),
                child: Text("ssssss",
                  style: new TextStyle(inherit: true,color: Colors.black,fontSize: 35.0
                      ,letterSpacing: 5),),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                color: Colors.blue,
                height: 130.0,
                width: 130.0,
                padding: EdgeInsets.all(5.0),
                child: Text("ssssss",
                  style: new TextStyle(inherit: true,color: Colors.black,fontSize: 35.0
                      ,letterSpacing: 5),),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                color: Colors.blue,
                height: 130.0,
                width: 130.0,
                padding: EdgeInsets.all(5.0),
                child: Text("ssssss",
                  style: new TextStyle(inherit: true,color: Colors.black,fontSize: 35.0
                      ,letterSpacing: 5),),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                color: Colors.blue,
                height: 130.0,
                width: 130.0,
                padding: EdgeInsets.all(5.0),
                child: Text("ssssss",
                  style: new TextStyle(inherit: true,color: Colors.black,fontSize: 35.0
                      ,letterSpacing: 5),),
              ),
            ],
          ),
        ],
      ),
    );
  }

}