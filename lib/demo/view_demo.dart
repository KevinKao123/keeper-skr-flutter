import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../model/post.dart';

class ViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) => GridViewBuilderDemo();
}

class GridViewBuilderDemo extends StatelessWidget {
  Widget _gridItemBuilder(BuildContext context, int index) {
    return Container(
      child: Image.network(
        posts[index].imageUrl,
        fit: BoxFit.contain,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //   //交叉轴项目数量
      //   crossAxisCount: 3,
      //   //间隔
      //   crossAxisSpacing: 8,
      //   mainAxisSpacing: 8,
      // ),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        //交叉轴最大高度
        maxCrossAxisExtent: 200,
        //间隔
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
      ),
      //在四周添加8的边距
      padding: EdgeInsets.all(8),
      itemBuilder: _gridItemBuilder,
      itemCount: posts.length,
    );
  }
}

class GridViewExtendDemo extends StatelessWidget {
  List<Widget> _buildTiles(int length) {
    return List.generate(
      length,
      (int index) => Container(
        color: Colors.grey[300],
        alignment: Alignment(0, 0),
        child: Text(
          'item $index',
          style: TextStyle(
            fontSize: 18,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) => GridView.extent(
        //item最大高度
        maxCrossAxisExtent: 150,
        //横向间距 纵向间距
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        //滚动方向
        // scrollDirection: Axis.horizontal,
        children: _buildTiles(100),
      );
}

class GridViewCountDemo extends StatelessWidget {
  List<Widget> _buildTiles(int length) {
    return List.generate(
      length,
      (int index) => Container(
        color: Colors.grey[300],
        alignment: Alignment(0, 0),
        child: Text(
          'item $index',
          style: TextStyle(
            fontSize: 18,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) => GridView.count(
        //横向几项
        crossAxisCount: 3,
        //横向间距 纵向间距
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        //滚动方向
        // scrollDirection: Axis.horizontal,
        // children: <Widget>[
        //   Container(
        //     color: Colors.grey[300],
        //     alignment: Alignment(0, 0),
        //     child: Text(
        //       'item',
        //       style: TextStyle(
        //         fontSize: 18,
        //         color: Colors.grey,
        //       ),
        //     ),
        //   ),
        // ],
        children: _buildTiles(100),
      );
}

class PageViewBuilderDemo extends StatelessWidget {
  //定义方法 参数context 类型BuildContext
  Widget _pageItemBuilder(BuildContext context, int index) {
    return Stack(
      children: <Widget>[
        //box沾满所有空间
        SizedBox.expand(
          child: Image.network(
            posts[index].imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 8,
          left: 8,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                posts[index].title,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Text(
                posts[index].author,
                style: TextStyle(fontWeight: FontWeight.normal),
              ),
              Text(
                posts[index].imageUrl,
                style: TextStyle(
                    fontWeight: FontWeight.w600, color: Colors.redAccent),
              )
            ],
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) => PageView.builder(
        itemCount: posts.length,
        itemBuilder: _pageItemBuilder,
      );
}

class PageViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) => PageView(
        onPageChanged: (currentPage) => debugPrint('page:$currentPage'),
        controller: PageController(
          //初始页面
          initialPage: 1,
          //是否记录用户滚动的页码
          keepPage: false,
          //占用页面比例
          viewportFraction: 0.88,
        ),
        //滑动超过半页就翻页的效果
        // pageSnapping: false,
        //页面顺序倒叙
        // reverse: true,
        //横向翻页，或者竖向翻页vertical
        // scrollDirection: Axis.horizontal,
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Container(
            color: Colors.brown,
            alignment: Alignment(0, 0),
            child: Text(
              'ONE',
              style: TextStyle(fontSize: 32.0, color: Colors.white),
            ),
          ),
          Container(
            color: Colors.blueGrey,
            alignment: Alignment(0, 0),
            child: Text(
              'ToTo',
              style: TextStyle(fontSize: 32.0, color: Colors.white),
            ),
          ),
          Container(
            color: Colors.grey,
            alignment: Alignment(0, 0),
            child: Text(
              'Three',
              style: TextStyle(fontSize: 32.0, color: Colors.white),
            ),
          )
        ],
      );
}
