import 'package:flutter/material.dart';
import 'demo/listview_demo.dart';
import 'model/post.dart';
import 'demo/drawer_demo.dart';
import 'demo/bottom_navigation_bar_demo.dart';

void main() {
  runApp(app());
}

class app extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Home(),
        theme: ThemeData(
            highlightColor: Color.fromRGBO(255, 125, 125, 0.5),
            splashColor: Colors.white70,
            primarySwatch: Colors.yellow));
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
        length: 3,
        child: Scaffold(
            backgroundColor: Colors.grey[100],
            appBar: AppBar(
              title: Text("wew"),
              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () => debugPrint("点击了搜索"),
                )
              ],
              elevation: 0,
              bottom: TabBar(
                  unselectedLabelColor: Colors.grey,
                  indicatorColor: Colors.black,
                  indicatorSize: TabBarIndicatorSize.label,
                  indicatorWeight: 1,
                  tabs: <Widget>[
                    Tab(
                      icon: Icon(Icons.local_activity),
                    ),
                    Tab(
                      icon: Icon(Icons.laptop_chromebook),
                    ),
                    Tab(
                      icon: Icon(Icons.label_important),
                    )
                  ]),
            ),
            body: TabBarView(children: <Widget>[
              listViewDemo(),
              Icon(
                Icons.laptop_chromebook,
                size: 128.0,
                color: Colors.cyan,
              ),
              Icon(
                Icons.label_important,
                size: 128.0,
                color: Colors.cyan,
              )
            ]),
            drawer: DrawerDemo(),
            bottomNavigationBar: BottomNavigationBarDemo()));
  }
}
