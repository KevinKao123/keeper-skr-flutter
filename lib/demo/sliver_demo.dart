import 'package:flutter/material.dart';
import '../model/post.dart';

class SliverDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            // title: Text("Keeper"),
            pinned: true,
            // floating: true,
            //伸展高度
            expandedHeight: 178,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                'keeper skrrrrr'.toUpperCase(),
                style: TextStyle(
                    fontSize: 15,
                    letterSpacing: 3,
                    fontWeight: FontWeight.w400),
              ),
              background: Image.network(
                'https://eweb.co.jp/img/p01-footbg.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverSafeArea(
            sliver: SliverPadding(
              padding: EdgeInsets.all(8),
              sliver: SliverGridDemo(),
            ),
          )
        ],
      ),
    );
  }
}

class SliverListDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
          (BuildContext context, int index) => Padding(
                padding: EdgeInsets.only(bottom: 32),
                child: Material(
                    borderRadius: BorderRadius.circular(12),
                    elevation: 14,
                    shadowColor: Colors.blue.withOpacity(0.5),
                    // child: Container(
                    //   child: Image.network(
                    //     posts[index].imageUrl,
                    //     fit: BoxFit.cover,
                    //   ),
                    // ),
                    child: Stack(
                      children: [
                        AspectRatio(
                          aspectRatio: 16 / 9,
                          child: Image.network(
                            posts[index].imageUrl,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          child: Column(
                            //文字左对齐
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                posts[index].title,
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                              Text(
                                posts[index].author,
                                style: TextStyle(
                                    fontSize: 13, color: Colors.white),
                              ),
                            ],
                          ),
                          top: 32,
                          left: 32,
                        )
                      ],
                    )),
              ),
          childCount: posts.length),
    );
  }
}

class SliverGridDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      delegate: SliverChildBuilderDelegate(
          (BuildContext context, int index) => Container(
                child: Image.network(
                  posts[index].imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
          childCount: posts.length),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        //网格显示的比例
        childAspectRatio: 1 / 1,
      ),
    );
  }
}
