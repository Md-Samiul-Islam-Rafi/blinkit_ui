import 'package:flutter/material.dart';
import 'package:ui_project/reprository/widgets/search_card.dart';

class Cardscreen extends StatelessWidget {
  const Cardscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [SearchCard(onChange: (value) {})]),
      ),
    );
  }
}
