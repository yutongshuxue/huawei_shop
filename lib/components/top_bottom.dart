import 'package:flutter/material.dart';
// import './good_com.dart';

class TopBottomCom extends StatelessWidget {
  final Widget child;
  final String title;
  final double? span;
  const TopBottomCom({super.key, required this.child, required this.title,this.span});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        child,
        SizedBox(height: span??6),
        Text(title, style: TextStyle(fontSize: 12, color: Colors.grey[600])),
      ],
    );
  }
}
