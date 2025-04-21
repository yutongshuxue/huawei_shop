import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:huawei_shop/router/constant.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 140),
              child: Image.asset('assets/images/huawei_logo.png', width: 180),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30, bottom: 30),
              child: Text(
                'Join us now',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                '2024年12月31日 华为创立于1987年,是全球领先的ICT(信息与通信)基础设施和智能终端提供商',
                style: TextStyle(color: Colors.grey),
              ),
            ),
            GestureDetector(
              onTap: (){
                Get.offNamed(RoutePath.TAB);
              },
              child: Container(
                margin: EdgeInsets.only(top: 30, left: 20, right: 20),
                height: 56,
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(6)
                ),
                child: Center(
                  child: Text(
                    '进入官网',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
