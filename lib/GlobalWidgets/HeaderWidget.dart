import 'package:codixa/GlobalWidgets/CustomButton.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    double width = size.width;
    double height = size.height;
    double fontSize = width < 1000 ? width * 0.012 : width * 0.01;
    bool isDesktop = ResponsiveBreakpoints.of(context).isDesktop;

    return  isDesktop ?  Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'Assets/images/AppLogo.png',
          height: width * 0.05,
        ),
        HeaderTitles(width: width, height: height, fontSize: fontSize,isDesktop: isDesktop),
      ],
    ):Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Image.asset(
            'Assets/images/AppLogo.png',
            height:  isDesktop ?  width * 0.05  : width * 0.08,
          ),
        ),
        HeaderTitles(width: width, height: height, fontSize: fontSize,isDesktop: isDesktop),
      ],
    );
  }
}

class HeaderTitles extends StatelessWidget {
  const HeaderTitles({
    super.key,
    required this.width,
    required this.height,
    required this.fontSize, required this.isDesktop,
  });

  final double width;
  final double height;
  final double fontSize;
  final bool isDesktop;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width:isDesktop ? width *0.7 : width*0.9,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          isDesktop ?  const Spacer(
            flex: 30,
          ):const SizedBox(),
           SizedBox(
             width:width > 900 ? width *0.3: width*0.7,
             child: const Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Text(
                   'Home',
                   style: TextStyle(color: Color(0xff0266C2), fontSize: 16),
                 ),
                 Text('About US ',
                     style: TextStyle(color: Colors.white, fontSize: 15)),
                 Text('Pricing',
                     style: TextStyle(color: Colors.white, fontSize: 15)),
                 Text('Contact Us',
                     style: TextStyle(color: Colors.white, fontSize: 15)),
               ],
             ),
           ),
          const Spacer(
            flex: 20,
          ),
          Visibility(
            visible: width > 900,
            child: CustomButton(
              width: width * 0.08,
              height: height * 0.07,
              title: 'SIGN UP',
              fontSize: fontSize,
            ),
          ),
          const Spacer(
            flex: 1,
          ),
        ],
      ),
    );
  }
}
