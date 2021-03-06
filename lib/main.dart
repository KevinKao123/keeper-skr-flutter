//materal design
import 'package:flutter/material.dart';
import './demo/listview_demo.dart';
import './demo/drawer_demo.dart';
import './demo/bottomNavigationBar_demo.dart';
import './demo/basic_demo.dart';
import './demo/layout_demo.dart';
import './demo/view_demo.dart';
import './demo/sliver_demo.dart';
import './demo/navigator_demo.dart';

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
      // home: Home(),
      home: NavigatorDemo(),
      initialRoute: '/n',
      routes: {
        // '/n': (context) => NavigatorDemo(),
        '/n': (context) => Home(),

        '/about': (context) => Pagess(title: 'aboutaaa'),
      },
      theme: ThemeData(
          //点按效果
          primarySwatch: Colors.purple,
          highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
          splashColor: Colors.white70),
    );
  }
}

// ignore: must_be_immutable
class Home extends StatelessWidget {
  var appBar = AppBar(
    title: Text('keeper skr'),
    elevation: 30.0, //阴影 默认4.0
    bottom: TabBar(
      unselectedLabelColor: Colors.black38,
      indicatorColor: Colors.black54,
      indicatorSize: TabBarIndicatorSize.label,
      indicatorWeight: 1.0,
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
        Tab(
          icon: Icon(Icons.view_quilt),
        ),
        // Tab(
        //   icon: Icon(Icons.local_drink_outlined),
        // ),
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
        length: 4,
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
              // PageViewDemo(),
              // Icon(
              //   Icons.local_activity,
              //   size: 128.0,
              //   color: Colors.black12,
              // ),
              BasicDemo(),
              // Icon(
              //   Icons.local_airport,
              //   size: 128.0,
              //   color: Colors.black12,
              // ),
              StackDemo(),
              SliverDemo(),
              // ViewDemo()
              // LayoutDemo(),
            ],
          ),
          // body: Hello(),
          // body: ListViewDemo()
        ),
      );
}

class Hello extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Center(
        child: Text(
          'hello world',
          textDirection: TextDirection.ltr,
          style: TextStyle(
              fontSize: 40.0,
              fontWeight: FontWeight.bold,
              color: Colors.black87),
        ),
      );
}
// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);

//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.

//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".

//   final String title;

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       // This call to setState tells the Flutter framework that something has
//       // changed in this State, which causes it to rerun the build method below
//       // so that the display can reflect the updated values. If we changed
//       // _counter without calling setState(), then the build method would not be
//       // called again, and so nothing would appear to happen.
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     // This method is rerun every time setState is called, for instance as done
//     // by the _incrementCounter method above.
//     //
//     // The Flutter framework has been optimized to make rerunning build methods
//     // fast, so that you can just rebuild anything that needs updating rather
//     // than having to individually change instances of widgets.
//     return Scaffold(
//       appBar: AppBar(
//         // Here we take the value from the MyHomePage object that was created by
//         // the App.build method, and use it to set our appbar title.
//         title: Text(widget.title),
//       ),
//       body: Center(
//         // Center is a layout widget. It takes a single child and positions it
//         // in the middle of the parent.
//         child: Column(
//           // Column is also a layout widget. It takes a list of children and
//           // arranges them vertically. By default, it sizes itself to fit its
//           // children horizontally, and tries to be as tall as its parent.
//           //
//           // Invoke "debug painting" (press "p" in the console, choose the
//           // "Toggle Debug Paint" action from the Flutter Inspector in Android
//           // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
//           // to see the wireframe for each widget.
//           //
//           // Column has various properties to control how it sizes itself and
//           // how it positions its children. Here we use mainAxisAlignment to
//           // center the children vertically; the main axis here is the vertical
//           // axis because Columns are vertical (the cross axis would be
//           // horizontal).
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               'hello world:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headline4,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
