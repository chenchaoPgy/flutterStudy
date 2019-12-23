import 'package:flutter/material.dart';

import 'home_page.dart';

class LoginPage extends StatefulWidget {
  static String tag = "login-page";

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _LoginPageState();
  }
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final logo = Hero(
      tag: "hero",
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 48,
        child: Image.asset("assets/logo.png"),
      ),
    );

    final email = TextFormField(
      keyboardType: TextInputType.number,
      autofocus: false,
      initialValue: "1212212321@qq.com",
      decoration: InputDecoration(
        hintText: "Email",
        contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32),
        ),
      ),
    );

    final password = TextFormField(
      autofocus: false,
      initialValue: "请输入密码",
      obscureText: true,
      decoration: InputDecoration(
          hintText: "PassWord",
          contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32),
          )),
    );

    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16),
      child: Material(
        borderRadius: BorderRadius.circular(30),
        shadowColor: Colors.lightBlueAccent.shade100,
        elevation: 5.0,
        child: MaterialButton(
          minWidth: 200,
          height: 42,
          onPressed: () {
            Navigator.of(context).pushNamed(HomePage.tag);
          },
          color: Colors.green,
          child: Text(
            "登录",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      ),
    );

    final forgoeLabal = FlatButton(
      child: Text(
        "忘记密码",
        style: TextStyle(color: Colors.black45, fontSize: 18),
      ),
      onPressed: () {},
    );
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24, right: 24),
          children: <Widget>[
            logo,
            SizedBox(
              height: 48,
            ),
            email,
            SizedBox(
              height: 8,
            ),
            password,
            SizedBox(
              height: 24,
            ),
            loginButton,
            forgoeLabal
          ],
        ),
      ),
    );
  }
}
