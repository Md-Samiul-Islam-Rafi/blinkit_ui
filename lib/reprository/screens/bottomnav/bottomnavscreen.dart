import 'package:flutter/material.dart';
import 'package:ui_project/reprository/screens/card/cardscreen.dart';
import 'package:ui_project/reprository/screens/category/categoryscreen.dart';
import 'package:ui_project/reprository/screens/home/homescreen.dart';
import 'package:ui_project/reprository/screens/print/printscreen.dart';
import 'package:ui_project/reprository/widgets/image_helper_widget.dart';

class BottomnavScreen extends StatefulWidget {
  //1st
  const BottomnavScreen({super.key});

  @override
  State<BottomnavScreen> createState() => _BottomnavScreenState();
}

class _BottomnavScreenState extends State<BottomnavScreen> {
  int currentIndex = 0; //2nd
  List<Widget> pages = [
    Homescreen(), //note-index-0
    Cardscreen(), //index-1
    Categoryscreen(), //index-2
    Printscreen(), //index-3
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: currentIndex, children: pages), //3rd
      bottomNavigationBar: BottomNavigationBar(
        //4th
        items: [
          BottomNavigationBarItem(
            icon: ImageHelperWidget(image: 'home 1.png', height: 30, width: 30),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: ImageHelperWidget(
              image: 'shopping-bag 1.png',
              height: 30,
              width: 30,
            ),
            label: "shop",
          ),
          BottomNavigationBarItem(
            icon: ImageHelperWidget(
              image: 'category 1.png',
              height: 30,
              width: 30,
            ),
            label: "category",
          ),
          BottomNavigationBarItem(
            icon: ImageHelperWidget(
              image: 'printer 1.png',
              height: 30,
              width: 30,
            ),
            label: "print",
          ),
        ],
        type: BottomNavigationBarType.fixed, //5th
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}
