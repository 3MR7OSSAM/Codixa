import 'package:codixa/GlobalWidgets/GlassContainer.dart';
import 'package:flutter/material.dart';

class SliderGlassWidget extends StatelessWidget {
  const SliderGlassWidget({
    super.key, required this.title, required this.image,
  });
  final String title;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GlassContainer(width: 400, height: 500, blur: 20, child:
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(title ,style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
             
          ),),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30.0),
            child: Image.asset(image),
          ),
          const SizedBox(height: 70,),
          const GlassContainer(width: 200, height: 70, blur: 10, child: Center(child: Text('View Code',style: TextStyle(color: Colors.white,fontSize: 18),)))
        ],
      ),),
    );
  }
}
