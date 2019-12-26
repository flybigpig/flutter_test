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

/*

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

   */

/*
 new CustomScrollView(
        shrinkWrap: true,
        // 内容
        slivers: <Widget>[
          new SliverPadding(
            padding: const EdgeInsets.all(10.0),
            sliver: new SliverList(
              delegate: new SliverChildListDelegate(
                <Widget>[
                  new Card(),
                  Padding(
                    padding: EdgeInsets.only(top: 10, bottom: 10),
                    child: new Text("123"),
                  ),
                  new Divider(),
                  const Text('A'),
                  new Divider(),
                  const Text('B'),
                  new Divider(),
                  const Text('C'),
                  new Divider(),
                  const Text('D'),
                  new Divider(),
                ],
              ),
            ),
          ),
        ],
      ),
 */
}
