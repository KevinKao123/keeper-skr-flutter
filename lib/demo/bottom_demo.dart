import 'package:flutter/material.dart';

class ButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Widget flatButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FlatButton(
          onPressed: () {},
          child: Text('button'),
          splashColor: Colors.green,
          textColor: Theme.of(context).accentColor,
        ),
        FlatButton.icon(
          onPressed: () {},
          icon: Icon(Icons.ac_unit),
          label: Text('button'),
          splashColor: Colors.green,
          textColor: Theme.of(context).accentColor,
        ),
      ],
    );

    final Widget raisedButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RaisedButton(
          onPressed: () {},
          child: Text('button'),
          splashColor: Colors.green,
          // textColor: Colors.white,
          textTheme: ButtonTextTheme.primary,
          // 阴影
          // elevation: 0,
          color: Theme.of(context).accentColor,
          shape: BeveledRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        SizedBox(
          width: 16,
        ),
        RaisedButton.icon(
          onPressed: () {},
          icon: Icon(Icons.ac_unit),
          label: Text('button'),
          splashColor: Colors.green,
          textColor: Theme.of(context).accentColor,
        ),
        SizedBox(
          width: 16,
        ),
        // Theme(data: ThemeData(), child: RaisedButton(
        Theme(
          data: Theme.of(context).copyWith(
            buttonColor: Theme.of(context).accentColor,
            buttonTheme: ButtonThemeData(
              textTheme: ButtonTextTheme.primary,
              // shape: BeveledRectangleBorder(
              //   borderRadius: BorderRadius.circular(15),
              // ),
              shape: StadiumBorder(),
            ),
          ),
          child: RaisedButton(
            onPressed: () {},
            child: Text('button'),
            splashColor: Colors.green,
            textTheme: ButtonTextTheme.primary,
            color: Theme.of(context).accentColor,
          ),
        )
      ],
    );

    final Widget outlineButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        OutlineButton(
          onPressed: () {},
          child: Text('button'),
          splashColor: Colors.grey[100],
          textColor: Colors.black,
          textTheme: ButtonTextTheme.primary,
          // 阴影
          // elevation: 0,
          // color: Theme.of(context).accentColor,
          shape: BeveledRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          borderSide: BorderSide(color: Colors.black),
          highlightedBorderColor: Colors.grey,
        ),
        SizedBox(
          width: 16,
        ),
        OutlineButton.icon(
          onPressed: () {},
          icon: Icon(Icons.ac_unit),
          label: Text('button'),
          splashColor: Colors.green,
          textColor: Theme.of(context).accentColor,
        ),
      ],
    );

    // 固定改变按钮宽度
    final Widget fixWidthButtonDemo = Container(
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
          ),
        ],
      ),
    );

    // 占满整个一拍
    final Widget expandedButton = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          flex: 2,
          child: OutlineButton.icon(
            onPressed: () {},
            icon: Icon(Icons.ac_unit),
            label: Text('button'),
            splashColor: Colors.green,
            textColor: Theme.of(context).accentColor,
          ),
        ),
        SizedBox(
          width: 16,
        ),
        Expanded(
          child: OutlineButton.icon(
            onPressed: () {},
            icon: Icon(Icons.ac_unit),
            label: Text('button'),
            splashColor: Colors.green,
            textColor: Theme.of(context).accentColor,
          ),
        )
      ],
    );

    final Widget buttonBarButton = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Theme(
          data: Theme.of(context).copyWith(
            buttonTheme: ButtonThemeData(
              padding: EdgeInsets.symmetric(horizontal: 64),
            ),
          ),
          child: ButtonBar(
            children: <Widget>[
              OutlineButton.icon(
                onPressed: () {},
                icon: Icon(Icons.ac_unit),
                label: Text('button'),
                splashColor: Colors.green,
                textColor: Theme.of(context).accentColor,
              ),
              OutlineButton.icon(
                onPressed: () {},
                icon: Icon(Icons.ac_unit),
                label: Text('button'),
                splashColor: Colors.green,
                textColor: Theme.of(context).accentColor,
              ),
            ],
          ),
        )
      ],
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('ButtonDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            flatButtonDemo,
            raisedButtonDemo,
            outlineButtonDemo,
            fixWidthButtonDemo,
            expandedButton,
            buttonBarButton,
          ],
        ),
      ),
    );
  }
}
