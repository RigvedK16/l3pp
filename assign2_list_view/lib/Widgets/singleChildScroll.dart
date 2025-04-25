import 'package:flutter/material.dart';
import 'package:assign2_list_view/data.dart';

class SingleChildScroll extends StatelessWidget {
  const SingleChildScroll({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              holidayHomeList.first['image']!,
              height: 220,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 16),

          // Name
          Text(
            holidayHomeList.first['name']!,
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),

          // Location
          Text(
            '${holidayHomeList.first['city']}, ${holidayHomeList.first['state']}',
            style: TextStyle(fontSize: 16, color: Colors.grey.shade600),
          ),

          const SizedBox(height: 12),

          // Price
          Text(
            '₹ ${holidayHomeList.first['price']}',
            style: TextStyle(
              fontSize: 18,
              color: Colors.green.shade700,
              fontWeight: FontWeight.w600,
            ),
          ),

          const SizedBox(height: 12),
          const SizedBox(height: 16),
          const Text(
            'Facilities:',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Facilities',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    for (var facility in [
                      'Wi-Fi',
                      'Breakfast',
                      'AC',
                      'Parking',
                      'Room Service',
                    ])
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        padding: EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 8,
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xBB191413),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          facility,
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFF1DB954),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ],
          ),

          const SizedBox(height: 20),
          const Text(
            'Description:',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 8),
          const Text(
            'Nestled in the scenic landscapes of Gulmarg, Gulmarg Greens offers a serene getaway with modern amenities. Enjoy a peaceful retreat surrounded by lush greenery and snow-capped mountains.',
            style: TextStyle(fontSize: 15, color: Colors.black87),
          ),

          const SizedBox(height: 30),
          Center(
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xBB191413),
                padding: const EdgeInsets.symmetric(
                  horizontal: 32,
                  vertical: 14,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: const Text(
                'Book Now',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF1DB954),
                ),
              ),
            ),
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}
