import 'package:demo_application/configs/text_style.dart';
import 'package:flutter/material.dart';

class CustiomText extends StatelessWidget {
  CustiomText({super.key, required this.numbers, required this.text});

  String numbers;
  String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          numbers,
          style: txt18_black_blod,
        ),
        Text(
          text,
          style: txt12_black_normal,
        )
      ],
    );
  }
}
