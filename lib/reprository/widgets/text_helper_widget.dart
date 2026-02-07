import 'package:flutter/material.dart';

class TextHelperWidget extends StatelessWidget {
  final String text; // actual text
  final Color? color; // text color
  final double? fontSize; // font size
  final FontWeight? fontWeight; // font weight
  final String? fontFamily; // font family
  final double? height; // line height
  final TextAlign? textAlign; // alignment
  final TextOverflow? overflow; // overflow behavior
  final int? maxLines;
   // maximum lines

  const TextHelperWidget({
    super.key,
    required this.text,
    this.color,
    this.fontSize,
    this.fontWeight,
    this.fontFamily,
    this.height,
    this.textAlign,
    this.overflow,
    this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLines,
      overflow: overflow,
      textAlign: textAlign,
     
      style: TextStyle(
        color: color ?? Color(0XFF000000),
        fontSize: fontSize ?? 14,
        fontWeight: fontWeight ?? FontWeight.w500,
        fontFamily: fontFamily,
        height: height,
        
      ),
    );
  }
}
