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
      // ignore: deprecated_member_use
      child: RaisedButton(
        child: Text("搜索"),
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (BuildContext context) => Search()),
          );
        },
      ),
    );
  }
}
