import 'package:flutter/material.dart';

class CustomOrderItem extends StatelessWidget {
  const CustomOrderItem({
    super.key,
    required this.text1,
    required this.text2,
    this.fontSize = 18,
    this.fontWeight = FontWeight.normal,
  });
  final String text1, text2;
  final double? fontSize;
  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text1,
          style: TextStyle(
            fontSize: fontSize,
            color: Colors.black,
            fontWeight: fontWeight,
          ),
        ),
        const Spacer(),
        Text(
          text2,
          style: TextStyle(
            fontSize: fontSize,
            color: Colors.black,
            fontWeight: fontWeight,
          ),
        ),
      ],
    );
  }
}
