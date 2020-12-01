import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            // image: AssetImage()
            image: NetworkImage('https://eweb.co.jp/img/p05-logo05.png'),
            alignment: Alignment.topCenter,
            // repeat: ImageRepeat.repeatY,
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.indigoAccent.withOpacity(0.5),
              BlendMode.hardLight,
            )),
      ),
      // color: Colors.grey[100],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center, //主轴，中心对齐
        children: <Widget>[
          Container(
            child: Icon(
              Icons.face_outlined,
              size: 32.0,
              color: Colors.white,
            ),
            // color: Color.fromRGBO(3, 54, 255, 1),
            // padding: EdgeInsets.only(
            //   left: 24,
            //   right: 8,
            // ),
            padding: EdgeInsets.all(16),
            margin: EdgeInsets.all(8),
            width: 90,
            height: 90,
            decoration: BoxDecoration(
              //盒子装饰
              // color: Color.fromRGBO(3, 54, 255, 1),
              color: Color.fromARGB(255, 229, 102, 152),
              border: Border.all(
                color: Colors.indigoAccent[100],
                width: 3,
                style: BorderStyle.solid,
              ),
              // borderRadius: BorderRadius.circular(16),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
              boxShadow: [
                BoxShadow(
                  offset: Offset(
                    //阴影偏移量
                    5,
                    10,
                  ),
                  color: Color.fromRGBO(16, 20, 188, 1.0),
                  blurRadius: 25,
                  spreadRadius: -3,
                )
              ],
              // shape: BoxShape.circle,
              // gradient: RadialGradient(
              //   colors: [
              //     Color.fromRGBO(7, 102, 255, 1),
              //     Color.fromRGBO(3, 28, 128, 1),
              //   ],
              // ),
              gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(7, 102, 255, 1),
                  Color.fromRGBO(3, 28, 128, 1),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class RichTextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
          text: 'aaabbbccc',
          style: TextStyle(
            color: Colors.deepPurpleAccent,
            fontSize: 34.0,
            fontStyle: FontStyle.italic, //斜体
            fontWeight: FontWeight.w100,
          ),
          children: [
            TextSpan(
                text: '.co.jp',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.deepOrange,
                ))
          ]),
    );
  }
}

class TextDemo extends StatelessWidget {
  final TextStyle _textStyle = TextStyle(
    fontSize: 16.0,
  );

  final String _author = 'eweb';
  final String _title = 'eweb ppp';

  @override
  Widget build(BuildContext context) {
    return Text(
      '[$_author]($_title)家づくりと同じ様に心地よく細部までこだわり、皆様が幸せになるサイト制作を心がけております。',
      textAlign: TextAlign.left,
      style: _textStyle,
      maxLines: 2, //多行
      overflow: TextOverflow.ellipsis,
    );
  }
}
