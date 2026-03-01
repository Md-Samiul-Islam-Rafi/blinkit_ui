// import 'package:flutter/material.dart';

// class Uihelper {
//   static CustomImage({required String img, required BoxFit fit}) {
//     return Image.asset("assets/images/$img");
//   }
// }

import 'package:flutter/material.dart';

class ImageHelperWidget extends StatelessWidget {
  const ImageHelperWidget({
    super.key,
    required this.image,
    this.width,
    this.height,
  });

  final String image;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/images/$image",
      width: width ?? 90,
      height: height ?? 90,
      fit: BoxFit.cover,
    );
  }
}
