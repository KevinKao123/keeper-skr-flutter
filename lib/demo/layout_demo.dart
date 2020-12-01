import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          //限制宽度高度
          ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: 200,
              maxWidth: 200,
            ),
            child: Container(
              color: Color.fromRGBO(3, 54, 255, 0.8),
            ),
          ),
        ],
      ),
    );
  }
}

class AspectRatioDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        // 主轴对齐方式
        mainAxisAlignment: MainAxisAlignment.center,
        //交叉轴对齐方式
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          AspectRatio(
            //长宽比
            aspectRatio: 16 / 9,
            child: Container(
              color: Color(0xff28a3b5),
            ),
          )
        ],
      ),
    );
  }
}

class StackDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return IconBadge(Icons.pool);
    // return Column(
    //   children: <Widget>[
    //     IconBadge(
    //       Icons.pool,
    //       size: 64,
    //     )
    //   ],
    // );
    return Container(
      child: Column(
        // 主轴对齐方式
        // mainAxisAlignment: MainAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        //交叉轴对齐方式
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // IconBadge(Icons.pool),
          // IconBadge(Icons.beach_access, size: 64),
          // IconBadge(Icons.baby_changing_station),
          Stack(
            alignment: Alignment.topLeft,
            children: [
              SizedBox(
                width: 200,
                height: 300,
                child: Container(
                  //子部件的位置
                  // alignment: Alignment(-1, -0.8),
                  alignment: Alignment.topCenter,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(3, 54, 255, 1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              SizedBox(
                height: 32,
              ),
              SizedBox(
                width: 100,
                height: 100,
                child: Container(
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(3, 54, 255, 1),
                    // borderRadius: BorderRadius.circular(8),
                    shape: BoxShape.circle,
                    gradient: RadialGradient(colors: [
                      Color.fromRGBO(7, 102, 255, 1),
                      Color.fromRGBO(3, 54, 255, 1),
                    ]),
                  ),
                  child: Icon(
                    Icons.brightness_2,
                    color: Colors.white,
                    size: 32,
                  ),
                ),
              ),
              Positioned(
                right: 20,
                top: 20,
                child: Icon(
                  Icons.ac_unit,
                  color: Colors.white,
                  size: 32,
                ),
              ),
              Positioned(
                  right: 20,
                  top: 120,
                  child: Icon(Icons.ac_unit, color: Colors.white, size: 20)),
              Positioned(
                right: 70,
                top: 180,
                child: Icon(Icons.ac_unit, color: Colors.white, size: 16),
              ),
              Positioned(
                right: 30,
                top: 230,
                child: Icon(Icons.ac_unit, color: Colors.white, size: 18),
              ),
              Positioned(
                right: 90,
                bottom: 20,
                child: Icon(Icons.ac_unit, color: Colors.white, size: 16),
              ),
              Positioned(
                right: 4,
                bottom: -4,
                child: Icon(Icons.ac_unit, color: Colors.white, size: 16),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class IconBadge extends StatelessWidget {
  //属性
  final IconData icon;
  final double size;

  IconBadge(this.icon, {this.size = 32.0});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(icon, size: size, color: Colors.white),
      width: size + 60,
      height: size + 60,
      color: Color.fromRGBO(3, 54, 255, 1),
    );
  }
}
