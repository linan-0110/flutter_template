import 'package:flutter/material.dart';
import '../Home.dart';
import '../My.dart';
import '../Setting.dart';

class Tabs extends StatefulWidget {
  Tabs({Key key}) : super(key: key);

  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _currentIndex = 0;
  final List _tabsComponent = [Home(), Setting(), My()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter'),
      ),
      body: _tabsComponent[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: this._currentIndex,
        onTap: (value) {
          setState(() {
            this._currentIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_sharp),
            // ignore: deprecated_member_use
            title: Text('首页'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            // ignore: deprecated_member_use
            title: Text('设置'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mediation),
            // ignore: deprecated_member_use
            title: Text('我的'),
          ),
        ],
      ),
    );
  }
}
