import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          // DrawerHeader(
          //   child: Text('header'.toUpperCase()),
          //   decoration: BoxDecoration(
          //     color: Colors.grey[100],
          //   ),
          // ),
          UserAccountsDrawerHeader(
            accountName: Text(
              'Root',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            accountEmail: Text(
              'root@eweb.co.jp',
              style: TextStyle(fontWeight: FontWeight.normal),
            ),
            currentAccountPicture: CircleAvatar(
              backgroundImage:
                  NetworkImage('https://eweb.co.jp/img/p07-ouImg.png'),
            ),
            decoration: BoxDecoration(
              color: Colors.yellow[400],
              image: DecorationImage(
                image: NetworkImage(
                    'https://img.ivsky.com/img/tupian/pre/201402/18/pikachu-001.jpg'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  Colors.yellow[400].withOpacity(0.6),
                  BlendMode.hardLight,
                ),
              ),
            ),
          ),
          ListTile(
            title: Text(
              'messages',
              textAlign: TextAlign.right,
            ),
            trailing: Icon(
              //在右边显示
              // leading: Icon(
              //在左边显示
              Icons.message,
              color: Colors.blue,
              size: 22.0,
            ),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: Text(
              'favorite',
              textAlign: TextAlign.right,
            ),
            trailing: Icon(
              Icons.favorite,
              color: Colors.blue,
              size: 22.0,
            ),
          ),
          ListTile(
            title: Text(
              'settings',
              textAlign: TextAlign.right,
            ),
            trailing: Icon(
              Icons.settings,
              color: Colors.blue,
              size: 22.0,
            ),
          ),
        ],
      ),
    );
  }
}
