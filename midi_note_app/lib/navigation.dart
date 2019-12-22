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
  List<BottomNavigationBarItem> _bottomNavigationBarItems = [];

  static const _navigationIcons = [
    Icons.home,
    Icons.home,
    Icons.home,
    Icons.info
  ];

  static const _navigationItemNames = [
    "周波数",
    "ノート番号",
    "その他",
    "情報"
  ];

  @override
  void initState()
  {
    super.initState();
    _bottomNavigationBarItems.add(_updateActiveState(0));
    for (var i = 1; i < _navigationItemNames.length; i++)
    {
      _bottomNavigationBarItems.add(_updateDeactiveState(i));
    }
  }

  BottomNavigationBarItem _updateActiveState(int index) 
  {
    return BottomNavigationBarItem(
      icon: Icon(
        _navigationIcons[index],
        color: Colors.black87
      ),
      title: Text(
        _navigationItemNames[index],
        style: TextStyle(
          color: Colors.black87
        )
      )
    );
  }

  BottomNavigationBarItem _updateDeactiveState(int index)
  {
    return BottomNavigationBarItem(
      icon: Icon(
        _navigationIcons[index],
        color: Colors.black26
      ),
      title: Text(
        _navigationItemNames[index],
        style: TextStyle(
          color: Colors.black26
        )
      )
    );
  }

  void _onItemTapped(int index)
  {
    setState(() {
      _bottomNavigationBarItems[_selectedIndex] = _updateDeactiveState(_selectedIndex);
      _bottomNavigationBarItems[index] = _updateActiveState(index);
      _selectedIndex = index;
    });
  }

  List<BottomNavigationBarItem> _itemsResult()
  {
    return _bottomNavigationBarItems;
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: _itemsResult(),
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
    );
  }
}