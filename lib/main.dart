import 'package:flutter/material.dart';
import 'package:flutter_app/widget/BottomAppBarDemo.dart';
import 'package:flutter_app/widget/BottomNaivgationWidget.dart';

void main() {
  runApp(new MaterialApp(
    title: 'My app', // used by the OS task switcher
    home: new MyScaffold(),
  ));
}

class MyScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Material 是UI呈现的“一张纸”
    return MaterialApp(
        title: 'Flutter bottomNavigationBar',
        theme: ThemeData.light(),
        home: BottomNavigationWidget());
  }
}
