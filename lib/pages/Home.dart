import 'package:flutter/material.dart';
import './Search.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          // ignore: deprecated_member_use
          RaisedButton(
            child: Text("搜索"),
            onPressed: () {
              var id;
              Navigator.pushNamed(context, './Home', arguments: {id: 10});
            },
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.greenAccent,
              height: 400,
              child: DefaultTabController(
                length: 2,
                child: Scaffold(
                  backgroundColor: Colors.deepOrange,
                  appBar: AppBar(
                    backgroundColor: Colors.red,
                    title: TabBar(
                      tabs: [Tab(text: "热门"), Tab(text: "新闻")],
                    ),
                  ),
                  body: TabBarView(children: [Text("热门内容"), Text("新闻内容")]),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
