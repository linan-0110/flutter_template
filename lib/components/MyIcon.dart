import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyIcon extends StatelessWidget {
  IconData icon;
  double size;
  Color iconColor;
  Color backGroundClor;
  MyIcon(this.icon, {this.size, this.iconColor, this.backGroundClor});

  @override
  Widget build(BuildContext context) {
    // ignore: todo
    // TODO: implement build
    return Container(
      width: 50,
      height: 50,
      color: this.backGroundClor,
      child: Icon(this.icon, size: this.size, color: this.iconColor),
    );
  }
}
