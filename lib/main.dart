import 'package:flutter/material.dart';
import 'package:spacitron/GradientAppBar.dart';
import 'package:spacitron/HomePageBody.dart';

void main() {
  //Routes.initRoutes();
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Spacitron',
      home: new MyHomePage(title: 'Home'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: new Color(0xFF000000),
      body: new Column(
        children: <Widget>[
          new GradientAppBar("Spacitron"),
          new HomePageBody(),
        ],
      ),
    );
  }
}
