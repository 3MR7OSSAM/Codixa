import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class FooterTitles extends StatelessWidget {
  const FooterTitles({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    bool isDesktop = ResponsiveBreakpoints.of(context).isDesktop;
    double fontSize = isDesktop ? 14 : 12;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          const Spacer(
            flex: 1,
          ),
          Text(
            '© CODIXA TEAM',
            style: TextStyle(color: Colors.grey.withOpacity(0.3),fontSize: fontSize),
          ),
          const Spacer(flex: 11),
          Text(
            'Terms of Service',
            style: TextStyle(color: Colors.grey.withOpacity(0.3),fontSize: fontSize),
          ),
          const Spacer(
            flex: 1,
          ),
          Text(
            'Privacy Policy',
            style: TextStyle(color: Colors.grey.withOpacity(0.3),fontSize: fontSize),
          ),
          const Spacer(
            flex: 1,
          ),
          Text(
            'Cookies',
            style: TextStyle(color: Colors.grey.withOpacity(0.3),fontSize: fontSize),
          ),
          const Spacer(
            flex: 1,
          ),
        ],
      ),
    );
  }
}

