import 'package:flutter/material.dart';

class Item {
  String reference;

  Item(this.reference);
}

class _MyInherited extends InheritedWidget {
  _MyInherited({
    Key key,
    @required Widget child,
    @required this.data,
  }) : super(key: key, child: child);

  final MyInheritedWidgetState data;

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    // TODO: implement updateShouldNotify
    return true;
  }
}

class MyInheritedWidget extends StatefulWidget {
  MyInheritedWidget({
    Key key,
    this.child,
  });

  final Widget child;

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new MyInheritedWidgetState();
  }

  static MyInheritedWidgetState of(
      [BuildContext context, bool rebuild = true]) {
    return (rebuild
        ? context.inheritFromWidgetOfExactType(_MyInherited) as _MyInherited
        : context.ancestorWidgetOfExactType(_MyInherited) as _MyInherited)
        .data;
  }
}

class MyInheritedWidgetState extends State<MyInheritedWidget> {
  List<Item> _items = <Item>[];

  int get itemsCount => _items.length;

  void addItem(String reference) {
    setState(() {
      _items.add(new Item(reference));
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new _MyInherited(child: widget.child, data: this);
  }
}

class MyTree extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _MyTreeState();
  }
}

class _MyTreeState extends State<MyTree> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MyInheritedWidget(
      child: new Scaffold(
        appBar: new AppBar(
          title: new Text("Title"),
        ),
        body: new Column(
          children: <Widget>[
            new WidgetA(),
            new Container(
                child: new Row(
                    children: <Widget>[
                new Icon(Icons.shopping_cart),
                new WidgetB(),
                new WidgetC(),
          ],
        ),
      )
      ],
    ),)
    ,
    );
  }
}

class WidgetA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final MyInheritedWidgetState state =
    MyInheritedWidget.of(context, false); // 防止WidgetA被rebuild
    return new Container(
      child: new RaisedButton(
        child: new Text("Add Item"),
        onPressed: () {
          state.addItem("new item");
        },
      ),
    );
  }
}

class WidgetB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final MyInheritedWidgetState state = MyInheritedWidget.of(context);
    return new Text("${state.itemsCount}");
  }
}

class WidgetC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Text('I am Widget C');
  }
}
