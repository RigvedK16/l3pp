import 'package:flutter/material.dart';
import 'package:assign1/home_screen/topCard.dart';
import 'package:assign1/home_screen/center.dart';
import 'package:assign1/home_screen/lastPanel.dart';

void main() {
  runApp(MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          padding: EdgeInsets.all(5),
          width: 320,
          height: 660,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            border: Border.all(width: 3, color: Colors.black),
            borderRadius: BorderRadius.circular(25),
            color: Color(0xFFF2F2F2),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30),
              topCard(),
              viewPanel(),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    currencyInfo(Icons.currency_bitcoin_sharp, 0xFFF6931C),
                    currencyInfo(Icons.maps_ugc_sharp, 0xFF696CE6),
                    currencyInfo(Icons.airport_shuttle_sharp, 0xFF01CB69),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 5),
                child: Text(
                  'Recent transactions',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF090909),
                  ),
                ),
              ),
              lastPanel(),
            ],
          ),
        ),
      ),
    );
  }
}
