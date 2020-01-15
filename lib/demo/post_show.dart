import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_flutter_app/model/post.dart';

class PostShow extends StatelessWidget {
  final Post post;

  PostShow({this.post});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("${post.title}")),
      body: Column(
        children: <Widget>[
          Expanded (
            child: Image.network(
              post.imageUrl,
            ),
          ),
          Container(
            padding: EdgeInsets.all(32.0),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "${post.title}",
                  style: Theme.of(context).textTheme.title,
                ),
                Text(
                  "${post.author}",
                  style: Theme.of(context).textTheme.subtitle,
                ),
                SizedBox(
                  height: 12.0,
                ),
                Text("${post.description}")
              ],
            ),
          ),
        ],
      ),
    );
  }
}
