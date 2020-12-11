import 'package:flutter/material.dart';

class BottomNavBarDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _BottomNavBarDemoState();
  }
}

class _BottomNavBarDemoState extends State<BottomNavBarDemo> {
  int _currentIndex = 0;
  void _onTapHandler(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      onTap: _onTapHandler,
      type: BottomNavigationBarType.fixed,
      // fixedColor: Colors.black,
      items: [
        //大于四项类型会发生变化
        BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            // ignore: deprecated_member_use
            title: Text('explore')),

        BottomNavigationBarItem(
            icon: Icon(Icons.history),
            // ignore: deprecated_member_use
            title: Text('history')),
        // ignore: deprecated_member_use
        BottomNavigationBarItem(icon: Icon(Icons.list), title: Text('list')),
        // ignore: deprecated_member_use
        BottomNavigationBarItem(icon: Icon(Icons.person), title: Text('My')),
      ],
    );
  }
}
