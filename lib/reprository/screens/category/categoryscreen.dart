import 'package:flutter/material.dart';
import 'package:ui_project/data/products.dart';
import 'package:ui_project/reprository/common_widgets/product_category_card.dart'; // নিশ্চিত করুন এখানে ProductCategoryItem আছে
import 'package:ui_project/reprository/common_widgets/search_card.dart';

class Categoryscreen extends StatefulWidget {
  const Categoryscreen({super.key});

  @override
  State<Categoryscreen> createState() => _CategoryscreenState();
}

class _CategoryscreenState extends State<Categoryscreen> {
  String searchBoxText = '';

  @override
  Widget build(BuildContext context) {
    // Grocery Data
    int halfLength = (groceryAndKitchenProducts.length / 2).ceil();
    var firstRowList = groceryAndKitchenProducts.take(halfLength).toList();
    var secondRowList = groceryAndKitchenProducts.skip(halfLength).toList();

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Search bar Part
              SearchCard(
                onChange: (value) {
                  print("xxx: $value");
                },
              ),

              const SizedBox(height: 20),

              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // --- Grocery & Kitchen part ---
                    const Text(
                      "Grocery & Kitchen",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        letterSpacing: -0.3,
                      ),
                    ),
                    const SizedBox(height: 16),

                    // 1st Row
                    SizedBox(
                      height: 110,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: firstRowList.length,
                        padding: const EdgeInsets.only(right: 16),
                        itemBuilder: (context, index) {
                          return ProductCategoryItem(
                            imagePath: firstRowList[index]['image'],
                            title: firstRowList[index]['title'],
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: 12),

                    // 2nd Row
                    SizedBox(
                      height: 110,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: secondRowList.length,
                        padding: const EdgeInsets.only(right: 16),
                        itemBuilder: (context, index) {
                          return ProductCategoryItem(
                            imagePath: secondRowList[index]['image'],
                            title: secondRowList[index]['title'],
                          );
                        },
                      ),
                    ),

                    const SizedBox(height: 30),

                    // Snacks & Drinks Part
                    const Text(
                      "Snacks & Drinks",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        letterSpacing: -0.3,
                      ),
                    ),
                    const SizedBox(height: 16),

                    SizedBox(
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

                    const SizedBox(height: 20),
                    
                    const Text(
                      "Household Essentials",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        letterSpacing: -0.3,
                      ),
                    ),
                    const SizedBox(height: 16),
                    SizedBox(
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
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
