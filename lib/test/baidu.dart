import 'dart:convert';
import 'dart:io';
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
      home: new HttpTestRoute(),
    );
  }
}

class HttpTestRoute extends StatefulWidget {
  @override
  _HttpTestRouteState createState() => new _HttpTestRouteState();
}

class _HttpTestRouteState extends State<HttpTestRoute> {
  bool _loading = false;
  String _text = "";

  @override
  Widget build(BuildContext context) {
    return new ConstrainedBox(
      constraints: BoxConstraints.expand(),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            RaisedButton(
                child: Text("获取百度⾸⻚"),
                onPressed: _loading
                    ? null
                    : () async {
                  setState(() {
                    _loading = true;
                    _text = "正在请求中";
                  });
                  try {
                    HttpClient httpClient = new HttpClient();
                    HttpClientRequest request = await httpClient
                        .getUrl(Uri.parse("https://www.baidu.com"));
                    request.headers.add("user-agent",
                        "Mozilla/5.0 (iPhone; CPU iPhone OS 10_3_1 like Mac OS X) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.0 Mobile/14E304 Safari/602.1");

                    HttpClientResponse response = await request.close();
                    _text = await response.transform(utf8.decoder).join();
                    print(response.headers);
                    httpClient.close();
                  } catch (e) {
                    _text = "请求失败：$e";
                  } finally {
                    setState(() {
                      _loading = false;
                    });
                  }
                }),
            Image.network(
              "",
              fit: BoxFit.contain,
            ),
            Container(
                width: MediaQuery.of(context).size.width,
                child: Text(
                  _text.replaceAll(new RegExp(r"\s"), ""),
                  style: TextStyle(
                    fontSize: 18.0, // 文字大小
                    color: Colors.yellow, // 文字颜色
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
