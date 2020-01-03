import 'package:flutter/material.dart';
import 'model/post.dart';

void main() {
  runApp(app());
}

class app extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        home: Home2(), theme: ThemeData(primarySwatch: Colors.yellow));
  }
}

class Home2 extends StatelessWidget {
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
            style: Theme.of(context).textTheme.title,
          ),
          Text(
            posts[index].author,
            style: Theme.of(context).textTheme.subhead,
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.cyan,
      appBar: AppBar(title: Text("HOME2")),
      body: ListView.builder(
        itemBuilder: _itemBuilder,
        itemCount: posts.length,
      ),
    );
  }
}

class Home extends StatelessWidget {
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
            style: Theme.of(context).textTheme.title,
          ),
          Text(
            posts[index].author,
            style: Theme.of(context).textTheme.subhead,
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
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text("wew"),
      ),
      body:
          ListView.builder(itemBuilder: _itemBuilder, itemCount: posts.length),
    );
  }
}

class Hello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Center(
      child: Text(
        "hello",
        style: TextStyle(
            color: Colors.lightGreen,
            fontSize: 30.0,
            backgroundColor: Colors.pink,
            letterSpacing: 5.0),
        textDirection: TextDirection.rtl,
      ),
    );
  }
}
