import 'package:flutter/material.dart';
import 'package:huawei_shop/components/top_bottom.dart';
import 'package:huawei_shop/pages/tab/self/components/user_info.dart';
import 'package:huawei_shop/router/constant.dart';
import 'package:huawei_shop/utils/my_icon.dart';
import 'package:get/get.dart';

class SelfPage extends StatelessWidget {
  SelfPage({super.key});

  final List<List<String>> _infoData = [
    ['11月6日', '有效期至'],
    ['116.98', '我的余额'],
    ['7', '我的卡包'],
  ];

  final List<List<dynamic>> _chongData = [
    [Icon(Icons.paid_rounded, color: Colors.deepPurple[400], size: 24), '待付款'],
    [Icon(Icons.messenger, color: Colors.blue[400], size: 24), '待付款'],
    [Icon(Icons.receipt_outlined, color: Colors.yellow[400], size: 24), '待付款'],
    [
      Icon(Icons.indeterminate_check_box, color: Colors.red[400], size: 24),
      '待付款',
    ],
  ];

  final List<List<dynamic>> _otherServeData = [
    [Icon(MyIcon.ke_fu, color: Colors.grey[600], size: 28), '联系客服'],
    [Icon(MyIcon.yi_jian, color: Colors.grey[600], size: 28), '意见反馈'],
    [Icon(MyIcon.wo_men, color: Colors.grey[600], size: 28), '关于我们'],
    [Icon(MyIcon.zheng_che, color: Colors.grey[600], size: 28), '隐私政策'],
    [Icon(MyIcon.fu_li, color: Colors.grey[600], size: 28), '每日福利'],
    [Icon(MyIcon.wo_men, color: Colors.grey[600], size: 28), '常见问题'],
    [Icon(MyIcon.zi_xun, color: Colors.grey[600], size: 28), '咨询新闻'],
  ];

  final List<List<dynamic>> _shareData = [
    [Icon(MyIcon.dian_zan, color: Colors.grey[600], size: 18), '点赞'],
    [Icon(MyIcon.shou_cang, color: Colors.grey[600], size: 18), '收藏'],
    [Icon(MyIcon.fen_xiang, color: Colors.grey[600], size: 18), '分享'],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            height: 400,
            decoration: BoxDecoration(
              gradient: RadialGradient(
                colors: [Color.fromARGB(100, 255, 205, 205), Colors.white],
                center: Alignment(-1, -1),
                radius: 0.9,
              ),
            ),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(Icons.settings, color: Colors.grey[600]),
                      SizedBox(width: 8),
                      Icon(Icons.beach_access, color: Colors.grey[600]),
                    ],
                  ),
                ),
                UserInfoCom(),
                Container(
                  height: 90,
                  padding: EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: infoFn(_infoData),
                  ),
                ),
                Container(
                  height: 60,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                  margin: EdgeInsets.symmetric(horizontal: 40),
                  decoration: BoxDecoration(
                    color: Colors.deepOrangeAccent,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '邀请好友',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                          Text(
                            '瓜分先进红包优惠送不停',
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.red,
                          ),
                          onPressed: () {},
                          child: Text('立即要求', style: TextStyle(fontSize: 12)),
                        ),
                      ),
                    ],
                  ),
                ),
                ListTile(title: Text('我的充值')),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: renderDataFn(_chongData, 6),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 204,
            margin: EdgeInsets.only(top: 6),
            color: Colors.white,
            child: Column(
              children: [
                ListTile(title: Text('其他服务')),
                Expanded(
                  child: GridView.count(
                    padding: EdgeInsets.zero,
                    crossAxisCount: 4,
                    childAspectRatio: 1.2,
                    children: renderDataFn(_otherServeData, 6),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 68,
            color: Colors.white,
            margin: EdgeInsets.only(top: 6),
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Expanded(
                  flex: 4,
                  child: Container(
                    height: 40,
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.only(left: 8),
                    margin: EdgeInsets.only(right: 8),
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.edit, color: Colors.grey),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: '请输入...',
                              hintStyle: TextStyle(color: Colors.grey),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 13),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: renderDataFn(_shareData, 3),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

List<Widget> infoFn(List<List<String>> list) {
  List<Widget> result = [];
  for (int i = 0; i < list.length; i++) {
    result.add(
      TopBottomCom(
        title: list[i][1],
        child: Text(list[i][0], style: TextStyle(fontSize: 18)),
      ),
    );
  }
  return result;
}

List<Widget> renderDataFn(List<List<dynamic>> list, double? span) {
  List<Widget> result = [];
  for (int i = 0; i < list.length; i++) {
    result.add(
      TopBottomCom(title: list[i][1], span: span ?? 6, child: list[i][0]),
    );
  }
  return result;
}
