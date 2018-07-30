import 'package:flutter/material.dart';

class GSYTabBarWidget extends StatefulWidget {
  static const int BOTTOM_TAB = 1;

  static const int TOP_TAB = 2;

  final int type;

  final List<Widget> tabItems;

  final List<Widget> tabViews;

  final Color backgroundColor;

  final Color indicatorColor;

  final Widget title;

  final Widget drawer;

  final Widget floatingActionButton;

  final TarWidgetControl tarWidgetControl;

  final PageController topPageControl;

  GSYTabBarWidget({
    Key key,
    this.type,
    this.tabItems,
    this.tabViews,
    this.backgroundColor,
    this.indicatorColor,
    this.title,
    this.drawer,
    this.floatingActionButton,
    this.tarWidgetControl,
    this.topPageControl,
  }) : super(key: key);

  @override
  _GSYTabBarState createState() =>
      new _GSYTabBarState(type, tabItems, tabViews, backgroundColor, indicatorColor, title, drawer, floatingActionButton, topPageControl);
}

// ignore: mixin_inherits_from_not_object
class _GSYTabBarState extends State<GSYTabBarWidget> with SingleTickerProviderStateMixin {
  final int _type;

  final List<Widget> _tabItems;

  final List<Widget> _tabViews;

  final Color _backgroundColor;

  final Color _indicatorColor;

  final Widget _title;

  final Widget _drawer;

  final Widget _floatingActionButton;

  final PageController _pageController;

  _GSYTabBarState(this._type, this._tabItems, this._tabViews, this._backgroundColor, this._indicatorColor, this._title, this._drawer,
      this._floatingActionButton, this._pageController)
      : super();

  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length: _tabItems.length);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (this._type == GSYTabBarWidget.TOP_TAB) {
      return new Scaffold(
        floatingActionButton: _floatingActionButton,
        appBar: new AppBar(
          backgroundColor: _backgroundColor,
          title: _title,
          bottom: new TabBar(
            isScrollable: true,
            controller: _tabController,
            tabs: _tabItems,
            indicatorColor: _indicatorColor,
          ),
        ),
        body: new PageView(
          controller: _pageController,
          children: _tabViews,
          onPageChanged: (index) {
            _tabController.animateTo(index);
          },
        ),
      );
    }

    return new Scaffold(
        drawer: _drawer,
        appBar: new AppBar(
          backgroundColor: _backgroundColor,
          title: _title,
        ),
        body: new PageView(
          controller: _pageController,
          children: _tabViews,
          onPageChanged: (index) {
            _tabController.animateTo(index);
          },
        ),
        bottomNavigationBar: new Material(
          color: _backgroundColor,
          child: new TabBar(
            controller: _tabController,
            tabs: _tabItems,
            indicatorColor: _indicatorColor,
          ),
        ));
  }
}

class TarWidgetControl {
  List<Widget> footerButton = [];
}
