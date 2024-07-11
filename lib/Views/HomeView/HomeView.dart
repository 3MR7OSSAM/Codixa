import 'package:codixa/Views/HomeView/sections/FooterSection.dart';
import 'package:codixa/Views/HomeView/sections/HeroSection.dart';
import 'package:codixa/Views/HomeView/sections/ExamplesSection.dart';
import 'package:codixa/Views/HomeView/sections/PricingSection.dart';
import 'package:flutter/material.dart';
import 'package:text_gradiate/text_gradiate.dart';

import 'sections/WhyUsSection.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      body: ListView(
        children:  [
          HeroSection(),
          WhyUsSection(),
          ExamplesSection(),
          PricingSection(),
          FooterSection()
        ],
      ),
    );
  }
}



