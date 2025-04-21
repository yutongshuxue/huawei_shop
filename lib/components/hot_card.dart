import 'dart:ffi';

import 'package:flutter/material.dart';

class HotCardCom extends StatelessWidget {
  final String title;
  final String price;
  final String imgUrl;

  const HotCardCom({
    super.key,
    required this.title,
    required this.price,
    required this.imgUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10,bottom: 10,right: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
      ),
      height: 130,
      child: Row(
        children: [
          Container(
            width: 120,
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Image.asset(imgUrl),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.only(top: 10, left: 5, bottom: 10, right: 5),
              child: Column(
                children: [
                  Text(
                    title,
                    style: TextStyle(fontSize: 14, color: Colors.grey[800]),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 4),
                    child: Row(
                      children: [
                        Container(
                          width: 20,
                          height: 20,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Text(
                            'V',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 4),
                          child: Text(
                            '华为商城',
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.grey[600],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.only(top: 10),
                    child: Text(
                      '¥ $price',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.red,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
