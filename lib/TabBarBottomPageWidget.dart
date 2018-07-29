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

class TabBarBottomPageWidget extends StatefulWidget {
  @override
  _TabBarBottomPageWidgetState createState() => _TabBarBottomPageWidgetState();
}

class _TabBarBottomPageWidgetState extends State<TabBarBottomPageWidget> {
  final PageController topPageControl = new PageController();

  @override
  Widget build(BuildContext context) {
    return new GSYTabBarWidget(
        type: GSYTabBarWidget.BOTTOM_TAB,
        tabItems: [
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
        title: new Text("Test2"));
  }
}
