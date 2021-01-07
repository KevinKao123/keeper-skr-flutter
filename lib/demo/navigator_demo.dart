import 'package:flutter/material.dart';

class NavigatorDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          FlatButton(
              onPressed: () {
                Navigator.pushNamed(context, '/n');
              },
              child: Text('Home')),
          FlatButton(
            onPressed: () {
              // Navigator.of(context).push(
              //   MaterialPageRoute(
              //     builder: (BuildContext context) => Page(
              //       title: 'Abouttttt',
              //     ),
              //   ),
              // );
              Navigator.pushNamed(context, '/about');
            },
            child: Text('About'),
          ),
          FlatButton(
            onPressed: () {
              // Navigator.of(context).push(
              //   MaterialPageRoute(
              //     builder: (BuildContext context) => Page(
              //       title: 'Abouttttt',
              //     ),
              //   ),
              // );
              Navigator.pushNamed(context, '/form');
            },
            child: Text('Form'),
          ),
          FlatButton(
            onPressed: () {
              // Navigator.of(context).push(
              //   MaterialPageRoute(
              //     builder: (BuildContext context) => Page(
              //       title: 'Abouttttt',
              //     ),
              //   ),
              // );
              Navigator.pushNamed(context, '/mdc');
            },
            child: Text('mdc'),
          ),
        ],
      ),
    ));
  }
}

class Pagess extends StatelessWidget {
  final String title;

  Pagess({this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [],
        title: Text(title),
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back_ios),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
