import 'package:codixa/Views/HomeView/widgets/EclipseContainer.dart';
import 'package:codixa/Views/HomeView/widgets/FeaturesData.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class WhyUsSection extends StatelessWidget {
  const WhyUsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = ResponsiveValue<double>(context,
        defaultValue: 820.0,
        conditionalValues: [
          const Condition.smallerThan(name: TABLET, value: 600.0),
          const Condition.largerThan(name: TABLET, value: 1200.0),
        ]).value!;

    double height = MediaQuery.of(context).size.height;
    double fontSize = ResponsiveValue<double>(context,
        defaultValue: 28.0,
        conditionalValues: [
          Condition.smallerThan(name: TABLET, value: width * 0.026),
          Condition.equals(name: TABLET, value: width * 0.02),
          Condition.largerThan(name: TABLET, value: width * 0.04),
        ]).value!;

    return Container(
      width: width,
      height: height,
      decoration: const BoxDecoration(color: Colors.black),
      child: Stack(
        children: [
          Center(
            child: Image.asset(
              'Assets/images/Background09.jpg',
              width: width * .8,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            width: width,
            height: height,
            color: Colors.black.withOpacity(0.5),
          ),
          Positioned(top: 0, right: 0, child: EclipseContainer()),
          Positioned(bottom: 0, left: 0, child: EclipseContainer()),
          Center(
            child: SizedBox(
              // width: width,
              child: Flex(
                direction: Axis.vertical,
                children: [
                  const Spacer(flex: 2),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Site Features',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      Text(
                        'Features that make you choose our tool',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: fontSize,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: height * 0.1),
                  ResponsiveBreakpoints.of(context).isDesktop
                      ? const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Spacer(),
                            FeaturesDataFirstColumn(),
                            FeaturesDataSecondColumn(),
                            Spacer(),
                          ],
                        )
                      : const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            FeaturesDataFirstColumn(),
                            FeaturesDataSecondColumn(),
                          ],
                        ),
                  const Spacer(flex: 4),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
