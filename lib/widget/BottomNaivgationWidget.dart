import 'package:flutter/material.dart';
import 'package:flutter_app/page/airplay_screen.dart';
import 'package:flutter_app/page/email_screen.dart';
import 'package:flutter_app/page/home_screen.dart';
import 'package:flutter_app/page/pages_screen.dart';

class BottomNavigationWidget extends StatefulWidget {
  _BottomNavigationWidgetState createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  final _BottomNavigationColor = Colors.blue;

  int _currentIndex = 0;
  List<Widget> list = List();

  @override
  void initState() {
    // TODO: implement initState
    list
      ..add(HomeScreen())
      ..add(EmailScreen())
      ..add(PageScreen())
      ..add(AirplayScreen());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: list[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: _BottomNavigationColor,
              ),
              title: Text('Home',
                  style: TextStyle(color: _BottomNavigationColor))),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.email,
                color: _BottomNavigationColor,
              ),
              title: Text('Email',
                  style: TextStyle(color: _BottomNavigationColor))),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.pages,
                color: _BottomNavigationColor,
              ),
              title: Text('Pages',
                  style: TextStyle(color: _BottomNavigationColor))),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.airplay,
                color: _BottomNavigationColor,
              ),
              title: Text('AipPlay',
                  style: TextStyle(color: _BottomNavigationColor))),
        ],
        type: BottomNavigationBarType.shifting,
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
