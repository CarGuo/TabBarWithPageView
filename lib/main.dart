import 'package:flutter/material.dart';
import 'package:tarbar_with_pageview/TabBarBottomPageWidget.dart';
import 'package:tarbar_with_pageview/TabBarPageWidget.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'Flutter Demo',
        theme: new ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: new MainPage());
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Title"),
      ),
      body: new Column(
        children: <Widget>[
          new FlatButton(
              color: Colors.blue,
              onPressed: () {
                Navigator.push(context, new MaterialPageRoute(builder: (context) => new TabBarPageWidget()));
              },
              child: new Text("Top Tab")),
          new FlatButton(
              color: Colors.blue,
              onPressed: () {
                Navigator.push(context, new MaterialPageRoute(builder: (context) => new TabBarBottomPageWidget()));
              },
              child: new Text("Bottom Tab")),
        ],
      ),
    );
  }
}
