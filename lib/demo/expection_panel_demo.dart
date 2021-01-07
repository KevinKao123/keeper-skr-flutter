import 'package:flutter/material.dart';
// import 'dart:async';

class ExpansionPanelItem {
  final String headerText;
  final Widget body;
  bool isExpanded;

  ExpansionPanelItem({
    this.headerText,
    this.body,
    this.isExpanded,
  });
}

class ExpansionPanelDemo extends StatefulWidget {
  @override
  _ExpansionPanelDemoState createState() => _ExpansionPanelDemoState();
}

class _ExpansionPanelDemoState extends State<ExpansionPanelDemo> {
  // bool _isExpanded = false;
  List<ExpansionPanelItem> _expansionPanelItems;

  @override
  void initState() {
    super.initState();

    _expansionPanelItems = <ExpansionPanelItem>[
      ExpansionPanelItem(
        headerText: 'panelA',
        body: Container(
          padding: EdgeInsets.all(16),
          width: double.infinity,
          child: Text('content of panel A'),
        ),
        isExpanded: false,
      ),
      ExpansionPanelItem(
        headerText: 'panelB',
        body: Container(
          padding: EdgeInsets.all(16),
          width: double.infinity,
          child: Text('content of panel B'),
        ),
        isExpanded: false,
      ),
      ExpansionPanelItem(
        headerText: 'panelC',
        body: Container(
          padding: EdgeInsets.all(16),
          width: double.infinity,
          child: Text('content of panel C'),
        ),
        isExpanded: false,
      ),
    ];
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('expenction Panel'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // 收缩面板
            ExpansionPanelList(
              expansionCallback: (int panelIndex, bool isExpanded) {
                setState(() {
                  _expansionPanelItems[panelIndex].isExpanded = !isExpanded;
                });
              },
              children: _expansionPanelItems.map((ExpansionPanelItem item) {
                return ExpansionPanel(
                  body: item.body,
                  isExpanded: item.isExpanded,
                  headerBuilder: (BuildContext context, bool isExpanded) {
                    return Container(
                      padding: EdgeInsets.all(16),
                      child: Text(
                        item.headerText,
                        style: Theme.of(context).textTheme.headline6,
                      ),
                    );
                  },
                );
              }).toList(),
              // children: [
              //   ExpansionPanel(
              //     headerBuilder: (BuildContext context, bool isExpanded) {
              //       return Container(
              //         padding: EdgeInsets.all(16),
              //         child: Text(
              //           'panel A',
              //           style: Theme.of(context).textTheme.headline6,
              //         ),
              //       );
              //     },
              //     body: Container(
              //       padding: EdgeInsets.all(16),
              //       width: double.infinity,
              //       child: Text('content of panel A'),
              //     ),
              //     //面板展开收缩
              //     isExpanded: _isExpanded,
              //   )
              // ],
            )
          ],
        ),
      ),
    );
  }
}
