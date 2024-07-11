import 'package:codixa/GlobalWidgets/HeaderWidget.dart';
import 'package:codixa/Views/AuthView/Login/LoginWidget.dart';
import 'package:codixa/Views/AuthView/widgets/AuthGlassWidget.dart';
import 'package:codixa/Views/HomeView/widgets/EclipseContainer.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../GlobalWidgets/FooterTitlesWidget.dart';
import 'Register/RegisterWidget.dart';

class AuthView extends StatefulWidget {
  const AuthView({Key? key}) : super(key: key);

  @override
  State<AuthView> createState() => _AuthViewState();
}

class _AuthViewState extends State<AuthView> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    List<Widget> authWidgets = [
       LoginWidget(onTap: (){
        setState(() {
          index =1;
        });
      },),
       RegisterWidget(onTap: (){
         setState(() {
           index =0;
         });
      },)];
    Size size = MediaQuery.sizeOf(context);
    double width = size.width;
    double height = size.height;
    return Scaffold(
        body: ListView(
        children: [
          Container(
          width: width,
          height: height,
          decoration: const BoxDecoration(color: Colors.black),
          child: Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Center(
                child: Image.asset(
                  'Assets/images/Background09.jpg',
                  width: width * 0.8,
                  fit: BoxFit.fitWidth,
                ),
              ),
              Container(
                width: width,
                height: height,
                color: Colors.black.withOpacity(0.5),
              ),
              Positioned(bottom: 0, left: 0, child: EclipseContainer()),
              Positioned(top: 0, right: 0, child: EclipseContainer()),
               Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 20, left: 70),
                    child: HeaderWidget(),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  AuthGlassWidget(
                    child: authWidgets[index],
                  ),
                  Spacer(),
                  FooterTitles()
                ],
              ),
            ],
          ),
        ),
        // const Spacer(),
      ],
    ));
  }
}
