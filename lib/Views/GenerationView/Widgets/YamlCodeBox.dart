import 'package:flutter/material.dart';

class YamlCodeBox extends StatelessWidget {
  const YamlCodeBox({Key? key, required this.code}) : super(key: key);
  final String code;

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.sizeOf(context);
    double height = size.height;
    double width = size.width;
    return  Column(
      children: [
        const Text('yaml',style: TextStyle(color: Colors.white),),
        Container(
          width: width*0.3,
          height: height*0.4,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.white,
          ),
          child: ListView(
            children: [
              Text('''
                $code
               ''',style: const TextStyle(color: Colors.grey))
            ],
          ),
        ),
      ],
    );
  }
}
