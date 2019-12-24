import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: '',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyTestApp(title: "flutter"),
    );
  }
}

class MyTestApp extends StatefulWidget {
  var title;

  MyTestApp({Key key, this.title}) : super(key: key);

  @override
  _MyTestAppState createState() {
    // TODO: implement createState
    return new _MyTestAppState();
  }
}

class _MyTestAppState extends State<MyTestApp> {
  void onClick() {
    setData() {}
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("hahahhahahah"),
      ),
      body: new Column(
        children: <Widget>[
          new GridView(
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 120.0, childAspectRatio: 2.0 //宽⾼⽐为2
                ),
            children: <Widget>[
              new Icon(Icons.ac_unit),
              new Icon(Icons.add_to_queue),
              new Icon(Icons.ac_unit),
              new Icon(Icons.ac_unit),
              new Icon(Icons.ac_unit),
            ],
          ),
        ],
      ),
      bottomSheet: new GridView(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 120.0, childAspectRatio: 2.0 //宽⾼⽐为2
            ),
        children: <Widget>[],
      ),
    );
  }
}
