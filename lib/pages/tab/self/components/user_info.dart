import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:huawei_shop/router/constant.dart' show RoutePath;

class UserInfoCom extends StatelessWidget {
  const UserInfoCom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding: EdgeInsets.fromLTRB(20, 0, 10, 0),
      child: Row(
        children: [
          CircleAvatar(
            radius: 32,
            backgroundImage: AssetImage('assets/images/huawei_logo.png'),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(top: 12, left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '辉煌G891',
                    style: TextStyle(fontSize: 18, color: Colors.grey[800]),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 4),
                    child: _TapCapsule(),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: 110,
            height: 24,
            alignment: Alignment(0, 0),
            decoration: BoxDecoration(
              color: Colors.deepOrangeAccent,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                bottomLeft: Radius.circular(12),
              ),
            ),
            child: Text(
              '点击编辑资料',
              style: TextStyle(fontSize: 13, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}

class _TapCapsule extends StatelessWidget {
  final double? width;
  final double? height;

  const _TapCapsule({super.key, this.width = 80, this.height = 20});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(height! / 2),
        gradient: LinearGradient(colors: [Colors.amber, Colors.white]),
      ),
      child: Row(
        children: [
          Container(
            width: height,
            height: height,
            alignment: Alignment(0, 0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(height! / 2),
              border: Border.all(color: Colors.white, width: 2),
            ),
            child: Text(
              'V',
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 6),
            child: Text(
              'WIN-9',
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
