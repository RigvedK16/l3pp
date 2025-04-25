import 'package:flutter/material.dart';
import 'package:assign2_list_view/Widgets/holidayHomes.dart';
import 'package:assign2_list_view/data.dart';

class ListViewImp extends StatelessWidget {
  ListViewImp({super.key});
  // // final List<Map<String, String>> holidayHomeList = [
  // //   {
  // //     'image': 'assets/h2.jpeg',
  // //     'name': 'Gulmarg Greens',
  // //     'city': 'Gulmarg',
  // //     'state': 'Jammu & Kashmir',
  // //   },
  // //   {
  // //     'image': 'assets/h3.jpeg',
  // //     'name': 'Goa Solstice Villa',
  // //     'city': 'Panaji',
  // //     'state': 'Goa',
  // //   },
  // //   {
  // //     'image': 'assets/h4.jpeg',
  // //     'name': 'Meghalaya Mist Cottage',
  // //     'city': 'Shillong',
  // //     'state': 'Meghalaya',
  // //   },
  // //   {
  // //     'image': 'assets/h5.jpeg',
  // //     'name': 'Kerala Backwater Nest',
  // //     'city': 'Alleppey',
  // //     'state': 'Kerala',
  // //   },
  // //   {
  // //     'image': 'assets/h6.jpeg',
  // //     'name': 'Himalayan Bliss Retreat',
  // //     'city': 'Manali',
  // //     'state': 'Himachal Pradesh',
  // //   },
  // //   {
  // //     'image': 'assets/h7.jpeg',
  // //     'name': 'Sundarban Serenity Stay',
  // //     'city': 'Gosaba',
  // //     'state': 'West Bengal',
  // //   },
  // //   {
  // //     'image': 'assets/h8.jpeg',
  // //     'name': 'Pushkar Palace View',
  // //     'city': 'Pushkar',
  // //     'state': 'Rajasthan',
  // //   },
  // //   {
  // //     'image': 'assets/h9.jpg',
  // //     'name': 'Coorg Coffee Haven',
  // //     'city': 'Madikeri',
  // //     'state': 'Karnataka',
  // //   },
  // //   {
  // //     'image': 'assets/h10.jpeg',
  // //     'name': 'Jaipur Heritage Homestay',
  // //     'city': 'Jaipur',
  // //     'state': 'Rajasthan',
  // //   },
  // //   {
  // //     'image': 'assets/h11.jpeg',
  // //     'name': 'Rishikesh Riverfront Escape',
  // //     'city': 'Rishikesh',
  // //     'state': 'Uttarakhand',
  // //   },
  // ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 320,
          margin: EdgeInsets.only(bottom: 10),
          decoration: BoxDecoration(
            color: Color(0x99F0F0F0),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25),
              topRight: Radius.circular(25),
            ),
          ),
          alignment: Alignment.center,
          child: Padding(
            padding: EdgeInsets.all(8),
            child: Text(
              'Holiday Homes Across India',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
          ),
        ),
        Expanded(
          child: ListView(
            children:
                holidayHomeList
                    .map(
                      (e) => Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: Holidayhomes(e),
                          ),
                        ],
                      ),
                    )
                    .toList(),
          ),
        ),
      ],
    );
  }
}
