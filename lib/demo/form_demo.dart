import 'package:flutter/material.dart';

class FormDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Theme(
        data: Theme.of(context).copyWith(
          primaryColor: Colors.black54,
        ),
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RegisterForm(),
            ],
          ),
        ),
      ),
    );
  }
}

class RegisterForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return RegisterFormState();
  }
}

class RegisterFormState extends State<RegisterForm> {
  final submitRegisterKey = GlobalKey<FormState>();
  String username, password;
  bool autovalidate = false;

  String submitUsername(value) {
    username = value;
  }

  String submitPassword(value) {
    password = value;
  }

  String validatorUsername(username) {
    if (username.toString().isEmpty) {
      return 'Username is required';
    }
    return null;
  }

  String validatorPassword(password) {
    if (password.toString().isEmpty) {
      return 'Password is required';
    }
    return null;
  }

  void submit() {
    if (submitRegisterKey.currentState.validate()) {
      submitRegisterKey.currentState.save();
      debugPrint('username{$username}  password{$password}');
      Scaffold.of(context).showSnackBar(
        SnackBar(content: Text("Registering...")),
      );
    } else {
      setState(() {
        autovalidate = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Form(
      key: submitRegisterKey,
      child: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(labelText: 'Username', helperText: ''),
            onSaved: submitUsername,
            validator: validatorUsername,
            autovalidate: autovalidate,
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'Password', helperText: ''),
            onSaved: submitPassword,
            validator: validatorPassword,
            autovalidate: autovalidate,
          ),
          SizedBox(
            height: 32.0,
          ),
          Container(
            width: double.infinity,
            child: RaisedButton(
              onPressed: submit,
              child: Text('register', style: TextStyle(color: Colors.white)),
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}

class TextFieldDemo extends StatefulWidget {
  TextFieldDemoState createState() => TextFieldDemoState();
}

class TextFieldDemoState extends State<TextFieldDemo> {
  final textEditingController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    textEditingController.dispose();
  }

  @override
  void initState() {
    super.initState();
    textEditingController.text = 'hi';
    textEditingController.addListener(() {
      debugPrint('input: ${textEditingController.text}');
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textEditingController,
      textInputAction: TextInputAction.next,
      keyboardType: TextInputType.number,
//      onChanged: (v){
//        debugPrint('input $v');
//      },
      onSubmitted: (value) {
        debugPrint('submit $value');
      },
      decoration: InputDecoration(
        icon: Icon(Icons.subject),
        labelText: "Title",
        hintText: 'Enter the post title',
        filled: true,
      ),
    );
  }
}

class ThemeDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).highlightColor,
    );
  }
}
