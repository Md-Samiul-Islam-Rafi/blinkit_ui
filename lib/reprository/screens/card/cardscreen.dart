import 'package:flutter/material.dart';
import 'package:ui_project/data/products.dart';
import 'package:ui_project/reprository/common_widgets/product_card.dart';
import 'package:ui_project/reprository/common_widgets/search_card.dart';

class Cardscreen extends StatelessWidget {
  const Cardscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SearchCard(onChange: (value) {}),

            SizedBox(height: 16),

            //card section
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('assets/images/cart.png', height: 140, width: 140),

                SizedBox(height: 20),

                Text(
                  'Reordering will be easy',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    letterSpacing: -0.3,
                  ),
                ),
                SizedBox(height: 4),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 70),
                  child: Text(
                    'Items you order will show up here so you can buy them again easily.',
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),

                SizedBox(height: 40),

                // Bestsellers part
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Bestsellers',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 10),

                SizedBox(
                  height: 240,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      children: List.generate(bestSellersProducts.length, (
                        index,
                      ) {
                        final product = bestSellersProducts[index];
                        return Padding(
                          padding: const EdgeInsets.only(right: 12),
                          child: MegadawaliProducts(
                            title: product['title']!,
                            imagePath: product['image']!,
                            time: product['time']!,
                            price: product['price']!,
                            onAddPressed: () {
                              print("${product['title']} added!");
                            },
                          ),
                        );
                      }),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
