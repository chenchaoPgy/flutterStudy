import 'package:flutter/material.dart';
import 'other_page.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  String mainProfilePicture =
      "https://desk-fd.zol-img.com.cn/t_s144x90c5/g5/M00/02/07/ChMkJlbKy5GIKHO3AAXx0E0tcL8AALIsgMfpwoABfHo739.jpg";
  String otherProfilePicture =
      "https://desk-fd.zol-img.com.cn/t_s144x90c5/g5/M00/01/0D/ChMkJ1uYaZ-IKDkFAAR_I31LhRMAAroYwNnOnQABH87217.jpg";

  void switchUser() {
    String backUpString = mainProfilePicture;
    this.setState(() {
      mainProfilePicture = otherProfilePicture;
      otherProfilePicture = backUpString;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        title: new Text("My Drawer"),
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text("测试名字"),
              accountEmail: new Text("1212121@qq.com"),
              currentAccountPicture: new GestureDetector(
                onTap: () {
                  print("点击事件");
                },
                child: new CircleAvatar(
                  backgroundImage: new NetworkImage(mainProfilePicture),
                ),
              ),
              otherAccountsPictures: <Widget>[
                new GestureDetector(
                  onTap: () {
                    switchUser();
                  },
                  child: new CircleAvatar(
                    backgroundImage: new NetworkImage(otherProfilePicture),
                  ),
                )
              ],
              decoration: new BoxDecoration(
                image: new DecorationImage(
                    fit: BoxFit.fill,
                    image: new NetworkImage(mainProfilePicture)),
              ),
            ),
            new ListTile(
              title: new Text("常用组件"),
              trailing: new Icon(Icons.arrow_right),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => new OtherPage("常用组件"),
                ));
              },
            ),
            new ListTile(
              title: new Text("项目实战ss"),
              trailing: new Icon(Icons.add),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (BuildContext context) =>
                            new OtherPage("项目实战ss")));
              },
            ),
            new Divider(),
            new ListTile(
              title: new Text("关闭"),
              trailing: new Icon(Icons.close),
              onTap: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
      body: new Center(
        child: new Text(
          "HomePage",
          style: new TextStyle(fontSize: 25),
        ),
      ),
    );
  }
}
