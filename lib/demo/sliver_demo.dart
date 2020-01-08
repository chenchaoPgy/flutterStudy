import 'package:flutter/material.dart';
import 'package:my_flutter_app/model/post.dart';

class SliverDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
//            title: Text("chenchao"),
            floating: true,
            expandedHeight: 180.0,
            flexibleSpace: FlexibleSpaceBar(title: Text("test".toUpperCase()),),
            backgroundColor: Colors.white,
          ),
          SliverSafeArea(
              sliver: SliverPadding(
            padding: EdgeInsets.all(8.0),
            sliver: SliverListDemo(),
          ))
        ],
      ),
    );
  }
}

class SliverListDemo extends StatelessWidget {
  Widget _itemBuilder(BuildContext context, int index) {
    return Padding(
      padding: EdgeInsets.only(bottom: 15.0),
      child: Material(
        borderRadius: BorderRadius.circular(30.0),
        elevation: 10.0,
        shadowColor: Colors.grey.withOpacity(0.5),
        child: Stack(
          children: <Widget>[
            AspectRatio(
              aspectRatio: 16 / 9,
              child: Image.network(
                posts[index].imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
                top: 23.0,
                left: 23.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(posts[index].author),
                    Text(posts[index].title)
                  ],
                ))
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate:
            SliverChildBuilderDelegate(_itemBuilder, childCount: posts.length));
  }
}

class SliverGridDemo extends StatelessWidget {
  Widget _itemBuilder(BuildContext context, int index) {
    return Container(
      child: Image.network(
        posts[index].imageUrl,
        fit: BoxFit.fill,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
        delegate:
            SliverChildBuilderDelegate(_itemBuilder, childCount: posts.length),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 150.0,
            mainAxisSpacing: 15.0,
            crossAxisSpacing: 15.0,
            childAspectRatio: 0.8));
  }
}
