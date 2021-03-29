import 'package:flutter/material.dart';

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
    {'name': '小强'},
    {'name': '小强'},
    {'name': '小强'},
    {'name': '小强'},
    {'name': '小强'},
    {'name': '小强'},
    {'name': '小强'},
    {'name': '小强'},
    {'name': '小强'},
    {'name': '小强'},
    {'name': '小强'},
    {'name': '小强'},
    {'name': '小强'},
    {'name': '小强'},
    {'name': '小李'}
  ];

  Widget _aitemBuilder(context, index) {
    return Container(
      child: Column(
        children: [
          Text(_arr[index]['name']),
          SizedBox(
            height: 30,
          ),
          Text('习近平与三坊'),
        ],
      ),
      color: Color.fromARGB(255, 0, 255, 255),
      height: 80,
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: _arr.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemBuilder: _aitemBuilder,
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);

//   final String title;

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headline4,
//             ),
//             Text('第一行代码',
//                 style: TextStyle(color: Color.fromRGBO(255, 0, 0, 0.8))),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
