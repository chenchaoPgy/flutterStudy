import 'package:flutter/material.dart';

class ExpansionPanelItem {
  final String headerText;
  final Widget body;
  bool mIsExpanded;

  ExpansionPanelItem({this.headerText, this.body, this.mIsExpanded});
}

class ExpansionPanelDemo extends StatefulWidget {
  @override
  _ExpansionPanelDemoState createState() => _ExpansionPanelDemoState();
}

class _ExpansionPanelDemoState extends State<ExpansionPanelDemo> {
  List<ExpansionPanelItem> _expansionPanelList;

  @override
  void initState() {
    super.initState();
    _expansionPanelList = <ExpansionPanelItem>[
      ExpansionPanelItem(
          headerText: 'panel A',
          body: Container(
            padding: EdgeInsets.all(16.0),
            width: double.infinity,
            child: Text('Content For A'),
          ),
          mIsExpanded: false),
      ExpansionPanelItem(
          headerText: 'panel B',
          body: Container(
            padding: EdgeInsets.all(16.0),
            width: double.infinity,
            child: Text('Content For B'),
          ),
          mIsExpanded: false),
      ExpansionPanelItem(
          headerText: 'panel C',
          body: Container(
            padding: EdgeInsets.all(16.0),
            width: double.infinity,
            child: Text('Content For C'),
          ),
          mIsExpanded: false),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ExpansionPanelDemo"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ExpansionPanelList(
              expansionCallback: (int expansion, bool isExpand) {
                setState(() {
                  _expansionPanelList[expansion].mIsExpanded = !isExpand;
                });
              },
              children: _expansionPanelList.map((ExpansionPanelItem item) {
                return ExpansionPanel(
                    headerBuilder: (BuildContext context, bool isExpand) {
                      return Container(
                        padding: EdgeInsets.all(16.0),
                        child: Text(item.headerText),
                      );
                    },
                    body: item.body,
                    isExpanded: item.mIsExpanded);
              }).toList()),
        ],
      ),
    );
  }
}
