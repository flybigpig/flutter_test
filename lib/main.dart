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
      home: new MyHomePage(title: 'Flutrrter Demo Home Page'),
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
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              color: Colors.black,
              child: new Transform(
                alignment: Alignment.topRight, //相对于坐标系原点的对⻬⽅式
                transform: new Matrix4.skewY(0.3), //沿Y轴倾斜0.3弧度
                child: new Container(
                  padding: const EdgeInsets.all(8.0),
                  color: Colors.deepOrange,
                  child: const Text('Apartment for rent!'),
                ),
              ),
            ),
            Icon(Icons.ac_unit),
            Icon(Icons.airport_shuttle),
            Icon(Icons.all_inclusive),
            Icon(Icons.beach_access),
            Icon(Icons.cake),
            Icon(Icons.free_breakfast),
            Wrap(
                spacing: 8.0, // 主轴(⽔平)⽅向间距
                alignment: WrapAlignment.start,
                runSpacing: 4.0, // 纵轴（垂直）⽅向间距
                children: <Widget>[
                  new Chip(
                      label: new Text("123rwraasdasdaasdasdar123"),
                      avatar: new CircleAvatar(
                          backgroundColor: Colors.blue, child: Text('A'))),
                  new Chip(
                      label: new Text("123asdas123"),
                      avatar: new CircleAvatar(
                          backgroundColor: Colors.blue, child: Text('A'))),
                  new Chip(
                      label: new Text("12asdasdasd3123"),
                      avatar: new CircleAvatar(
                          backgroundColor: Colors.blue, child: Text('A'))),
                  new Chip(
                      label: new Text("123123"),
                      avatar: new CircleAvatar(
                          backgroundColor: Colors.blue, child: Text('A')))
                ]),
            new Text(
              'You have pushed the button this many times:',
            ),
            new Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
            new IconButton(
              icon: Icon(Icons.thumb_up),
              onPressed: _incrementCounter,
            ),
          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: new Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
