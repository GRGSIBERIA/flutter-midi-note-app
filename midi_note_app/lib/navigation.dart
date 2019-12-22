import 'package:flutter/material.dart';

class Navigation extends StatefulWidget
{
  const Navigation();

  @override
  _Navigation createState() => _Navigation();
}

class _Navigation extends State
{
  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text('周波数'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.business),
          title: Text('ノート番号'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.info),
          title: Text('情報'),
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.amber[800],
      onTap: _onItemTapped,
    );
  }
}