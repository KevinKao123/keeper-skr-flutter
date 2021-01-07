import 'package:flutter/material.dart';
import 'dart:async';

enum OptionAAA { a, b, c }
enum ActionAAA { ok, cancel }

class SimpleDialogDemo extends StatefulWidget {
  @override
  _SimpleDialogDemoState createState() => _SimpleDialogDemoState();
}

class _SimpleDialogDemoState extends State<SimpleDialogDemo> {
  String _choice = 'Nothing';

  Future _openAlertDialog() async {
    final action = await showDialog(
      //强制选择，点击空白不会关闭对话框
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('AlertDialog'),
          content: Text('are you sure about this'),
          actions: [
            FlatButton(
                onPressed: () {
                  Navigator.pop(context, ActionAAA.cancel);
                },
                child: Text('cancel')),
            FlatButton(
                onPressed: () {
                  Navigator.pop(context, ActionAAA.ok);
                },
                child: Text('OK'))
          ],
        );
      },
    );
    switch (action) {
      case ActionAAA.ok:
        setState(() {
          _choice = "OK";
        });
        break;
      case ActionAAA.cancel:
        setState(() {
          _choice = "cancel";
        });
        break;
      default:
    }
  }

  Future _openSimpleDialog() async {
    final option = await showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: Text('simpleDialog'),
            children: [
              SimpleDialogOption(
                child: Text('optionA'),
                onPressed: () {
                  Navigator.pop(context, OptionAAA.a);
                },
              ),
              SimpleDialogOption(
                child: Text('optionB'),
                onPressed: () {
                  Navigator.pop(context, OptionAAA.b);
                },
              ),
              SimpleDialogOption(
                child: Text('optionC'),
                onPressed: () {
                  Navigator.pop(context, OptionAAA.c);
                },
              ),
            ],
          );
        });
    switch (option) {
      case OptionAAA.a:
        setState(() {
          _choice = "aaa";
        });
        break;
      case OptionAAA.b:
        setState(() {
          _choice = "bbb";
        });
        break;
      case OptionAAA.b:
        setState(() {
          _choice = "ccc";
        });
        break;
      default:
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('simpleDialog'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Your choice is:$_choice'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RaisedButton.icon(
                  onPressed: _openAlertDialog,
                  icon: Icon(Icons.ac_unit),
                  label: Text('button'),
                  splashColor: Colors.green,
                  textColor: Theme.of(context).accentColor,
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.format_list_numbered),
        onPressed: _openSimpleDialog,
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterFloat,
    );
  }
}
