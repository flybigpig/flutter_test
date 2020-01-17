import 'package:flutter/material.dart';
import 'package:flutter_app/IndexPage/page/BaserView.dart';
import 'package:flutter_app/IndexPage/page/ExpansionTileDemo.dart';
import 'package:flutter_app/widget/BottomAppBarDemo.dart';
import 'package:flutter_app/widget/BottomNaivgationWidget.dart';

import 'IndexPage/page/DraggableDemo.dart';
import 'IndexPage/page/ExpansionPanelListDemo.dart';
import 'IndexPage/page/KeepAliveDemo.dart';
import 'IndexPage/page/RightBackDemo.dart';
import 'IndexPage/page/SearchBarDemo.dart';
import 'IndexPage/page/SplashScreen.dart';
import 'IndexPage/page/WarpDemo.dart';

void main() {
  runApp(new MaterialApp(
    title: 'My app', // used by the OS task switcher
    debugShowCheckedModeBanner: false,
    home: new MyScaffold(),
  ));
}

class MyScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Material 是UI呈现的“一张纸”
    return MaterialApp(
        title: 'Flutter bottomNavigationBar',
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light(),
        home: DraggableDemo());
  }
}
