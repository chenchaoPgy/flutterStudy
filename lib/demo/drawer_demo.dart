
import 'package:flutter/material.dart';
import 'package:my_flutter_app/model/post.dart';
class DrawerDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text(
              "陈超",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            accountEmail: Text("pgymmc@163.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(posts[0].imageUrl),
            ),
            decoration: BoxDecoration(
                color: Colors.yellow,
                image: DecorationImage(
                    image: NetworkImage(posts[1].imageUrl),
                    fit: BoxFit.fill,
                    colorFilter: ColorFilter.mode(
                        Colors.yellow.withOpacity(0.6),
                        BlendMode.difference))),
          ),
          ListTile(
            title: Text(
              "信息",
              textAlign: TextAlign.right,
            ),
            trailing: Icon(
              Icons.message,
              size: 22.0,
              color: Colors.black12,
            ),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: Text(
              "喜欢",
              textAlign: TextAlign.right,
            ),
            trailing: Icon(
              Icons.favorite,
              size: 22.0,
              color: Colors.black12,
            ),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: Text(
              "设置",
              textAlign: TextAlign.right,
            ),
            trailing: Icon(
              Icons.settings,
              size: 22.0,
              color: Colors.black12,
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }

}