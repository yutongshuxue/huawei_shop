import 'package:flutter/material.dart';

class WisdomCom extends StatelessWidget {
  final String title;
  final String? secondTitle;
  final Widget child;

  const WisdomCom({
    super.key,
    required this.title,
    this.secondTitle,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: TextStyle(color: Colors.black87)),
                Text(
                  secondTitle ?? '',
                  style: TextStyle(color: Colors.black26, fontSize: 12),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 70,
            child: child,
          ),
        ],
      ),
    );
  }
}
