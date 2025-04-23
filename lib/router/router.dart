import 'package:get/get.dart';
import 'package:huawei_shop/pages/intro/page.dart';
import 'package:huawei_shop/pages/login/page.dart';
import 'package:huawei_shop/pages/tab/page.dart';
import 'package:huawei_shop/router/constant.dart';

class AppRouter {
  static final routes = [
    GetPage(name: RoutePath.INTRO, page: () => IntroPage()),
    GetPage(name: RoutePath.TAB, page: () => TabPage()),
    GetPage(name: RoutePath.LOGIN, page: () => LoginPage()),
  ];
}
