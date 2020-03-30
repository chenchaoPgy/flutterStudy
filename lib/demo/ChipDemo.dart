import 'package:flutter/material.dart';
import 'package:my_flutter_app/model/post.dart';

class ChipDemo extends StatefulWidget {
  @override
  _ChipDemoState createState() => _ChipDemoState();
}

class _ChipDemoState extends State<ChipDemo> {
  List<String> _tags = [
    "Apple",
    "Bee",
    "Cat",
    "Dog",
    "Forg",
  ];

  String _action = "Nothing";

  List<String> _chooseList = [];

  String _choice = "Apple";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ChipDemo'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Wrap(
          spacing: 8.0,
          runSpacing: 2.0,
          children: <Widget>[
            Chip(label: Text("text")),
            Chip(
              label: Text("head"),
              avatar: CircleAvatar(
                backgroundImage: NetworkImage(posts[0].imageUrl),
                backgroundColor: Colors.amber,
                child: Text("pic"),
              ),
            ),
            Chip(
              label: Text("wrap"),
              avatar: CircleAvatar(
                child: Text("自"),
                backgroundColor: Colors.blue,
              ),
            ),
            Chip(
              label: Text("delete"),
              onDeleted: () {},
              deleteIconColor: Colors.amber,
              deleteIcon: Icon(Icons.delete),
              deleteButtonTooltipMessage: "Remove  This Tap",
            ),
            Divider(
              height: 10,
              color: Colors.red,
            ),
            Wrap(
              spacing: 8.0,
              children: _tags.map((tag) {
                return Chip(
                  label: Text(tag),
                  onDeleted: () {
                    setState(() {
                      _tags.remove(tag);
                    });
                  },
                );
              }).toList(),
            ),
            Text("ActionChip is $_action"),
            Wrap(
              spacing: 8.0,
              children: _tags.map((tag) {
                return ActionChip(
                    label: Text(tag),
                    onPressed: () {
                      setState(() {
                        _action = tag;
                      });
                    });
              }).toList(),
            ),
            Text('Fliter contains ${_chooseList.toString()}'),
            Wrap(
              spacing: 8.0,
              children: _tags.map((tag) {
                return FilterChip(
                  label: Text(tag),
                  selected: _chooseList.contains(tag),
                  onSelected: (value) {
                    setState(() {
                      if (_chooseList.contains(tag)) {
                        _chooseList.remove(tag);
                      } else {
                        _chooseList.add(tag);
                      }
                    });
                  },
                );
              }).toList(),
            ),
            Text('ChoiceChip is $_choice'),
            Wrap(
              spacing: 8.0,
              children: _tags.map((tag) {
                return ChoiceChip(
                  selectedColor: Colors.red,
                  label: Text(tag),
                  selected: _choice == tag,
                  onSelected: (value) {
                    setState(() {
                      _choice = tag;
                    });
                  },
                );
              }).toList(),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _tags = [
              "Apple",
              "Bee",
              "Cat",
              "Dog",
              "Forg",
            ];
            _chooseList = [];
            _choice = "Apple";
          });
        },
        child: Icon(Icons.refresh),
      ),
    );
  }
}
