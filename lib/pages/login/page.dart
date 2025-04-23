import 'package:flutter/material.dart';
import 'package:huawei_shop/pages/login/login_form.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,
              width: double.infinity,
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 60, left: 40),
                    child: Text(
                      '登录',
                      style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 100, left: 40),
                    child: Text(
                      '欢迎再次回来',
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ),
                  Positioned(
                    top: -90,
                    right: -110,
                    child: Container(
                      width: 260,
                      height: 260,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(100, 246, 106, 106),
                        borderRadius: BorderRadius.circular(130),
                      ),
                    ),
                  ),
                  Positioned(
                    top: -150,
                    right: -80,
                    child: Container(
                      width: 260,
                      height: 260,
                      decoration: BoxDecoration(
                        color: Colors.red[500],
                        borderRadius: BorderRadius.circular(130),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 40, left: 40, right: 40),
              // color: Colors.yellow,
              child: LoginForm(),
            ),
            Padding(
              padding: EdgeInsets.only( left: 34, right: 34),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text('找回密码', style: TextStyle(color: Colors.black54)),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text('快速注册', style: TextStyle(color: Colors.red)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
