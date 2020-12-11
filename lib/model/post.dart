class Post {
  const Post({
    this.title,
    this.author,
    this.imageUrl,
    this.description,
  });
  final String title;
  final String author;
  final String imageUrl;
  final String description;
}

final List<Post> posts = [
  Post(
    title: 'eweb',
    author: 'Mohamed Chahin',
    description:
        'outers对象是一个Map对象，有Map<String,WidgetBuilder>组成，会使用Navigator.pushNamed来路由。会通过去查找Map的名称，切换到WidgetBuilder的带来的页面。通过routers可以给MaterialApp组件初始化路由表',
    imageUrl: 'https://eweb.co.jp/img/p05-logo01.png',
  ),
  Post(
    title: 'nsupport',
    author: 'Mohamed Chahin',
    imageUrl: 'https://eweb.co.jp/img/p05-logo05.png',
  ),
  Post(
    title: 'nsupport',
    author: 'Mohamed Chahin',
    imageUrl: 'https://eweb.co.jp/img/p05-logo03.png',
  ),
  Post(
    title: 'nsupport',
    author: 'Mohamed Chahin',
    imageUrl: 'https://eweb.co.jp/img/p05-graphicBG2.png',
  ),
  Post(
    title: 'Candy Shop',
    author: 'Mohamed Chahin',
    imageUrl: 'https://img.ivsky.com/img/tupian/pre/201402/18/pikachu-001.jpg',
  ),
  Post(
    title: 'Contained',
    author: 'Mohamed Chahin',
    imageUrl: 'https://resources.ninghao.net/images/contained.jpg',
  ),
  Post(
    title: 'Dragon',
    author: 'Mohamed Chahin',
    imageUrl: 'https://resources.ninghao.net/images/dragon.jpg',
  ),
  Post(
    title: 'Free Hugs',
    author: 'Mohamed Chahin',
    imageUrl: 'https://resources.ninghao.net/images/free_hugs.jpg',
  ),
  Post(
    title: 'Gravity Falls',
    author: 'Mohamed Chahin',
    imageUrl: 'https://resources.ninghao.net/images/gravity-falls.png',
  ),
  Post(
    title: 'Icecream Truck',
    author: 'Mohamed Chahin',
    imageUrl: 'https://resources.ninghao.net/images/icecreamtruck.png',
  ),
];
