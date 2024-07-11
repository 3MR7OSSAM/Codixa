import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.width, required this.height, required this.title, required this.fontSize,});
  final double width;
  final double height;
  final String title;
  final double fontSize;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: const Color(0xff0266C2)
        ),
        width: width,
        height: height,
        child: Center(
          child: Text(
            title,style:  TextStyle(color: Colors.white,fontSize: fontSize,fontFamily: 'DM Sans'),
          ),
        ),
      ),
    );
  }
}
