import 'package:flutter/material.dart';
import 'package:flutter_app/IndexPage/page/EachView.dart';
import 'package:flutter_app/IndexPage/page/FrostedGlassDemo.dart';
import 'package:flutter_app/IndexPage/page/SecondPage.dart';
import 'package:flutter_app/route/CustomRoute.dart';

class BottomAppBarDemo extends StatefulWidget {
  _BottomAppBarDemoState createState() => _BottomAppBarDemoState();
}

class _BottomAppBarDemoState extends State<BottomAppBarDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //跳转
//          Navigator.of(context)
//              .push(MaterialPageRoute(builder: (BuildContext context) {
//            return EachView('New2 Page');
//          }));

          Navigator.of(context).push(CustomRoute(FrostedGlassDemo()));
        },
        tooltip: 'Increment',
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.lightBlue,
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
                icon: Icon(Icons.home), color: Colors.white, onPressed: () {}),
            IconButton(
                icon: Icon(Icons.airport_shuttle),
                color: Colors.white,
                onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
