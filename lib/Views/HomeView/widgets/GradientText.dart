import 'package:flutter/material.dart';
import 'package:text_gradiate/text_gradiate.dart';

class GradientText extends StatelessWidget {
  const GradientText({
    super.key, required this.text, required this.fontSize,
  });
  final String text;
  final double fontSize;
  @override
  Widget build(BuildContext context) {
    return  TextGradiate(
      text: Text(
        text,
        style: TextStyle(fontSize: fontSize,fontFamily:'DM Sans' ),maxLines: 5,
      ),
      colors: const [Colors.white, Color(0xff0266C2), Color(0xff0266C2), ],
      gradientType: GradientType.linear,
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      tileMode: TileMode.decal,
    );
  }
}
