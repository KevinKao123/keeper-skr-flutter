import 'package:flutter/material.dart';
import 'bottom_demo.dart';
import 'popup_menu_button_demo.dart';
import './form_demo.dart';
import './checkbox_demo.dart';
import './datetime_demo.dart';
import './simple_dialog_demo.dart';
import './bottom_sheet_demo.dart';
import './expection_panel_demo.dart';

class MaterialComponents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MaterialComponents'),
        elevation: 0.0,
      ),
      body: ListView(
        children: <Widget>[
          ListItem(
            title: 'FloatingActionButton',
            page: FloatingActionButtonDemo(),
          ),
          ListItem(
            title: 'Button',
            page: ButtonDemo(),
          ),
          ListItem(
            title: 'popup menu btn',
            page: PopupMenuButtonDemo(),
          ),
          ListItem(
            title: 'form',
            page: FormDemo(),
          ),
          ListItem(
            title: 'checkbox',
            page: CheckboxDemo(),
          ),
          ListItem(
            title: 'datetime',
            page: DateTimeDemo(),
          ),
          ListItem(
            title: 'simpleDialog',
            page: SimpleDialogDemo(),
          ),
          ListItem(
            title: 'bottomSheet',
            page: BottomSheeetDemo(),
          ),
          ListItem(
            title: 'ExpectionPAnel',
            page: ExpansionPanelDemo(),
          ),
        ],
      ),
    );
  }
}

class _widgetDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('_widgetDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ],
        ),
      ),
    );
  }
}

class FloatingActionButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Widget _floatingActionButton = FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add_a_photo),
        elevation: 0.0,
        backgroundColor: Colors.black54,
        shape: BeveledRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ));

    //加描述文字

    // final Widget _floatingActionButtonExtended = FloatingActionButton.extended(
    //   onPressed: () {},
    //   label: Text('OnePlus'),
    //   icon: Icon(Icons.add),
    // );

    return Scaffold(
      appBar: AppBar(
        title: Text('FloatingActionButtonDemo'),
        elevation: 0.0,
      ),
      floatingActionButton: _floatingActionButton,
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 80,
        ),
        shape: CircularNotchedRectangle(),
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  final String title;
  final Widget page;

  ListItem({this.title, this.page});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(title),
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => page),
          );
        });
  }
}
