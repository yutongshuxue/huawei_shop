import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:huawei_shop/pages/tab/home/page.dart';
import 'package:huawei_shop/pages/tab/production/page.dart';
import 'package:huawei_shop/pages/tab/self/page.dart';
import 'package:huawei_shop/router/constant.dart';

class TabPage extends StatefulWidget {
  const TabPage({super.key});

  @override
  State<TabPage> createState() => _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<TabPage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [HomePage(), ProductionPage(), SelfPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: Colors.red,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: '首页'),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: '产品'),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: '我的',
          ),
        ],
        onTap: (index) {
          if (index == 2 && true) {
            showDialog(
              context: context,
              builder:
                  (context) => AlertDialog(
                    title: Text("请登录"),
                    content: Text("您需要登录才能访问此页面"),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: Text("取消"),
                      ),
                      TextButton(
                        onPressed: () {
                          Get.toNamed(RoutePath.LOGIN);
                        },
                        child: Text("去登录"),
                      ),
                    ],
                  ),
            );
          }else{
            setState(() {
              _currentIndex = index;
            });
          }
        },
      ),
    );
  }
}
