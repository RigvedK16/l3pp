import 'package:flutter/material.dart';
import 'package:assign1/home_screen/ops.dart';

Widget topCard() {
  return Container(
    padding: EdgeInsets.all(12),
    height: 240,
    decoration: BoxDecoration(
      gradient: LinearGradient(
        colors: [Colors.blue, Colors.white],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        transform: GradientRotation(0.25),
      ),
      borderRadius: BorderRadius.circular(25),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              height: 45,
              width: 45,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: NetworkImage(
                    'https://plus.unsplash.com/premium_photo-1739178656495-8109a8bc4f53?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTN8fGFuaW1hdGVkJTIwcHJvZmlsZSUyMHBpY3xlbnwwfHwwfHx8MA%3D%3D',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(width: 15),
            Text(
              'Mitchell Santos',
              style: TextStyle(
                fontSize: 14,
                color: Colors.black,
                fontWeight: FontWeight.w200,
              ),
            ),
            Spacer(),
            Stack(
              children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: Icon(Icons.notifications_outlined),
                ),
                Positioned(
                  top: 12,
                  right: 12,
                  child: Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFFFF4B4C),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 15),
        Row(
          children: [
            SizedBox(width: 10),
            Text(
              'Total Balance',
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
            ),
            SizedBox(width: 5),
            Icon(Icons.remove_red_eye_outlined, size: 12),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(left: 10),
          child: Text(
            "₹72 829,62",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
          ),
        ),
        Spacer(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ops(Icons.add, 'Add saving'),
            ops(Icons.arrow_upward_outlined, 'Withdraw'),
            ops(Icons.arrow_downward_outlined, 'Top up'),
            ops(Icons.swap_horiz_outlined, 'Exchange'),
          ],
        ),
      ],
    ),
  );
}
