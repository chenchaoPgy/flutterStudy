import 'package:flutter/material.dart';
import 'demo/listview_demo.dart';
import 'model/post.dart';
import 'demo/drawer_demo.dart';
import 'demo/bottom_navigation_bar_demo.dart';
import 'demo/basic_demo.dart';
import 'demo/layout_demo.dart';
import 'demo/view_demo.dart';
import 'demo/sliver_demo.dart';
import 'demo/navigator_demo.dart';
import 'demo/form_demo.dart';
import 'demo/material_components.dart';

void main() {
  runApp(app());
}

class app extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        debugShowCheckedModeBanner: false,
//        home: NavigatorDemo(),
        initialRoute: "/mlc",
        routes: {
          "/": (context) => Home(),
          '/about': (context) => Page(
                title: 'About',
              ),
          '/form': (context) => FormDemo(),
          '/mlc':(context)=>MaterialComponents(),
        },
        theme: ThemeData(
            primaryColor: Colors.yellow,
            highlightColor: Colors.grey,
            splashColor: Colors.white70,));
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

class Page extends StatelessWidget {
  final String title;

  Page({this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.arrow_back),
      ),
    );
  }
}
