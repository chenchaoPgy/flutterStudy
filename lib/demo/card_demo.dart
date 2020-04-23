import 'package:flutter/material.dart';
import '../model/post.dart';


class CardDemo extends StatefulWidget {
  @override
  _CardDemoState createState() => _CardDemoState();
}

class _CardDemoState extends State<CardDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CareDemo'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: ListView(
          children: posts.map((postBean) {
            return Card(
                child: Column(
              children: <Widget>[
                AspectRatio(
                    aspectRatio: 16 / 9,
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(4.0),
                        topRight: Radius.circular(4.0),
                      ),
                      child: Image.network(
                        postBean.imageUrl,
                        fit: BoxFit.cover,
                      ),
                    )),
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(postBean.imageUrl),
                  ),
                  title: Text(postBean.title),
                  subtitle: Text(postBean.author),
                ),
                Container(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    postBean.description,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                ButtonBar(
                  children: <Widget>[
                    FlatButton(
                        onPressed: () {}, child: Text('like'.toUpperCase())),
                    FlatButton(
                        onPressed: () {}, child: Text('read'.toUpperCase()))
                  ],
                )
              ],
            ));
          }).toList(),
        ),
      ),
    );
  }
}
