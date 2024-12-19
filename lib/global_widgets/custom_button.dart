import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
        required this.color,
        required this.text,
        this.onPressed,
        this.width,
        this.height,
        this.border = 10,
        this.horizontalPadding,
        this.horizntalMargin = 0.0,
        this.verticalMargin=0.0,
        this.borderColor=Colors.transparent,
        this.verticalPadding});
  final Color color;
  final Color borderColor;
  final double? width;
  final double? height;
  final Widget text;
  final double? horizontalPadding;
  final double? verticalPadding;
  final double border;
  final double horizntalMargin;
  final double verticalMargin;
  final VoidCallback ?onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: horizntalMargin,vertical: verticalMargin),
      width: width ?? double.infinity,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        shape: RoundedRectangleBorder(side: BorderSide(color: borderColor),borderRadius: BorderRadius.circular(border)),
      ),

        child: Center(child: text),
      ),
    );
  }
}
