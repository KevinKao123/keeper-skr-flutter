import 'package:flutter/material.dart';
import 'package:keeper_flutter/demo/post_show_demo.dart';
import '../model/post.dart';

class ListViewDemo extends StatelessWidget {
  Widget _listItemBuilder(BuildContext context, int index) {
    // return Text(posts[index].title);
    return Container(
      color: Colors.white,
      margin: EdgeInsets.all(8.0),
      // child: Column(
      //   children: <Widget>[
      //     Image.network(posts[index].imageUrl),
      //     SizedBox(height: 16.0),
      //     Text(
      //       posts[index].title,
      //       style: Theme.of(context).textTheme.headline4,
      //     ),
      //     Text(
      //       posts[index].author,
      //       style: Theme.of(context).textTheme.bodyText1,
      //     ),
      //     SizedBox(height: 16.0)
      //   ],
      // ),
      //stack小部件中可以放一摞小部件
      child: Stack(
        children: [
          Column(
            children: <Widget>[
              // Image.network(posts[index].imageUrl),
              AspectRatio(
                aspectRatio: 16 / 9,
                child: Image.network(posts[index].imageUrl),
              ),
              SizedBox(height: 16.0),
              Text(
                posts[index].title,
                style: Theme.of(context).textTheme.headline4,
              ),
              Text(
                posts[index].author,
                style: Theme.of(context).textTheme.bodyText1,
              ),
              SizedBox(height: 16.0)
            ],
          ),
          Positioned.fill(
              child: Material(
            color: Colors.transparent,
            child: InkWell(
              splashColor: Colors.white.withOpacity(0.3),
              highlightColor: Colors.white.withOpacity(0.1),
              onTap: () {
                // debugPrint('tap了');
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => PostShow(post: posts[index])));
              },
            ),
          ))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) => ListView.builder(
        itemCount: posts.length,
        itemBuilder: _listItemBuilder,
      );
}
