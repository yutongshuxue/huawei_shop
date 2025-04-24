import 'package:get/get.dart';

class UserController extends GetxController{
  final isLogin = false.obs;
  final userName = ''.obs;
  final userAvatar = ''.obs;
  final userPhone = ''.obs;

  void login(String name, String avatar, String phone){
    userName.value = name;
    userAvatar.value = avatar;
    userPhone.value = phone;
    isLogin.value = true;
    update();
  }

  void logout() {
    userName.value = '';
    userAvatar.value = '';
    userPhone.value = '';
    isLogin.value = false;
    update();
  }

  // 计算属性
  String get userInfo => '${userName.value}, ${userPhone.value}';
}