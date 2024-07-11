import 'package:codixa/GlobalWidgets/GlassContainer.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class AuthGlassWidget extends StatelessWidget {
  const AuthGlassWidget({Key? key, required this.child}) : super(key: key);
  final Widget child;
  @override
  Widget build(BuildContext context) {
    bool isDesktop = ResponsiveBreakpoints.of(context).isDesktop;
    Size size = MediaQuery.sizeOf(context);
    double width = size.width;
    double height = size.height;
    return  Stack(
      children: [
        Visibility(
          visible: isDesktop,
          child: GlassContainer(
            width: width * .6,
            height: height * .7,
            blur: 15,
            child: const SizedBox(),
          ),
        ),
        SizedBox(
          width: width * .7,
          child: Row(
            children: [
              isDesktop ? const Spacer() : const SizedBox(),
              Visibility(
                visible: isDesktop,
                child: Column(
                  children: [
                    Image.asset(
                      'Assets/images/AppLargeLogo.png',
                      width: width * .10,
                    ),
                    Image.asset(
                      'Assets/images/AppNameLogo.png',
                      width: width * .10,
                    ),
                  ],
                ),
              ),
              isDesktop ? const Spacer() : const SizedBox(),
              Container(
                  width: isDesktop ? width * .35 : width * .7,
                  height: isDesktop ? height * .68 : height * .6,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16)),
                  child: child),
            ],
          ),
        )
      ],
    );
  }
}
