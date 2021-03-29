import 'package:flutter/material.dart';
import 'pages/tabs/Tabs.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '8Flutter',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: Tabs(),
    );
  }
}
