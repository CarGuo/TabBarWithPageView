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


  final List<String> tab = ["动态", "趋势", "我的"];

  _renderTab() {
    List<Widget> list = new List();
    for (int i = 0; i < tab.length; i++) {
      list.add(new FlatButton(onPressed: () {
        topPageControl.jumpTo(MediaQuery
            .of(context)
            .size
            .width * i);
      }, child: new Text(
        tab[i],
        maxLines: 1,
      )));
    }
    return list;
  }

  _renderPage() {
    return [
      new TabBarPageFirst(),
      new TabBarPageSecond(),
      new TabBarPageThree(),
    ];
  }


  @override
  Widget build(BuildContext context) {
    return new GSYTabBarWidget(
        type: GSYTabBarWidget.BOTTOM_TAB,
        ///渲染tab
        tabItems: _renderTab(),
        ///渲染页面
        tabViews: _renderPage(),
        topPageControl: topPageControl,
        backgroundColor: Colors.black45,
        indicatorColor: Colors.white,
        title: new Text("GSYGithubFlutter"));
  }
}
