import 'package:flutter/material.dart';

Widget Holidayhomes(Map<String, String> holidayHome) {
  return Padding(
    padding: EdgeInsets.only(bottom: 15),
    child: Stack(
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
              image: AssetImage(holidayHome['image']!),
              fit: BoxFit.cover,
              alignment: Alignment.center,
            ),
          ),
        ),
        // Spacer(),
        Container(
          height: 70,
          width: 270,
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.only(bottom: 10),
          decoration: BoxDecoration(
            color: Color(0xBB191413),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${holidayHome['name']!}',
                style: TextStyle(
                  fontSize: 18,
                  color: Color(0xFF1DB954),
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                '${holidayHome['city']}, ${holidayHome['state']}',
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey[200],
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
