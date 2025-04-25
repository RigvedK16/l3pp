import 'package:assign2_list_view/Widgets/listViewBuilder.dart';
import 'package:assign2_list_view/Widgets/listview.dart';
import 'package:assign2_list_view/Widgets/singleChildScroll.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Main());
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            width: 320,
            height: 620,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              border: Border.all(width: 3, color: Colors.black),
              borderRadius: BorderRadius.circular(25),
              // color: Colors.grey[200],
            ),
            child: Listviewbuilder(),
          ),
        ),
      ),
    );
  }
}
