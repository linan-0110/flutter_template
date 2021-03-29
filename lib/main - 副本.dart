import 'package:flutter/material.dart';
import 'components/MyIcon.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '8Flutter',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Scaffold title8'),
        ),
        body: MyHomePage(),
      ),
    );
  }
}

// ignore: must_be_immutable
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(),
        Text('11'),
        Image.network(''),
        Icon(Icons.ac_unit),
        Row(),
        Column(),
        Expanded(), // flex: 1
        GridView(),
        Padding(),
        Center(),
        Stack(),
        Align(),
        Positioned(),
        AspectRatio(), // 宽高比
        CircleAvatar(), // 圆形头像
        RaisedButton(onPressed: onPressed)
      ],
    );
  }
}
