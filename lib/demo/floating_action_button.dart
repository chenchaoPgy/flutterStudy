import 'package:flutter/material.dart';

class FloatingActionButtonDemo extends StatelessWidget {
  Widget _floatingActionButton = new FloatingActionButton(
    child: Icon(Icons.add),
    backgroundColor: Colors.red,
    onPressed: () {

    },
//    shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
  );

  Widget _floatingActionButtonExtended = new FloatingActionButton.extended(
    onPressed: () {},
    icon: Icon(Icons.add),
    label: Text('add'),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FloatingActionButton'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: _floatingActionButton,
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 50.0,
        ),
        shape: CircularNotchedRectangle(),
      ),
    );
  }
}