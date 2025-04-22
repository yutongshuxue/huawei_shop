import 'package:flutter/material.dart';
import 'package:huawei_shop/components/good_com.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:huawei_shop/pages/tab/production/goods_model.dart';

class ProductionPage extends StatelessWidget {
  const ProductionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Column(
          children: [
            // 商品搜索
            Container(
              margin: EdgeInsets.fromLTRB(24, 28, 24, 0),
              padding: EdgeInsets.only(left: 12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: '请输入商品...',
                  hintStyle: TextStyle(color: Colors.grey[400]),
                ),
              ),
            ),
            // 商品列表区域
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 14,horizontal: 10),
              child: StaggeredGrid.count(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                children: _renderGoodCom(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

List<Widget> _renderGoodCom(){
  List<Map<String, dynamic>> jsonData = [
    {
      'imgUrl':'assets/images/biao01.png',
      'isHot': false,
      'isCollect': false,
      'price': 6729.8,
      'title': '成功男士的标值，华为智能表'
    },
    {
      'imgUrl':'assets/images/cart04.png',
      'isHot': false,
      'isCollect': true,
      'price': 6729.8,
      'title': '智能驾驶，畅游每一天，给你不一样的体验'
    },

    {
      'imgUrl':'assets/images/computer01.png',
      'isHot': true,
      'isCollect': false,
      'price': 8281.0,
      'title': 'HUAWEI|Mate Pro+ 金丝银锦交融共生美学'
    },
    {
      'imgUrl':'assets/images/computer03.png',
      'isHot': false,
      'isCollect': false,
      'price': 1126.0,
      'title': '低音炮音响，轻松每一天'
    },
    {
      'imgUrl':'assets/images/computer02.png',
      'isHot': false,
      'isCollect': false,
      'price': 6729.8,
      'title': 'HUAWEI|Mate Pro+ 金丝银锦交融共生美学'
    },
    {
      'imgUrl':'assets/images/computer05.png',
      'isHot': false,
      'isCollect': false,
      'price': 582.0,
      'title': '成功男士的标值，华为智能表'
    },
  ];
  List<Widget> goodComList = jsonData.map((data){
    GoodsModel goodsModel = GoodsModel.fromJson(data);
    return GoodCom(
      isHot: goodsModel.isHot,
      isCollect: goodsModel.isCollect,
      imgUrl: goodsModel.imgUrl,
      title: goodsModel.title,
      price: goodsModel.price.toDouble(),
    );
  }).toList();
  return goodComList;
}
