import 'package:flutter/material.dart';

class MegaDiwaliCard extends StatelessWidget {
  final String title;
  final String imagePath;

  const MegaDiwaliCard({
    super.key,
    required this.title,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 86,
      height: 108,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Color(0xFFD9EBEB),
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(
              0.2,
            ), // Adding opacity to the shadow
            blurRadius: 5,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(height: 8),

          // Use BoxFit.cover for the image to maintain aspect ratio and avoid distortion
          Image.asset(
            imagePath,
            width: 60, // Fixed width for better layout control
            height: 60, // Fixed height to avoid stretching
            fit: BoxFit.cover, // Ensures the image fits the container correctly
          ),
        ],
      ),
    );
  }
}
