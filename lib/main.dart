import 'package:flutter/material.dart';
import 'demo/listview_demo.dart';
import 'model/post.dart';
import 'demo/drawer_demo.dart';
import 'demo/bottom_navigation_bar_demo.dart';
import 'demo/basic_demo.dart';
import 'demo/layout_demo.dart';
import 'demo/view_demo.dart';

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
        length: 4,
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
                    ),
                    Tab(
                      icon: Icon(Icons.local_airport),
                    )
                  ]),
            ),
            body: TabBarView(children: <Widget>[
              listViewDemo(),
              BasicDemo(),
              LayoutDemo(),
              ViewDemo(),
            ]),
            drawer: DrawerDemo(),
            bottomNavigationBar: BottomNavigationBarDemo()));
  }
}
