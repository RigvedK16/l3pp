import 'package:flutter/material.dart';
import 'package:assign2_list_view/views/reviews.dart';
import 'package:assign2_list_view/Widgets/reviewCard.dart';

class Listviewbuilder extends StatelessWidget {
  const Listviewbuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: reviewsList.length,
      itemBuilder: (context, index) {
        final review = reviewsList[index];
        return reviewCard(review);
      },
    );
  }
}
