import 'package:codixa/Conrollers/Widgets/SideMenu.dart';
import 'package:codixa/Views/GenerationView/GenerationView.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../Views/ProfileView/ProfileView.dart';
import '../Views/UploadView/UploadView.dart';

class MainScreenController extends StatelessWidget {
  const MainScreenController({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isDesktop = ResponsiveBreakpoints.of(context).isDesktop;

    return Scaffold(
        backgroundColor:  Colors.white10,
        drawer: const SideMenu(),
        body: Builder(
          builder: (context) => const SafeArea(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // // We want this side menu only for large screen

                  SideMenu(),
                Expanded(

                  child: ProfileView(),
                ),
              ],
            ),
          ),
        ));
  }
}
