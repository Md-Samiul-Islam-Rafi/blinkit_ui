import 'package:flutter/material.dart';
import 'package:ui_project/reprository/widgets/image_helper_widget.dart';

class Loginscreen extends StatelessWidget {
  Loginscreen({super.key});

  final List<String> images = [
    'banana.png',
    'pampers.png',
    'chocolate.png',
    'box.png',
    'coffee.png',
    'spoon.png',
    'icecream.png',
    'oil.png',
    'vegetable.png',
    'broccoli.png',
    'hairoil.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            // GRID SECTION
            Padding(
              padding: const EdgeInsets.all(12),
              child: GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: images.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  childAspectRatio: 1,
                ),
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      color: const Color(0xffF6F7F9),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: ImageHelperWidget(image: images[index]),
                    ),
                  );
                },
              ),
            ),

            // BLINKIT LOGO SECTION
            Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: ImageHelperWidget(image: 'blinkit_logo.png'),
                ),
                const SizedBox(height: 20),
                Text(
                  "India’s last minute app",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                    letterSpacing: -0.3,
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
