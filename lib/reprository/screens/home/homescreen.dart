import 'package:flutter/material.dart';
import 'package:ui_project/reprository/widgets/search_card.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(height: 35),

          Container(
            color: Color(0xFFEC0505),
            child: SearchCard(onChange: (value) {}),
          ),
        ],
      ),
    );
  }
}
