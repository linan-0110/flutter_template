import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  Search({Key key}) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('搜索页面'),
      ),
      body: Container(
        // ignore: deprecated_member_use
        child: RaisedButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text("返回"),
        ),
      ),
    );
  }
}
