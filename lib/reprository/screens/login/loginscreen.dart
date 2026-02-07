import 'package:flutter/material.dart';
import 'package:ui_project/reprository/widgets/image_helper_widget.dart';
import 'package:ui_project/reprository/widgets/text_helper_widget.dart';

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

                SizedBox(height: 20),

                Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Container(
                    height: 200,
                    width: 350,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 20),
                        TextHelperWidget(text: 'Md.Samiul Islam'),
                        SizedBox(height: 5),
                        Text(
                          "Samiul@diu.edu.bd",
                          style: TextStyle(
                            color: Color(0xFF9C9C9C),
                            letterSpacing: -0.3,
                          ),
                        ),
                        SizedBox(height: 10),
                        SizedBox(
                          height: 48,
                          width: 295,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFFE23744),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Login with',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(width: 5),
                                ImageHelperWidget(
                                  image: 'zomato.png',
                                  height: 15.44,
                                  width: 73,
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Access your saved addresses from Zomato automatically!',
                          style: TextStyle(
                            fontSize: 10,
                            height: 1.5,
                            fontWeight: FontWeight.w400,
                            letterSpacing: -0.3,
                            color: Color(0xFF9C9C9C),
                          ),
                        ),
                        SizedBox(height: 30),
                        Text(
                          'or login with phone number',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            letterSpacing: -0.3,
                            color: Color(0xFF269237),
                          ),
                        ),
                      ],
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
