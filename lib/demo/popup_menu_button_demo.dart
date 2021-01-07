import 'package:flutter/material.dart';

class PopupMenuButtonDemo extends StatefulWidget {
  @override
  _PopupMenuButtonDemoState createState() => _PopupMenuButtonDemoState();
}

class _PopupMenuButtonDemoState extends State<PopupMenuButtonDemo> {
  String _currectMenuItem = 'home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Popup menu btn Demo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(_currectMenuItem),
                PopupMenuButton(
                    onSelected: (value) {
                      print(value);
                      setState(() {
                        _currectMenuItem = value;
                      });
                    },
                    itemBuilder: (BuildContext context) => [
                          PopupMenuItem(
                            child: Text('home'),
                            value: 'home',
                          ),
                          PopupMenuItem(
                            child: Text('discover'),
                            value: 'discover',
                          ),
                          PopupMenuItem(
                            child: Text('2333'),
                            value: "2333",
                          ),
                        ])
              ],
            ),
          ],
        ),
      ),
    );
  }
}
