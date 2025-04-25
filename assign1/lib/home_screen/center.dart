import 'package:flutter/material.dart';

Widget viewPanel() {
  return Row(
    children: [
      Padding(
        padding: EdgeInsets.fromLTRB(0, 10, 5, 10),
        child: Container(
          padding: EdgeInsets.all(10),
          width: 240,
          height: 50,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(50),
            color: Color(0XFFFFFFFF),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Crypto',
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
              ),
              Text(
                'Fiat',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                  color: Colors.grey.shade500,
                ),
              ),
              Text(
                'Card',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                  color: Colors.grey.shade500,
                ),
              ),
              Text(
                'Savings',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                  color: Colors.grey.shade500,
                ),
              ),
            ],
          ),
        ),
      ),
      Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Color(0xFFFFFFFF),
        ),
        child: Icon(Icons.bar_chart_outlined),
      ),
    ],
  );
}

Widget currencyInfo(IconData icon, int color) {
  return Container(
    height: 130,
    width: 160,
    margin: EdgeInsets.only(right: 10),
    padding: EdgeInsets.all(5),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(25),
      color: Color(0xFFFFFFFF),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Color(color),
          ),
          child: Icon(icon, color: Colors.white),
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.all(5),
          child: Text(
            '1,1272',
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(5),
          child: Row(
            children: [
              Text(
                '₹67 203 95',
                style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey.shade500,
                ),
              ),
              Spacer(),
              Text(
                '2.15%',
                style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF5BC999),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
