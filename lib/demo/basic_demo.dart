import 'package:flutter/material.dart';
import 'package:my_flutter_app/model/post.dart';

class BasicDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(posts[0].imageUrl), fit: BoxFit.cover,repeat: ImageRepeat.repeat,colorFilter: ColorFilter.mode(Colors.yellow.withOpacity(0.5), BlendMode.hardLight))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Icon(
              Icons.whatshot,
              color: Colors.white,
            ),
            padding: EdgeInsets.all(10.0),
            width: 90.0,
            height: 90.0,
            margin: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
                color: Color.fromRGBO(3, 23, 145, 1.0),
                border: Border.all(
                    color: Colors.indigoAccent[100],
                    width: 3.0,
                    style: BorderStyle.solid),
//              borderRadius: BorderRadius.circular(16.0),
                boxShadow: [
                  //offset 偏移量   blurRadius 模糊程度   spreadRadius  正值扩大阴影面积  负值缩小阴影面积
                  BoxShadow(
                      color: Colors.black,
                      offset: Offset(2.0, 4.0),
                      blurRadius: 2.0,
                      spreadRadius: -1),
                ],
                shape: BoxShape.circle,
//              gradient: RadialGradient(colors: [
//                Color.fromRGBO(12, 100, 145, 1.0),
//                Color.fromRGBO(12, 10, 120, 1.0),
//              ])
                gradient: LinearGradient(colors: [
                  Color.fromRGBO(12, 100, 145, 1.0),
                  Color.fromRGBO(12, 10, 120, 1.0),
                ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          ),
          Container(
            child: Icon(
              Icons.whatshot,
              color: Colors.white,
            ),
            color: Color.fromRGBO(3, 23, 145, 1.0),
            padding: EdgeInsets.only(left: 15, top: 12, right: 20, bottom: 0),
            width: 90.0,
            height: 90.0,
            margin: EdgeInsets.all(10.0),
          )
        ],
      ),
    );
  }
}

class RichTextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RichText(
        text: TextSpan(
            text: "chenchao",
            style: TextStyle(
              fontSize: 17.0,
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontStyle: FontStyle.italic,
            ),
            children: [
          TextSpan(
              text: ".net",
              style: TextStyle(
                fontSize: 10.0,
                color: Colors.grey,
              )),
        ]));
  }
}

class TextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final TextStyle _textStyle = TextStyle(fontSize: 17.0);
    final String _author = "李白";
    final String _title = "将敬酒";
    return Text(
      "《$_title》——$_author\n\n君不见黄河之水天上来，奔流到海不复回。君不见高堂明镜悲白发，朝如青丝暮成雪。人生得意须尽欢，莫使金樽空对月。天生我材必有用，千金散尽还复来。烹羊宰牛且为乐，会须一饮三百杯。",
      style: _textStyle,
      textAlign: TextAlign.center,
      maxLines: 5,
      overflow: TextOverflow.ellipsis,
    );
  }
}
