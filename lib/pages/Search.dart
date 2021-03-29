import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Search extends StatefulWidget {
  int id = 0;
  Search({Key key}) : super(key: key);

  @override
  _SearchState createState() => _SearchState(this.id);
}

class _SearchState extends State<Search> {
  int id = 0;
  _SearchState(this.id);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('搜索页面$id'),
      ),
      body: Container(
        // ignore: deprecated_member_use
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text("返回按钮"),
        ),
      ),
    );
  }
}
