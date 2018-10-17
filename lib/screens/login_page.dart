import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  State createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  void _toHome() {
    Navigator.of(context)
        .pushNamedAndRemoveUntil('/home', (Route<dynamic> route) => false);
  }

  @override
  Widget build(BuildContext context) {
    return new Material(
      color: Colors.white,
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Center(
            child: new Image.asset("assets/pelasruas.png", scale: 0.8),
          ),
          new Padding(padding: new EdgeInsets.all(20.0)),
          new Center(
            child: new Container(
              child: new RaisedButton(
                onPressed: () => this._toHome(),
                child: new Text("Log In"),
              ),
            ),
          )
        ],
      ),
    );
  }
}
