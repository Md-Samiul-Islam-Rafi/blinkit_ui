import 'package:flutter/material.dart';
import 'package:ui_project/reprository/widgets/search_card.dart';

class Printscreen extends StatelessWidget {
  const Printscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [SearchCard(onChange: (value) {})]),
      ),
    );
  }
}
