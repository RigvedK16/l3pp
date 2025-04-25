// import 'dart:ffi';

import 'package:flutter/material.dart';

Widget lastPanel() {
  return Padding(
    padding: EdgeInsets.fromLTRB(0, 5, 0, 10),
    child: Container(
      padding: EdgeInsets.all(5),
      height: 70,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Color(0xFFFFFFFF),
      ),
      child: Row(
        children: [
          Container(
            height: 45,
            width: 45,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xFFF2F2F2),
            ),
            child: Icon(Icons.compare_arrows_sharp, color: Colors.black),
          ),
          SizedBox(width: 10),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'USDT to BTC',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              Text(
                '2023-07-25',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                  color: Colors.grey.shade500,
                ),
              ),
            ],
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Text(
              '+0,0116 BTC',
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w600,
                color: Color(0xFF5BC999),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
