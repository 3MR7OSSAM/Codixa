import 'package:codixa/Conrollers/Widgets/SideMenuTextWidget.dart';
import 'package:flutter/material.dart';

class CodeGenerateButton extends StatelessWidget {
  const CodeGenerateButton({Key? key, this.onTap}) : super(key: key);
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    double width = size.width;
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width*0.28,
        height: 40,
        decoration: BoxDecoration(
          color: const Color(0xff115bbf),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextWidget(text: 'Code Generation', color: Colors.white,),
            const SizedBox(width: 20,),
            const Icon(Icons.send,color: Colors.white70,size: 20,)
          ],
        ),
      ),
    );
  }
}
