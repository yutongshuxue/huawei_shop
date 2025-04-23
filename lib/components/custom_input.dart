import 'package:flutter/material.dart';

class CustomInputCom extends StatefulWidget {
  const CustomInputCom({super.key});

  @override
  State<CustomInputCom> createState() => _CustomInputComState();
}

class _CustomInputComState extends State<CustomInputCom> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: '请输入手机号',
          hintStyle: TextStyle(color: Colors.grey[500]),
          border: InputBorder.none,
          prefixIcon: Icon(Icons.phone, color: Colors.grey[500]),
          suffixIcon: IconButton(
            icon: Icon(Icons.remove_red_eye_outlined),
            color: Colors.grey[500],
            onPressed: () {},
          )
        ),
      ),
    );
  }
}
