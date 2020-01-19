import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_flutter_app/model/post.dart';
import 'button_demo.dart';
import 'floating_action_button.dart';
import 'popup_menu_button_demo.dart';

class MaterialComponents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MaterialComponents'),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            ListItem(
              title: 'PopupMenuButtonDemo',
              page: PopupMenuButtonDemo(),
            ),
            ListItem(
              title: 'ButtonDemo',
              page: ButtonDemo(),
            ),
            ListItem(
              title: 'FloatingActionButton',
              page: FloatingActionButtonDemo(),
            )
          ],
        ),
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  String title;
  Widget page;

  ListItem({this.title, this.page});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => page),
        );
      },
    );
  }
}

class ListViewDemo extends StatelessWidget {
  Widget _widget(BuildContext context, int index) {
    return Container(
      child: Row(
        children: <Widget>[
          Image.network(
            posts[index].imageUrl,
            width: 20,
            height: 20,
          ),
          SizedBox(
            height: 15.0,
          ),
          ListTile(
            title: Text(posts[index].author),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => FloatingActionButtonDemo()));
            },
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: _widget, itemCount: posts.length);
  }
}
