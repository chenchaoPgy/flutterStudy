import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Stack(
        children: <Widget>[
          IconBadge(
            Icons.pool,
            size: 60.0,
          ),
          IconBadge(Icons.whatshot),
          Positioned(child: Icon(Icons.settings,color: Colors.white,)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              SizedBox(
                width: 120.0,
                height: 80.0,
                child: Container(
                  alignment: Alignment(0.5, -0.5),
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(12, 213, 12, 1.0),
                      borderRadius: BorderRadius.circular(9.0),
                      border: Border.all(
                        color: Colors.yellow,
                        width: 10.0,
                        style: BorderStyle.solid
                      )),
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class IconBadge extends StatelessWidget {
  final IconData icon;
  final double size;

  IconBadge(
    this.icon, {
    this.size = 32.0,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Icon(
        icon,
        size: size,
        color: Colors.white,
      ),
      width: size + 30.0,
      height: size + 30.0,
      color: Colors.indigoAccent,
    );
  }
}
