import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  final icons = [
    new IconButton(
        icon: new Image.asset(
          "assets/home.png",
        ),
        onPressed: () {
          print("home");
        }),
    new IconButton(
        icon: new Image.asset(
          "assets/badge.png",
        ),
        onPressed: () {
          print("badge");
        }),
    new IconButton(
        icon: new Image.asset("assets/add.png"),
        onPressed: () {
          print("add");
        }),
    new IconButton(
        icon: new Image.asset("assets/notify.png"),
        onPressed: () {
          print("notify");
        }),
    new IconButton(
        icon: new Image.asset("assets/profile.png"),
        onPressed: () {
          print("profile");
        }),
  ];

  @override
  Widget build(BuildContext context) {
    return new Material(
      color: Colors.white,
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: icons,
      ),
    );
  }
}
