import 'package:flutter/material.dart';

class NextPageWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("第二页"),
      ),
      body: Center(
        child: Text("当前是第二页"),
      ),
    );
  }

}