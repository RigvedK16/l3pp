import 'package:flutter/material.dart';

Widget HotelCard() {
  return Stack(
    alignment: AlignmentDirectional.bottomCenter,
    children: [
      Container(
        height: 200,
        width: 290,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            image: AssetImage('assets/h1.jpeg'),
            fit: BoxFit.cover,
            alignment: Alignment.center,
          ),
        ),
      ),
      // Spacer(),
      Container(
        height: 60,
        width: 270,
        margin: EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
          color: Color(0xBB191413),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          children: [
            Text(
              'Hotel 1',
              style: TextStyle(
                fontSize: 18,
                color: Color(0xFF1DB954),
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    ],
  );
}
