import 'package:flutter/material.dart';
import 'package:ui_project/data/products.dart'; // Assuming you have this list defined in your products.dart
import 'package:ui_project/reprository/common_widgets/mega_diwali_card.dart'; // Assuming this is your custom widget for cards
import 'package:ui_project/reprository/common_widgets/search_card.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(height: 35),

          // Search Card Section
          Container(
            child: SearchCard(
              bgcolor: const Color(0xFFEC0505),
              onChange: (value) {},
            ),
          ),
          SizedBox(height: 1),

          // Mega Diwali Sale Section
          Container(
            height: 196,
            width: double.infinity,
            color: Color(0xFFEC0505),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/dawali.png',
                      width: 50,
                      height: 57.8,
                    ),
                    Image.asset(
                      'assets/images/dawali1.png',
                      width: 50,
                      height: 46.51,
                    ),
                    Text(
                      'Mega Diwali Sale',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        letterSpacing: -0.3,
                      ),
                    ),
                    Image.asset(
                      'assets/images/dawali1.png',
                      width: 50,
                      height: 46.51,
                    ),
                    Image.asset(
                      'assets/images/dawali.png',
                      width: 50,
                      height: 57.8,
                    ),
                    SizedBox(height: 20),
                  ],
                ),
                SizedBox(height: 10),
                // Fixed the issue here by adding itemCount
                SizedBox(
                  height: 80,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal, // To make it horizontal
                    itemCount: diwaliCategories.length,
                    padding: const EdgeInsets.only(right: 16),
                    itemBuilder: (context, index) {
                      return MegaDiwaliCard(
                        title: diwaliCategories[index]['title']!,
                        imagePath: diwaliCategories[index]['image']!,
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
