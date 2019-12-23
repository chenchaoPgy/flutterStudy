import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static String tag = "首页";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final user = Hero(
      tag: "hero",
      child: Padding(
        padding: EdgeInsets.all(20),
        child: CircleAvatar(
          radius: 72,
          backgroundImage: AssetImage("assets/bg.jpeg"),
          backgroundColor: Colors.transparent,
        ),
      ),
    );

    final welcom = Padding(
      padding: EdgeInsets.all(9.0),
      child: Text(
        "欢饮",
        style: new TextStyle(color: Colors.white, fontSize: 20),
      ),
    );

    final info = Padding(
      padding: EdgeInsets.all(9.0),
      child: Text(
        "Flutter是谷歌的移动UI框架，可以快速在iOS和Android上构建高质量的原生用户界面。 Flutter可以与现有的代码一起工作。在全世界，Flutter正在被越来越多的开发者和组织使用，并且Flutter是完全免费、开源的。",
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
    );

    final body = Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(29),
      decoration: BoxDecoration(
          gradient:
              LinearGradient(colors: [Colors.green, Colors.lightGreenAccent])),
      child: Column(
        children: <Widget>[user, welcom, info],
      ),
    );

    return Scaffold(
      body: body,
    );
  }
}
