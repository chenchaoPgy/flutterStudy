import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class StreamDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StreamDemo'),
      ),
      body: StreamDemoHome(),
    );
  }
}

class StreamDemoHome extends StatefulWidget {
  @override
  _StreamDemoHomeState createState() => _StreamDemoHomeState();
}

class _StreamDemoHomeState extends State<StreamDemoHome> {
  StreamSubscription _streamSubscription;
  StreamController<String> _streamController;
  StreamSink _streamSink;
  String _data = '原始数据';

  @override
  void dispose() {
    _streamController.close();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    print('创建流');
//    Stream<String> _streamDemo = Stream.fromFuture(fetchdata());
//    _streamController = StreamController<String>();
    _streamController = StreamController.broadcast();
    _streamSink = _streamController.sink;

    print('开始监听流');
//    _streamSubscription =
//        _streamDemo.listen(onData, onDone: onDone, onError: onError);
    _streamSubscription = _streamController.stream
        .listen(onData, onDone: onDone, onError: onError);

    _streamSubscription = _streamController.stream
        .listen(onDataTwo, onDone: onDone, onError: onError);
    print('流监听完毕，等待返回');
  }

  void onData(String data) {
    setState(() {
      _data = data;
    });
    print('$data');
  }

  void onDataTwo(String data) {
    print('onDataTwo: $data');
  }

  void onError(error) {
    print('Error: $error');
  }

  void onDone() {
    print('Done');
  }

  Future<String> fetchdata() async {
    await Future.delayed(Duration(seconds: 5));
//    throw 'Something happened';
    return '返回数据';
  }

  void _addDataToStream() async {
    print('Add dara to stream');
    String data = await fetchdata();
//    _streamController.add(data);
    _streamSink.add(data);
  }

  void _pauseStream() {
    print('Pause');
    _streamSubscription.pause();
  }

  void _resumeStream() {
    print('Resume');
    _streamSubscription.resume();
  }

  void _cancelStream() {
    print('Cancel');
    _streamSubscription.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
//          Text(_data),
          StreamBuilder(
              stream: _streamController.stream,
              initialData: '初始数据',
              builder: (context, snapshot) {
                return Text('${snapshot.data}');
              }),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(onPressed: _addDataToStream, child: Text('Add')),
              FlatButton(onPressed: _pauseStream, child: Text('Pause')),
              FlatButton(onPressed: _resumeStream, child: Text('Resume')),
              FlatButton(onPressed: _cancelStream, child: Text('Cancel')),
            ],
          ),
        ],
      )),
    );
  }
}
