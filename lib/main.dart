import 'package:flutter/material.dart';
import 'package:flutter/src/rendering/sliver_persistent_header.dart';

import 'NextPageWidget.dart';

import 'login/login_page.dart';
import 'login/home_page.dart';

import 'MyInherited.dart';

//void main() => runApp(MyApp());

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
//  final routes = <String, WidgetBuilder>{
//    LoginPage.tag: (context) => LoginPage(),
//    HomePage.tag: (context) => HomePage(),
//  };

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      theme: new ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: new MyHomePages(),
//      routes: routes,
    );
  }
}

class MyHomePages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: "图片浏览器",
      theme: new ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: new PicturesPage(title: '图片浏览器'),
    );
  }
}

class PicturesPage extends StatefulWidget {
  PicturesPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _PicturesPageState();
  }
}

class _PicturesPageState extends State<PicturesPage> {
  final int rowCount = 3;
  final List<String> assetNames = [
    'assets/brady-bellini-212790-unsplash.jpg',
    'assets/stefan-stefancik-105587-unsplash.jpg',
    'assets/simon-fitall-530083-unsplash.jpg',
    'assets/anton-repponen-99530-unsplash.jpg',
    'assets/kevin-cochran-524957-unsplash.jpg',
    'assets/samsommer-72299-unsplash.jpg',
    'assets/simon-matzinger-320332-unsplash.jpg',
    'assets/meng-ji-102492-unsplash.jpg',
  ];

  Widget _scrollView(BuildContext context) {
    return Container(
      child: CustomScrollView(
        slivers: <Widget>[   
          SliverPersistentHeader(
              pinned: true,
              delegate: TopHeader(
                minExtent: 100,
                maxExtent: 200,
              )),
          SliverGrid(
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: MediaQuery.of(context).size.width / rowCount,
              mainAxisSpacing: 0,
              crossAxisSpacing: 0,
              childAspectRatio: 0.75,
            ),
            delegate:
                SliverChildBuilderDelegate((BuildContext context, int index) {
              return Container(
                alignment: Alignment.center,
                padding:
                    EdgeInsets.only(top: 2.0, left: 2, right: 2, bottom: 2),
                child: Image.asset(assetNames[index % assetNames.length]),
              );
            }, childCount: assetNames.length * 3),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: _scrollView(context),
    );
  }
}

class TopHeader implements SliverPersistentHeaderDelegate {
  TopHeader({
    this.minExtent,
    this.maxExtent,
  });

  double maxExtent;
  double minExtent;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    // TODO: implement build
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Image.asset(
          'assets/ronnie-mayo-361348-unsplash.jpg',
          fit: BoxFit.cover,
        ),
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.transparent,
                Colors.black54,
              ],
              stops: [0.5, 1.0],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              tileMode: TileMode.repeated,
            ),
          ),
        ),
        Positioned(
          left: 18,
          right: 18,
          bottom: 18,
          child: Text(
            "我的相册",
            style: TextStyle(fontSize: 28, color: Colors.white),
          ),
        ),
      ],
    );
  }

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    // TODO: implement shouldRebuild
    return true;
  }

  @override
  // TODO: implement snapConfiguration
  FloatingHeaderSnapConfiguration get snapConfiguration => null;
}
//class MyApp extends StatelessWidget {
//  // This widget is the root of your application.
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      title: 'Flutter Demo',
//      theme: ThemeData(
//        // This is the theme of your application.
//        //
//        // Try running your application with "flutter run". You'll see the
//        // application has a blue toolbar. Then, without quitting the app, try
//        // changing the primarySwatch below to Colors.green and then invoke
//        // "hot reload" (press "r" in the console where you ran "flutter run",
//        // or simply save your changes to "hot reload" in a Flutter IDE).
//        // Notice that the counter didn't reset back to zero; the application
//        // is not restarted.
//
//        primarySwatch: Colors.blue,
//      ),
//      home: MyHomePage(title: 'Flutter Demo Home Page'),
//    );
//  }
//}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    print("didChangeDependencies");
  }

  @override
  void reassemble() {
    // TODO: implement reassemble
    super.reassemble();
    print("reassemble");
  }

  @override
  void didUpdateWidget(MyHomePage oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    print("didUpdateWidget");
  }

  @override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();
    print("deactivate");
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print("dispose");
  }

  @override
  Widget build(BuildContext context) {
    print("build");
//    return new GestureDetector(
//      onTap: () {
//        print('MyButton was tapped!');
//      },
//      onLongPress: () {
//        print("MyButton long_press");
//      },
//      child: new Container(
//        margin: EdgeInsets.only(top: 60.0, left: 80.0),
//        constraints: BoxConstraints.tightFor(width: 300.0, height: 150.0),
//        decoration: BoxDecoration(
//          border: Border.all(width: 3, color: Colors.yellowAccent),
//          //实现阴影效果
//          boxShadow: [
//            BoxShadow(
//                color: Colors.cyan, offset: Offset(2.0, 2.0), blurRadius: 4.0)
//          ],
//          //实现颜色渐变背景色 支持线性、径向渐变
//          gradient: LinearGradient(
//              colors: [Colors.red, Colors.blue, Colors.yellowAccent]),
//        ),
//        transform: Matrix4.rotationX(.6),
//        alignment: Alignment.center,
//        child: Text("牧牧",
//            style: TextStyle(
//              color: Colors.indigo,
//              fontSize: 30.0,
//            )),
//      ),
//    );

//    return Scaffold(
//      appBar: AppBar(
//        title: Text("测试11"),
//      ),
//      body: ListView(
//        children: <Widget>[
//          Row(
//            children: <Widget>[
//              Container(
//                color: Colors.blue,
//                height: 130.0,
//                width: 130.0,
//                padding: EdgeInsets.all(5.0),
//                child: new FractionallySizedBox(
//                  alignment: Alignment.bottomLeft,
//                  widthFactor: 1.5,
//                  heightFactor: 0.5,
//                  child: new Container(
//                    color: Colors.yellow,
//                  ),
//                ),
//              ),
//              Padding(
//                padding: EdgeInsets.only(left: 80.0),
//                child: Text(
//                  "widthFactor: 1.5\nheightFactor: 0.5",
//                  style: new TextStyle(fontSize: 20.0),
//                ),
//              )
//            ],
//          ),
//          Padding(
//            padding: EdgeInsets.only(top: 5.0),
//          ),
//          Row(
//            children: <Widget>[
//              Container(
//                color: Colors.blue,
//                height: 130.0,
//                width: 130.0,
//                padding: EdgeInsets.all(5.0),
//                child: Text("ssssss",
//                style: new TextStyle(inherit: true,color: Colors.black,fontSize: 35.0
//                ,letterSpacing: 5),),
//              ),
//            ],
//          ),
//        ],
//      ),
//    );

//    return Scaffold(
//      appBar: AppBar(
//        title: Text("BaseLine"),
//      ),
//      body: new Row(
//        mainAxisAlignment: MainAxisAlignment.spaceBetween,
//        children: <Widget>[
//          new Baseline(
//            baseline: 100.0,
//            baselineType: TextBaseline.alphabetic,
//            child: new Text(
//              "自己写",
//              style: new TextStyle(
//                  fontSize: 15.0,
//                  color: Colors.blue,
//                  textBaseline: TextBaseline.alphabetic),
//            ),
//          ),
//          new Baseline(
//            baseline: 100.0,
//            baselineType: TextBaseline.alphabetic,
//            child: new Text(
//              "小一点",
//              style: new TextStyle(
//                  fontSize: 15.0,
//                  textBaseline: TextBaseline.alphabetic),
//            ),
//          ),
//          new Baseline(
//            baseline: 100.0,
//            baselineType: TextBaseline.alphabetic,
//            child: FlutterLogo(
//              size: 120,
//            ),
//          ),
//        ],
//      ),
//    );

//    return Scaffold(
//      appBar: AppBar(
//        title: Text("本地优惠"),
//        leading: IconButton(
//            icon: new Icon(Icons.face),
//            onPressed: () {
//              Navigator.push(context,
//                  MaterialPageRoute(builder: (context) => NextPageWidget()));
////              Navigator.pop(context);
//            }),
//        actions: <Widget>[
//          IconButton(
//              icon: Icon(Icons.playlist_play),
//              tooltip: 'tooltip1',
//              onPressed: () {
////                Navigator.push(context,
////                    MaterialPageRoute(builder: (context) => MyInherited()));
//              }),
//          IconButton(
//            icon: Icon(Icons.playlist_add),
//            tooltip: 'tooltip2',
//            onPressed: () {},
//          ),
//          IconButton(
//            icon: Icon(Icons.playlist_add_check),
//            tooltip: 'tooltop3',
//            onPressed: () {},
//          ),
//          IconButton(
//            icon: Icon(Icons.account_balance_wallet),
//          ),
//          IconButton(
//            icon: Icon(Icons.print),
//          ),
//          IconButton(
//            icon: Icon(Icons.access_alarms),
//          ),
//        ],
//      ),
//      body: Column(
//        children: <Widget>[
//          FlutterLogo(
//            size: 100.0,
//            colors: Colors.red,
//          )
//        ],
//      ),
//    );

//    return Scaffold(
//      appBar: AppBar(
//        title: Text("Row"),
//      ),
//      body: Column(
//        textDirection: TextDirection.rtl,
//        children: <Widget>[
//          Container(
//            width: 100,
//            height: 50,
//            color: Colors.red,
//            alignment: Alignment.center,
//            child: Text(
//              "A",
//              style: new TextStyle(color: Colors.cyan, fontSize: 15),
//            ),
//          ),
//          Spacer(
//            flex: 1,
//          ),
//          Container(
//            height: 100,
//            width: 100,
//            color: Colors.red,
//            alignment: Alignment.bottomRight,
//            child: Text(
//              "Badsds",
//              style: TextStyle(fontSize: 19, color: Colors.amber),
//            ),
//          ),
//          Spacer(
//            flex: 2,
//          ),
//          Container(
//            width: 50,
//            height: 50,
//            color: Colors.red,
//            alignment: Alignment.center,
//            child: Text(
//              "c",
//              style: TextStyle(color: Colors.cyan, fontSize: 10),
//            ),
//          ),
//          Spacer(
//            flex: 1,
//          )
//        ],
//      ),
//    );

//    return Scaffold(
//      appBar: AppBar(
//        title: Text("ListView"),
//      ),
//      body: ListView(
//        padding: const EdgeInsets.only(left: 10),
//        itemExtent: 230,
//        children: <Widget>[
//          Row(
//            mainAxisAlignment: MainAxisAlignment.spaceBetween,
//            children: <Widget>[
//              new Baseline(
//                baseline: 100.0,
//                baselineType: TextBaseline.alphabetic,
//                child: new Text(
//                  "自己写",
//                  style: new TextStyle(
//                      fontSize: 15.0,
//                      color: Colors.blue,
//                      textBaseline: TextBaseline.alphabetic),
//                ),
//              ),
//              new Baseline(
//                baseline: 100.0,
//                baselineType: TextBaseline.alphabetic,
//                child: new Text(
//                  "小一点",
//                  style: new TextStyle(
//                      fontSize: 15.0, textBaseline: TextBaseline.alphabetic),
//                ),
//              ),
//              new Baseline(
//                baseline: 100.0,
//                baselineType: TextBaseline.alphabetic,
//                child: FlutterLogo(
//                  size: 120,
//                ),
//              ),
//            ],
//          ),
//        ],
//      ),

//      body: ListView.separated(
//        itemCount: 20,
//        itemBuilder: (BuildContext context, int index) {
//          return ListTile(
//            title: Text("列表$index"),
//          );
//        },
//        separatorBuilder: (BuildContext context, int index) {
//          return Align(
//            alignment: Alignment.centerLeft,
//            child: FlutterLogo(),
//          );
//        },
//      ),
//    );

//    return Scaffold(
//      body: CustomScrollView(
//        slivers: <Widget>[
//          const SliverAppBar(
//            pinned: true,
//            expandedHeight: 50.0,
//            flexibleSpace: FlexibleSpaceBar(
//              title: Text("test"),
//              collapseMode: CollapseMode.pin,
//            ),
//          ),
//          SliverGrid(
//            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
//                maxCrossAxisExtent: 100,
//                mainAxisSpacing: 10,
//                crossAxisSpacing: 20,
//                childAspectRatio: 1),
//            delegate:
//                SliverChildBuilderDelegate((BuildContext context, int index) {
//              return Container(
//                alignment: Alignment.bottomRight,
//                color: Colors.yellow,
//                child: Text(
//                  "gird $index",
//                  style: TextStyle(color: Colors.black),
//                ),
//              );
//            }, childCount: 20),
//          ),
//          SliverFixedExtentList(
//              itemExtent: 50,
//              delegate: SliverChildBuilderDelegate(
//                (BuildContext context, int index) {
//                  return Container(
//                    alignment: Alignment.center,
//                    color: Colors.teal,
//                    child: Text("$index"),
//                  );
//                },
//                childCount: 30,
//              )),
//        ],
//      ),
//    );

//    return Scaffold(
//      appBar: AppBar(
//        title: Text("Flex"),
//      ),
//      body: Column(
//        children: <Widget>[
//          Container(
//            height: 200,
//            child: Flex(
//              direction: Axis.horizontal,
//              children: <Widget>[
//                Expanded(
//                  flex: 1,
//                  child: Container(
//                    color: Colors.red,
//                  ),
//                ),
//                Expanded(
//                  flex: 2,
//                  child: Container(
//                    color: Colors.yellow,
//                  ),
//                ),
//              ],
//            ),
//          ),
//
//          Container(
//            height: 200,
//            child: Flex(
//              direction: Axis.vertical,
//              children: <Widget>[
//                Expanded(
//                  flex: 1,
//                  child: Container(
//                    color: Colors.blue,
//                  ),
//                ),
//                Expanded(
//                  flex: 2,
//                  child: Container(
//                    color: Colors.red,
//                  ),
//                ),
//              ],
//            ),
//          ),
//
//          Container(
//            height: 20,
//            child: new Row(
//              mainAxisAlignment: MainAxisAlignment.spaceAround,
//              children: <Widget>[
//                Expanded(
//                  flex: 2,
//                  child: Container(
//                    color: Colors.blue,
//                  ),
//                ),
//              ],
//            ),
//          ),
//        ],
//      ),
//    );
  }
}
