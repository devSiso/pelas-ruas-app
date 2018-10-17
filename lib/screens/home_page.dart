import 'package:flutter/material.dart';
import '../UI/app_bar.dart';
import '../UI/bottom_bar.dart';

class HomePage extends StatefulWidget {
  @override
  State createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return new Material(
      child: new Scaffold(
        body: MainCollapsingToolbar(),
        bottomNavigationBar: BottomBar(),
      ),
    );
  }
}
