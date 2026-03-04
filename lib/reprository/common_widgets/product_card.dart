import 'package:flutter/material.dart';

class MegadawaliProducts extends StatelessWidget {
  final String title;
  final String imagePath;
  final String time;
  final String price;
  final VoidCallback onAddPressed;

  const MegadawaliProducts({
    super.key,
    required this.title,
    required this.imagePath,
    required this.time,
    required this.price,
    required this.onAddPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      height: 230,
      padding: const EdgeInsets.all(6),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            blurRadius: 5,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image and Add Button Part
          Stack(
            clipBehavior: Clip.none,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(imagePath, fit: BoxFit.cover),
              ),
              // Add Button Part
              Positioned(
                bottom: -8,
                right: -8,
                child: ElevatedButton(
                  onPressed: onAddPressed,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: const Color(0xFF279C44),
                    side: const BorderSide(color: Color(0xFF279C44), width: 1),
                    minimumSize: const Size(0, 0),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 6,
                    ),
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    elevation: 3,
                  ),
                  child: const Text(
                    'ADD',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 16),

          // Title
          Text(
            title,
            style: const TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),

          const SizedBox(height: 4),

          // Timer Part
          Row(
            children: [
              Image.asset('assets/images/timer.png', height: 14, width: 14),
              const SizedBox(width: 4),
              Text(
                time,
                style: const TextStyle(color: Color(0xFF9C9C9C), fontSize: 12),
              ),
            ],
          ),

          const SizedBox(height: 6),

          // Price Part
          Text(
            price,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
