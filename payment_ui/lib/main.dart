import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MyWidget());
}

class MyWidget extends StatelessWidget {
  MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter basic app',
      home: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
            width: 320,
            height: 640,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              border: Border.all(width: 6, color: Colors.black),
              borderRadius: BorderRadius.circular(25),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TopBar(),
                MainBody(),
                OtherAccountsPanel(),
                TransactionBar(),
                Transactions(
                  FontAwesomeIcons.spotify,
                  'Dec 8, 2023',
                  'Spotify',
                  100,
                  0x80E9CA33,
                ),
                Transactions(
                  FontAwesomeIcons.amazon,
                  'Dec 6, 2023',
                  'Amazon',
                  1000,
                  0x80DBECFF,
                ),
                Transactions(
                  FontAwesomeIcons.uber,
                  'Dec 2, 2023',
                  'Uber',
                  800,
                  0x80FFE5F9,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TopBar extends StatelessWidget {
  TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(Icons.menu_rounded, size: 40, color: Colors.grey, grade: 5),
        // SizedBox(width: 10),
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: NetworkImage(
                'https://images.unsplash.com/photo-1722322426803-101270837197?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTl8fHByb2ZpbGUlMjBwaWN8ZW58MHx8MHx8fDA%3D',
              ),
              fit: BoxFit.cover,
              repeat: ImageRepeat.noRepeat,
            ),
          ),
        ),
      ],
    );
  }
}

class MainBody extends StatelessWidget {
  MainBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Text(
              'Hi Michael',
              style: TextStyle(
                fontFamily: 'Mona Sans',
                fontWeight: FontWeight.w600,
                fontSize: 33,
                wordSpacing: 2,
                letterSpacing: -1,
              ),
            ),
          ],
        ),
        Row(
          children: [
            Text(
              'You have 5 notifications',
              style: TextStyle(
                fontFamily: 'Mona Sans',
                fontSize: 16,
                fontWeight: FontWeight.w100,
                wordSpacing: 2,
                letterSpacing: -1,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class TransactionBar extends StatelessWidget {
  TransactionBar({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Transactions',
          style: TextStyle(
            fontFamily: 'Mona Sans',
            fontSize: 24,
            fontWeight: FontWeight.w600,
            letterSpacing: -1,
          ),
        ),
        Text(
          'More',
          style: TextStyle(
            fontFamily: 'Mona Sans',
            fontSize: 15,
            fontWeight: FontWeight.bold,
            letterSpacing: -1,
          ),
        ),
      ],
    );
  }
}

Widget Transactions(
  IconData icon,
  String date,
  String merchant,
  int amt,
  int colorBg,
) {
  return Container(
    padding: EdgeInsets.fromLTRB(3, 3, 15, 3),
    width: 315,
    height: 70,
    decoration: BoxDecoration(
      shape: BoxShape.rectangle,
      borderRadius: BorderRadius.circular(15),
      border: Border.all(width: 2, color: Colors.grey.shade300),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(15),
                color: Color(colorBg), // 0x80E9CA33
              ),
              child: Icon(icon),
            ),
            Container(
              margin: EdgeInsets.only(left: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${merchant}',
                    style: TextStyle(
                      fontFamily: 'Mona Sans',
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      letterSpacing: -1,
                    ),
                  ),
                  Text(
                    '${date}',
                    style: TextStyle(
                      fontFamily: 'Mona Sans',
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      letterSpacing: -1,
                      wordSpacing: 2,
                      color: Colors.grey.shade400,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "- ₹${amt}",
              style: TextStyle(
                fontFamily: 'Mona Sans',
                fontSize: 16,
                fontWeight: FontWeight.bold,
                letterSpacing: -1,
                wordSpacing: 2,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

Widget OtherAccountsPanel() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'Send money',
        style: TextStyle(
          fontFamily: 'Mona Sans',
          fontSize: 24,
          fontWeight: FontWeight.bold,
          letterSpacing: -1,
          wordSpacing: 2,
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: EdgeInsets.only(top: 12),
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black,
            ),
            child: Icon(Icons.add, color: Colors.white),
          ),
          OtherAccounts(
            'https://plus.unsplash.com/premium_photo-1688740375397-34605b6abe48?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTN8fHByb2ZpbGUlMjBwaWNzfGVufDB8fDB8fHww',
          ),
          OtherAccounts(
            'https://images.unsplash.com/photo-1620000617482-821324eb9a14?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTV8fHByb2ZpbGUlMjBwaWNzfGVufDB8fDB8fHww',
          ),
          OtherAccounts(
            'https://images.unsplash.com/photo-1534308143481-c55f00be8bd7?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTZ8fHByb2ZpbGUlMjBwaWNzfGVufDB8fDB8fHww',
          ),
        ],
      ),
    ],
  );
}

Widget OtherAccounts(String imagePath) {
  return Container(
    height: 50,
    width: 50,
    margin: EdgeInsets.only(top: 12),
    decoration: BoxDecoration(
      color: Colors.black,
      shape: BoxShape.circle,
      image: DecorationImage(image: NetworkImage(imagePath), fit: BoxFit.cover),
    ),
  );
}

// AssetImage('assets/profile_image.png')
