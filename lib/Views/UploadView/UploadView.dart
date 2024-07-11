import 'package:codixa/Conrollers/Widgets/SideMenuTextWidget.dart';
import 'package:codixa/Views/UploadView/widgets/CodeGenerateButton.dart';
import 'package:codixa/Views/UploadView/widgets/UploadContainer.dart';
import 'package:flutter/material.dart';

class UploadView extends StatelessWidget {
  const UploadView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    double height = size.height;
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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(height: height*0.02,),
            Image.asset('Assets/images/AppLogo.png'),
            const Spacer(flex: 1,),
            const UploadContainer(),
            const Spacer(flex: 2,),
            CodeGenerateButton(onTap: (){},),
            const Spacer(flex: 1,),
          ],
        ),
      ),
    );
  }
}
