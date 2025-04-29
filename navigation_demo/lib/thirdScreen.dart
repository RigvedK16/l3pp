import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  final String status;
  const ThirdScreen({super.key, required this.status});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Status Screen")),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 100),
            Text(
              "Whats your status",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w200),
            ),
            SizedBox(height: 30),
            Text(status, style: TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
