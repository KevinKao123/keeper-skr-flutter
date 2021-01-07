import 'package:flutter/material.dart';
import 'dart:async';

class BottomSheeetDemo extends StatefulWidget {
  @override
  _BottomSheeetDemoState createState() => _BottomSheeetDemoState();
}

class _BottomSheeetDemoState extends State<BottomSheeetDemo> {
  final _bottomSheetScaffoldKey = GlobalKey<ScaffoldState>();
  _openBottomSheet() {
    _bottomSheetScaffoldKey.currentState
        .showBottomSheet((BuildContext context) {
      return BottomAppBar(
        child: Container(
          height: 90.0,
          width: double.infinity,
          padding: EdgeInsets.all(16.0),
          child: Row(
            children: <Widget>[
              Icon(Icons.pause_circle_filled),
              SizedBox(width: 16),
              Text('01:30/03:30'),
              Expanded(
                child: Text(
                  'Fix you -coldplay',
                  textAlign: TextAlign.right,
                ),
              )
            ],
          ),
        ),
      );
    });
  }

  Future _openModalBottomSheet() async {
    final option = await showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            height: 200,
            child: Column(
              children: [
                ListTile(
                  title: Text('Option A'),
                  onTap: () {
                    Navigator.pop(context, 'A');
                  },
                ),
                ListTile(
                  title: Text('Option B'),
                  onTap: () {
                    Navigator.pop(context, 'B');
                  },
                ),
                ListTile(
                  title: Text('Option C'),
                  onTap: () {
                    Navigator.pop(context, 'C');
                  },
                ),
              ],
            ),
          );
        });
    print(option);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _bottomSheetScaffoldKey,
      appBar: AppBar(
        title: Text('_widgetDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SnackBarBotton(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FlatButton(
                  onPressed: _openBottomSheet,
                  child: Text('open bottomsheet'),
                ),
                FlatButton(
                  onPressed: _openModalBottomSheet,
                  child: Text('modal bottomsheet'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class SnackBarBotton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
        onPressed: () {
          Scaffold.of(context).showSnackBar(SnackBar(
            content: Text('Processing.....'),
            action: SnackBarAction(
              label: 'Ok',
              onPressed: () {},
            ),
          ));
        },
        child: Text('SnackBar'));
  }
}
