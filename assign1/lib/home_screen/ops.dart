import 'package:flutter/material.dart';

Widget ops(IconData icon, String op) {
  return Column(
    children: [
      Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
          border: Border.all(width: 1, color: Colors.grey.shade100),
        ),
        child: Icon(icon),
      ),
      SizedBox(height: 8),
      Text(
        '${op}',
        style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
      ),
    ],
  );
}
