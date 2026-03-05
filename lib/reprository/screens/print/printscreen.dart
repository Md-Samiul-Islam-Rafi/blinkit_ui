import 'package:flutter/material.dart';
import 'package:ui_project/reprository/common_widgets/search_card.dart';

class Printscreen extends StatelessWidget {
  const Printscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFBF0CE),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SearchCard(onChange: (value) {}),

            const SizedBox(height: 50),

            const Text(
              'Print Store',
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 32),
            ),

            const SizedBox(height: 4),

            const Text(
              'Blinkit ensures secure prints at every stage',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: Color(0xFF9C9C9C),
              ),
            ),

            const SizedBox(height: 50),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 163,
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Documents',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                            ),
                          ),

                          const SizedBox(height: 10),

                          buildBullet("Price starting at rs 3/page"),
                          buildBullet("Paper quality: 70 GSM"),
                          buildBullet("Single side prints"),

                          const SizedBox(height: 14),

                          SizedBox(
                            height: 40,
                            width: 125,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.green,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                              onPressed: () {},
                              child: const Text(
                                'Upload Files',
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(width: 16),

                    Expanded(
                      flex: 1,
                      child: Align(
                        child: Image.asset(
                          'assets/images/document.png',
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  //------------>  buildBullet castom method
  Widget buildBullet(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 2),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(Icons.star, size: 14, color: Colors.grey),
          const SizedBox(width: 2),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(fontSize: 14, color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }
}


