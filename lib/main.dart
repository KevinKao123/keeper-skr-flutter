//materal design
import 'package:flutter/material.dart';
import './demo/listview_demo.dart';
import './demo/drawer_demo.dart';
import './demo/bottomNavigationBar_demo.dart';

// import 'demo/hello_demo.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //debug 消除
      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: ThemeData(
          //点按效果
          primarySwatch: Colors.purple,
          highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
          splashColor: Colors.white70),
    );
  }
}

class Home extends StatelessWidget {
  @override
  var appBar = AppBar(
    title: Text('keeper skr'),
    elevation: 30.0, //阴影 默认4.0
    bottom: TabBar(
      unselectedLabelColor: Colors.black38,
      indicatorColor: Colors.black54,
      indicatorSize: TabBarIndicatorSize.label,
      indicatorWeight: 3.0,
      tabs: <Widget>[
        Tab(
          icon: Icon(Icons.local_florist),
        ),
        Tab(
          icon: Icon(Icons.local_activity),
        ),
        Tab(
          icon: Icon(Icons.local_airport),
        ),
      ],
    ),
    //左边
    // leading: IconButton(
    //   icon: Icon(Icons.menu),
    //   tooltip: 'Navigation',
    //   onPressed: () => debugPrint('点击了菜单'),
    // ),
    //右边
    actions: <Widget>[
      IconButton(
        icon: Icon(Icons.search),
        tooltip: 'Search',
        onPressed: () => debugPrint('点击了搜索'),
      ),
    ],
  );
  Widget build(BuildContext context) => DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: Colors.yellow,
          appBar: appBar,
          drawer: DrawerDemo(),
          bottomNavigationBar: BottomNavBarDemo(),
          // Container(
          //   color: Colors.yellow,
          //   padding: EdgeInsets.all(8.0),
          //   child: Column(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: <Widget>[Text('this is a 抽屉')],
          //   ),
          // ), //屏幕左边滑进来
          // endDrawer: Text('this is a 抽屉'), //屏幕右边滑进来
          body: TabBarView(
            children: [
              // Icon(
              //   Icons.local_florist,
              //   size: 128.0,
              //   color: Colors.black12,
              // ),
              ListViewDemo(),
              Icon(
                Icons.local_activity,
                size: 128.0,
                color: Colors.black12,
              ),
              Icon(
                Icons.local_airport,
                size: 128.0,
                color: Colors.black12,
              ),
            ],
          ),
          // body: Hello(),
          // body: ListViewDemo()
        ),
      );
}
