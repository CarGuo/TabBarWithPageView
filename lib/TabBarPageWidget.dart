import 'package:flutter/material.dart';
import 'package:tarbar_with_pageview/GSYTabBarWidget.dart';
import 'package:tarbar_with_pageview/TabBarPageFirst.dart';
import 'package:tarbar_with_pageview/TabBarPageFour.dart';
import 'package:tarbar_with_pageview/TabBarPageSecond.dart';
import 'package:tarbar_with_pageview/TabBarPageThree.dart';

/**
 * Created by guoshuyu
 * on 2018/7/29.
 */

class TabBarPageWidget extends StatefulWidget {
  @override
  _TabBarPageWidgetState createState() => _TabBarPageWidgetState();
}

class _TabBarPageWidgetState extends State<TabBarPageWidget> {
  final PageController topPageControl = new PageController();

  @override
  Widget build(BuildContext context) {
    return new GSYTabBarWidget(
        type: GSYTabBarWidget.TOP_TAB,
        tabItems: [
          ///无奈之举，只能pageView配合tabbar，通过control同步
          ///TabView 配合tabbar 在四个页面上问题太多
          new FlatButton(
              padding: EdgeInsets.all(0.0),
              onPressed: () {
                topPageControl.jumpTo(0.0);
              },
              child: new Text(
                "1111",
                maxLines: 1,
              )),
          new FlatButton(
              padding: EdgeInsets.all(0.0),
              onPressed: () {
                topPageControl.jumpTo(MediaQuery.of(context).size.width);
              },
              child: new Text(
                "2222",
                maxLines: 1,
              )),
          new FlatButton(
              padding: EdgeInsets.all(0.0),
              onPressed: () {
                topPageControl.jumpTo(MediaQuery.of(context).size.width * 2);
              },
              child: new Text(
                "3333",
                maxLines: 1,
              )),
          new FlatButton(
            padding: EdgeInsets.all(0.0),
            onPressed: () {
              topPageControl.jumpTo(MediaQuery.of(context).size.width * 3);
            },
            child: new Text("444"),
          )
        ],
        tabViews: [
          new TabBarPageFirst(),
          new TabBarPageSecond(),
          new TabBarPageThree(),
          new TabBarPageFour(),
        ],
        topPageControl: topPageControl,
        backgroundColor: Colors.lightBlue,
        indicatorColor: Colors.white,
        title: new Text("Test"));
  }
}
