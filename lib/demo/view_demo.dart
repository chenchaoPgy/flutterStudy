import 'package:flutter/material.dart';
import 'listview_demo.dart';
import 'layout_demo.dart';
import 'package:my_flutter_app/model/post.dart';

class ViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridViewBuildDemo();
  }
}

class GridViewBuildDemo extends StatelessWidget {
  Widget _itemBuilder(BuildContext context, int index) {
    return Container(
       child: Image.network(
            posts[index].imageUrl,
            fit: BoxFit.cover,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: posts.length,
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 250, crossAxisSpacing: 15.0, mainAxisSpacing: 15.0),
        itemBuilder: _itemBuilder);
  }
}

class GridViewExtentDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Widget> _itemChild(int length) {
      return List.generate(length, (int index) {
        return Container(
          height: 250.0,
          color: Colors.indigoAccent[400],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Image.network(
                posts[index].imageUrl,
                width: 25.0,
                height: 25.0,
              ),
              Text("NO.$index $index"),
              Text(
                posts[index].title,
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
              )
            ],
          ),
        );
      });
    }

    return GridView.extent(
      mainAxisSpacing: 15.0,
      crossAxisSpacing: 15.0,
      maxCrossAxisExtent: 200.0,
      children: _itemChild(posts.length),
    );
  }
}

class GridViewCountDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Widget> _itemChild(int length) {
      return List.generate(length, (int index) {
        return Container(
          color: Colors.grey[300],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.network(
                posts[index].imageUrl,
                width: 15.0,
                height: 15.0,
              ),
              SizedBox(
                height: 5.0,
              ),
              Text("NO.$index"),
              Text(
                posts[index].title,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        );
      });
    }

    // TODO: implement build
    return GridView.count(
      crossAxisCount: 3,
      crossAxisSpacing: 15.0,
      mainAxisSpacing: 15.0,
      children: _itemChild(posts.length),
    );
  }
}

class PageViewBuildDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget _itemBuilder(BuildContext context, int index) {
      return Stack(
        children: <Widget>[
          SizedBox.expand(
            child: Image.network(
              posts[index].imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                posts[index].author,
                style: TextStyle(fontSize: 30.0),
              ),
              Text(posts[index].title),
            ],
          ))
        ],
      );
    }

    // TODO: implement build
    return PageView.builder(
      itemBuilder: _itemBuilder,
      itemCount: posts.length,
    );
  }
}

class PageViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PageView(
      onPageChanged: (currentPage) => debugPrint('page:$currentPage'),
      controller: PageController(initialPage: 1),
      children: <Widget>[
        Container(
          color: Colors.brown[900],
          alignment: Alignment(0.0, 0.0),
          child: Text(
            "ONE",
            style: TextStyle(color: Colors.white, fontSize: 34.0),
          ),
        ),
        Container(
          color: Colors.indigoAccent,
          alignment: Alignment(0.0, 0.0),
          child: listViewDemo(),
        ),
        Container(
          child: LayoutDemo(),
        )
      ],
    );
  }
}
