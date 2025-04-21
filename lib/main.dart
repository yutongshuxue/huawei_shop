import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:huawei_shop/pages/intro/page.dart';
import 'package:huawei_shop/router/constant.dart';
import 'package:huawei_shop/router/router.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: RoutePath.INTRO,
      getPages: AppRouter.routes,
    );
  }
}
