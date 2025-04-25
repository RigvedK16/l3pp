import 'package:flutter/material.dart';

Widget reviewCard(Map<String, String> review) {
  return Container(
    margin: EdgeInsets.only(bottom: 10),
    padding: EdgeInsets.all(10),
    height: 150,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      border: Border.all(width: 3, color: Colors.grey.shade200),
    ),
    child: Column(
      children: [
        Row(
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(review['pfp']!),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(width: 15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${review['name']}',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Rating: ${review['rating']}/5',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Spacer(),
            Text(
              '${review['daysAgo']} days ago',
              style: TextStyle(fontSize: 12, color: Colors.grey.shade900),
            ),
          ],
        ),
        SizedBox(height: 10),
        Text('${review['description']}'),
      ],
    ),
  );
}
