import 'package:codixa/Conrollers/Widgets/SideMenuTextWidget.dart';

import 'package:flutter/material.dart';

import 'Widgets/FlutterCodeBox.dart';
import 'Widgets/YamlCodeBox.dart';

class GenerationView extends StatelessWidget {
  const GenerationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    double height = size.height;
    double width = size.width;
    return Container(
      decoration: const BoxDecoration(
        gradient: SweepGradient(
          colors: [
            Color(0xff115bbf),
            Color(0xff091e3a),
          ],
          stops: [0, 0.5],
          center: Alignment.topRight,
        ),
      ),
      child: SizedBox(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: height*0.02,),
            Image.asset('Assets/images/AppLogo.png'),
            const Spacer(flex: 1,),
            Container(
              
              width: width*0.3,
              height: height*0.2,
              decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
                color: Colors.white,
                
              ),
              child: Image.asset('Assets/images/navBar.png',fit: BoxFit.fill,),
            ),
            const Spacer(flex: 1,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                const DartCodeBox(code: '''
                    Column(
                      children: [
                        const Text('yaml',style: TextStyle(color: Colors.white),),
                        Container(
                          width: width*0.3,
                          height: height*0.4,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                ''',
                ),
                // SizedBox(width: width*0.07,),
                SizedBox(width: width*0.03),
                YamlCodeBox(code: '''

    cupertino_icons: ^1.0.2
                ''',)
              ],
            ),
            const Spacer(flex: 1,),
          ],
        ),
      ),
    );
  }
}
