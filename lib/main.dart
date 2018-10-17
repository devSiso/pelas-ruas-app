import 'package:flutter/material.dart';

import 'screens/login_page.dart';
import 'screens/home_page.dart';

void main() {
  runApp(new MaterialApp(
    title: "Pelas Ruas",
    home: LoginPage(),
    routes: {"/home": (context) => HomePage()},
  ));
}
