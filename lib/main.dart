import 'package:flutter/material.dart';
import 'pages/tabs/Tabs.dart';

import './pages/Home.dart';
import './pages/My.dart';
import './pages/Setting.dart';
import './pages/Search.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '8Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Tabs(),
      routes: {
        './Home': (context) => Home(),
        './My': (context) => My(),
        './Setting': (context) => Setting(),
        './Search': (context) => Search(),
      },
    );
  }
}
