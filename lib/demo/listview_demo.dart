import 'package:flutter/material.dart';
import '../model/post.dart';
class listViewDemo extends StatelessWidget {
  Widget _itemBuilder(BuildContext context, int index) {
    return Container(
      margin: EdgeInsets.all(10.0),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Image.network(posts[index].imageUrl),
          SizedBox(
            height: 10,
          ),
          Text(
            posts[index].title,
            style: Theme
                .of(context)
                .textTheme
                .title,
          ),
          Text(
            posts[index].author,
            style: Theme
                .of(context)
                .textTheme
                .subhead,
          ),
          SizedBox(
            height: 10.0,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(itemBuilder: _itemBuilder, itemCount: posts.length);
  }

}