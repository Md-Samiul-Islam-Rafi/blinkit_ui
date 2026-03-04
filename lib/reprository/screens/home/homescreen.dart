import 'package:flutter/material.dart';
import 'package:ui_project/data/products.dart';
import 'package:ui_project/reprository/common_widgets/mega_diwali_card.dart';
import 'package:ui_project/reprository/common_widgets/product_card.dart';
import 'package:ui_project/reprository/common_widgets/product_category_card.dart';
import 'package:ui_project/reprository/common_widgets/search_card.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      // Wrap the entire Column in SingleChildScrollView to make it scrollable
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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

                // Mega Diwali Sale Cards
                SizedBox(
                  height: 120,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
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
          // Mega Diwali Sale Section End
          SizedBox(height: 20),

          // Mega Diwali Products
          SizedBox(
            height: 240,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: List.generate(diwaliProducts.length, (index) {
                  final product = diwaliProducts[index];
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
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: const Text(
              "Grocery & Kitchen",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                letterSpacing: -0.3,
              ),
            ),
          ),
          const SizedBox(height: 10),
          // Household Essentials Category
          Padding(
            padding: const EdgeInsets.only(left: 13),
            child: SizedBox(
              height: 110,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: snacksAndDrinksProducts.length,
                padding: const EdgeInsets.only(right: 16),
                itemBuilder: (context, index) {
                  return ProductCategoryItem(
                    imagePath: snacksAndDrinksProducts[index]['image'],
                    title: snacksAndDrinksProducts[index]['title'],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
