import 'package:flutter/material.dart';
import 'package:ui_project/data/products.dart';
import 'package:ui_project/reprository/common_widgets/mega_diwali_card.dart';
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
            height: 210,
            width: double.infinity,
            color: const Color(0xFFEC0505),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 6),

                // Row
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/dawali.png', width: 40),
                    Image.asset('assets/images/dawali1.png', width: 40),
                    const SizedBox(width: 6),
                    const Text(
                      'Mega Diwali Sale',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        letterSpacing: -0.3,
                      ),
                    ),
                    const SizedBox(width: 6),
                    Image.asset('assets/images/dawali1.png', width: 40),
                    Image.asset('assets/images/dawali.png', width: 40),
                  ],
                ),

                const SizedBox(height: 12),

                // SizedBox(
                //   height: 130,
                //   child: ListView.builder(
                //     scrollDirection: Axis.horizontal,
                //     itemCount: diwaliCategories.length,
                //     padding: const EdgeInsets.symmetric(horizontal: 16),
                //     itemBuilder: (context, index) {
                //       return Padding(
                //         padding: const EdgeInsets.only(right: 12),
                //         child: MegaDiwaliCard(
                //           title: diwaliCategories[index]['title']!,
                //           imagePath: diwaliCategories[index]['image']!,
                //         ),
                //       );
                //     },
                //   ),
                // ),
                SizedBox(
                  height: 120,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      spacing: 10,
                      children: List.generate(diwaliCategories.length, (index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 12),
                          child: MegaDiwaliCard(
                            title: diwaliCategories[index]['title']!,
                            imagePath: diwaliCategories[index]['image']!,
                          ),
                        );
                      }),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Container(
            width: 160,
            padding: EdgeInsets.all(8),

            decoration: BoxDecoration(color: Colors.white),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              //Image Part
              children: [
                Image.asset(
                  'assets/images/golden_glass.png',
                  height: 100,
                  width: 100,
                  fit: BoxFit.contain,
                ),
                SizedBox(height: 10),
                // Images Text part
                Text(
                  'Golden Glass Wooden Lid Candle (Oudh)',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),

                  maxLines: 2,
                ),
                SizedBox(height: 4),
                //Timer Part
                Row(
                  children: [
                    SizedBox(width: 4),
                    Image.asset(
                      'assets/images/timer.png',
                      height: 16,
                      width: 16,
                    ),
                    SizedBox(height: 4),
                    Text(
                      '16 MINS',
                      style: TextStyle(color: Color(0xFF9C9C9C), fontSize: 14),
                    ),
                  ],
                ),
                SizedBox(height: 4),
                // Price Part
                Text(
                  '₹79',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
