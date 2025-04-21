import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:huawei_shop/components/hot_card.dart';
import 'package:huawei_shop/components/wisdom_com.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<String> _bannerImages = [
    'assets/images/cart01.png',
    'assets/images/cart02.png',
    'assets/images/cart03.png',
    'assets/images/cart04.png',
    'assets/images/cart05.png',
  ];

  final List<List<String>> _wisdomData = [
    ['阔 很有型', 'Pura X', 'assets/images/computer01.png'],
    ['全新旗舰店', 'MateBook', 'assets/images/computer02.png'],
    ['云析柔光屏', 'Mate 70 系列', 'assets/images/computer03.png'],
    ['超轻薄 高...', 'MatePad pro', 'assets/images/computer04.png'],
  ];

  final List<List<String>> _hotData = [
    [
      'HUAWAI|Mate 70 Pro+ 金丝银锦交融共生美学',
      '4689',
      'assets/images/biao01.png',
    ],
    [
      'HUAWAI|Mate 70 Pro+ 金丝银锦交融共生美学',
      '6899',
      'assets/images/biao02.png',
    ],
    [
      'HUAWAI|Mate 70 Pro+ 金丝银锦交融共生美学',
      '8899',
      'assets/images/computer01.png',
    ],
    [
      'HUAWAI|Mate 70 Pro+ 金丝银锦交融共生美学',
      '11220',
      'assets/images/computer05.png',
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Column(
          children: [
            CarouselSlider(
              options: CarouselOptions(
                height: 220,
                aspectRatio: 16 / 9,
                viewportFraction: 1,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                scrollDirection: Axis.horizontal,
              ),
              items:
              _bannerImages.map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery
                          .of(context)
                          .size
                          .width,
                      // margin: EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(i),
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                );
              }).toList(),
            ),
            ListTile(
              leading: Icon(Icons.hotel_class_sharp, color: Colors.red),
              title: Text('华为问界智慧生活'),
            ),
            Container(
              height: 160,
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: GridView.builder(
                padding: EdgeInsets.zero,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // 固定2列
                  mainAxisSpacing: 10, // 行间距
                  crossAxisSpacing: 10, // 列间距
                  childAspectRatio: 2.3, // 宽高比（宽/高）
                ),
                itemCount: _wisdomData.length, // 总项数
                itemBuilder: (context, index) {
                  return WisdomCom(
                    title: _wisdomData[index][0],
                    secondTitle: _wisdomData[index][1],
                    child: Image.asset(_wisdomData[index][2]),
                  );
                },
              ),
            ),
            ListTile(title: Text('全网热卖')),
            SizedBox(
              height: 560,
              child: ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: 4,
                itemBuilder: (BuildContext context, int index) {
                  return HotCardCom(title: _hotData[index][0],
                      price: _hotData[index][1],
                      imgUrl: _hotData[index][2]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
