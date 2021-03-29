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
  var _arr = [
    {'name': '小青'},
    {'name': '小旺'},
    {'name': '小强'},
    {'name': '小强'},
    {'name': '小李'}
  ];

  Widget _aitemBuilder(context, index) {
    // return Padding(padding: padding)
    return Padding(
      // padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
      padding: EdgeInsets.all(5),
      child: Container(
        child: Column(
          children: [
            Text(_arr[index]['name']),
            MyIcon(
              Icons.home,
              backGroundClor: Color(0xFFF95400),
              iconColor: Colors.white,
            ),
            // SizedBox(height: 30),
            Text('习近平与三坊'),
          ],
        ),
        height: 80,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 0, 255, 255),
          border: Border.all(width: 1, color: Color(0xFFFF0000)),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: _arr.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        // crossAxisSpacing: 5,
        // mainAxisSpacing: 5,
      ),
      itemBuilder: _aitemBuilder,
    );
  }
}
