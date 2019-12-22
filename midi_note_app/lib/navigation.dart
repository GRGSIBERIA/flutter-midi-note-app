import 'package:flutter/material.dart';

class Navigation extends StatefulWidget
{
  const Navigation();

  @override
  _Navigation createState() => _Navigation();
}

class _Navigation extends State
{
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text("周波数")
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text("ノート番号")
        )
      ]
    );
  }
}