import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class EclipseContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = ResponsiveValue<double>(context, defaultValue: 200.0,  conditionalValues: [
      const Condition.smallerThan(name: TABLET, value: 400.0),
      const Condition.largerThan(name: TABLET, value: 300.0),
    ]).value!;
    return Container(
        width: width,
        height: width,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: const Color(0xff0266C2).withOpacity(0.6),
              blurRadius: 1000,
              spreadRadius: 200.0,
            ),
          ],
        ));
  }
}
