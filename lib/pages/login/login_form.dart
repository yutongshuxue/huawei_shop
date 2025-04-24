import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:huawei_shop/controller/user_controller.dart';
import 'package:huawei_shop/router/constant.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {

  bool _obscureText = true; // 控制是否显示密码
  final _formKey = GlobalKey<FormState>();
  String _phone = '';
  String _password = '';

  UserController userController = Get.find<UserController>();

  void _submit() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      print('提交数据: _phone=$_phone, Password=$_password');
      // 发送到服务器...
      userController.login('xiaozhang', 'avatar', '_phone');
      //登录成功跳转页面
      Get.offNamed(RoutePath.TAB);
    }
  }

  // 中国手机号验证（1开头，11位数字）
  bool _isValidChinesePhone(String phone) {
    return RegExp(r'^1[3-9]\d{9}$').hasMatch(phone);
  }

  // 密码验证（6-18位，仅字母和数字）
  bool _isValidPassword(String password) {
    return RegExp(r'^[a-zA-Z0-9]{6,18}$').hasMatch(password);
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key:_formKey,
      child: Column(
        children: [
          // 手机输入
          Container(
            height: 44,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(20),
            ),
            child: TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return '请输入手机号';
                }
                if (!_isValidChinesePhone(value)) {
                  return '请输入有效的中国手机号';
                }
                return null;
              },
              onSaved: (value) => _phone = value!,
              decoration: InputDecoration(
                hintText: '请输入手机号',
                hintStyle: TextStyle(color: Colors.grey[500]),
                border: InputBorder.none,
                prefixIcon: Icon(Icons.phone, color: Colors.grey[500]),
              ),
            ),
          ),
          SizedBox(height: 20),
          // 密码输入
          Container(
            height: 44,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(20),
            ),
            child: TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return '请输入密码';
                }
                if (value.length < 6) {
                  return '密码长度不能少于6位';
                }
                if (!_isValidPassword(value)) {
                  return '密码只能包含字母和数字';
                }
                return null;
              },
              onSaved: (value) => _password = value!,
              obscureText: _obscureText,
              decoration: InputDecoration(
                hintText: '请输入6-18位字母或数字密码',
                hintStyle: TextStyle(color: Colors.grey[500]),
                border: InputBorder.none,
                prefixIcon: Icon(Icons.lock, color: Colors.grey[500]),
                suffixIcon: IconButton(
                  icon: Icon(
                    _obscureText ? Icons.visibility_off : Icons.visibility,
                  ),
                  color: Colors.grey[500],
                  onPressed: () {
                    setState(() {
                      _obscureText = !_obscureText; // 切换明文/密文
                    });
                  },
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(100, 255, 76, 76),
                  Colors.red,
                  Color.fromARGB(100, 255, 76, 76),
                ], // 渐变颜色
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(22), // 圆角
            ),
            width: double.infinity,
            height: 40,
            child: ElevatedButton(
              onPressed: _submit,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
                foregroundColor: Colors.white,
                shadowColor: Colors.transparent,
              ),
              child: Text('立即登录'),
            ),
          ),
        ],
      ),
    );
  }
}


