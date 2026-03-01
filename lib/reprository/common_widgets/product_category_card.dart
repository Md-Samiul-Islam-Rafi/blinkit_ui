import 'package:flutter/material.dart';

class ProductCategoryItem extends StatelessWidget {
  final String imagePath;
  final String title;

  const ProductCategoryItem({
    super.key,
    required this.imagePath,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12),
      child: Column(
        children: [
          // Image part
          Container(
            height: 78,
            width: 78,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: const Color(0xFFD9EBEB),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
          ),

          const SizedBox(height: 4),

          // Text part
          SizedBox(
            width: 71,
            child: Text(
              title,
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.w500,
                color: Colors.black,
                height: 1.1,
                letterSpacing: -0.3,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
