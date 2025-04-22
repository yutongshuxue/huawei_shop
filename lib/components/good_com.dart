import 'package:flutter/material.dart';

class GoodCom extends StatelessWidget {
  final double? height;
  final bool isHot;
  final bool isCollect;
  final String imgUrl;
  final String title;
  final double price;

  const GoodCom({
    super.key,
    this.height = 240,
    required this.isHot,
    required this.isCollect,
    required this.imgUrl,
    required this.title,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ClipRRect(
      child: Container(
        width: (size.width - 36) / 2,
        // height: height,
        decoration: BoxDecoration(color: Colors.white),
        child: Stack(
          children: [
            Column(
              children: [
                Padding(
                  padding:
                      height! < 240
                          ? const EdgeInsets.only(top: 20, right: 14, left: 14)
                          : const EdgeInsets.only(top: 40, left: 14, right: 14),
                  child: Image.asset(imgUrl),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(title),
                ),
                Container(
                  padding: EdgeInsets.only(left: 14),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '¥ $price',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.red,
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              right: 0,
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.favorite_border, color: Colors.grey[500]),
              ),
            ),
            isHot? Positioned(
              child: Transform.translate(
                offset: Offset(-23, 15),
                child: Transform.rotate(
                  angle: -3.1415927 / 4,
                  child: Container(
                    width: 100,
                    height: 24,
                    color: Colors.redAccent,
                    alignment: Alignment(0, 0),
                    child: Text(
                      'hot',
                      style: TextStyle(fontSize: 13, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ):SizedBox(),
          ],
        ),
      ),
    );
  }
}
