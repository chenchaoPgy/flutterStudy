import 'package:flutter/material.dart';

class AnimationDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimationDemo'),
      ),
      body: AnimationHome(),
    );
  }
}

class AnimationHome extends StatefulWidget {
  @override
  _AnimationHomeState createState() => _AnimationHomeState();
}

class _AnimationHomeState extends State<AnimationHome>
    with TickerProviderStateMixin {
  AnimationController _animationController;
  Animation animation;
  Animation animationColor;
  CurvedAnimation _curvedAnimation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController = new AnimationController(
//      lowerBound: 32.0,
//      upperBound: 100.0,
      duration: Duration(milliseconds: 3000),
      vsync: this,
    );
//    _animationController.addListener(() {
//      print('${_animationController.value}');
//      setState(() {});
//    });

    _animationController.addStatusListener((AnimationStatus status) {
      print(status.toString());
    });

    _curvedAnimation = CurvedAnimation(
        parent: _animationController, curve: Curves.bounceInOut);

    animation = Tween(begin: 32.0, end: 100.0).animate(_curvedAnimation);
    animationColor = ColorTween(begin: Colors.red, end: Colors.blue)
        .animate(_curvedAnimation);

//    _animationController.forward();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: AnimationHeart(
      animations: [animation, animationColor],
      controller: _animationController,
    ));
  }
}

class AnimationHeart extends AnimatedWidget {
  final List animations;
  final AnimationController controller;

  AnimationHeart({this.animations, this.controller})
      : super(listenable: controller);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return IconButton(
      icon: Icon(Icons.favorite),
      iconSize: animations[0].value,
      color: animations[1].value,
      onPressed: () {
        switch (controller.status) {
          case AnimationStatus.completed:
            controller.reverse();
            break;
          default:
            controller.forward();
            break;
        }
      },
    );
  }
}
