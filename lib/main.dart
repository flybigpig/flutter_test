import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.builder(
        itemCount: 50,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                child: Column(
                  // item
                  children: <Widget>[
                    Text(
                      "title" + "$index",
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),
              ),
              Container(
                ///四周10大小的maring
                margin: EdgeInsets.all(10.0),
                alignment: Alignment.center,
                height: 120.0,
                width: 500.0,

                ///透明黑色遮罩
                decoration: new BoxDecoration(

                    ///弧度为4.0
                    borderRadius: BorderRadius.all(Radius.circular(4.0)),

                    ///设置了decoration的color，就不能设置Container的color。
                    color: Colors.black12,

                    ///边框
                    border: new Border.all(color: Colors.blue, width: 0.3)),
                child: new Text(
                  "666666",
                  textAlign: TextAlign.center,
                ),
              ),
              Divider(),
            ],
          );
        },
      ),
    );
  }
}
